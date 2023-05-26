import * as fs from 'fs-extra';
import * as path from 'path';

class Recipe{
    public item : string;
    public recipe : string[];

    public constructor(item : string, recipe : string[]){
        this.item = item;
        this.recipe = recipe;
    }

    public toString(){
        return this.item + " " + this.recipe;
    }
}

class RecipeTree{
    public item : string;
    public id : string = "";
    public nbt : string = "";
    public cmd : string = "";
    public target : string = "null";
    public children : RecipeTree[];

    public constructor(item : string){
        this.item = item;
        this.children = [];
    }

    public toString(){
        return this.item;
    }

    public getFunctionName() : string {
        return this.item.replace(/:/g,'_').toLowerCase();
    }
}


let file = path.join(__dirname, 'recipe.txt');
let recipes : Recipe[] = [];
//读取文件，获取所有配方
fs.readFile(file, 'utf8', (err, data) => {
    if (err) throw err;
    let lines = data.split('\r\n');
    let currItemName : string = "";
    let recipe : string[] = [];
    for (let line of lines) {
        if(line.startsWith('#')) continue;
        if(line.startsWith('$')){
            currItemName = line.substring(1);
            continue;
        }
        if(line == ''){
            continue;
        }
        //是配方
        //配方分成三行三列，对应九宫格。储存的是物品的id
        let recipeLine = line.split(/\x20*/g);
        recipe = recipe.concat(recipeLine);
        if(recipe.length > 9){
            console.error("配方出现多余的物品: " + recipe.slice(9));
            recipe = recipe.slice(0, 9);
        }
        if(recipe.length == 9){
            let newRecipe = new Recipe(currItemName, recipe);
            recipes.push(newRecipe);
            recipe = [];
        }
    }

    
    //解析所有配方，生成配方树
    let recipeTree = new RecipeTree("tree");
    recipeTree.id = "tree";
    for(let recipe of recipes){
        let currNode = recipeTree;
        for(let item of recipe.recipe){
            let nextNode = currNode.children.find((node) => node.item == item);
            if(nextNode == undefined){
                nextNode = new RecipeTree(item);
                currNode.children.push(nextNode);
            }
            currNode = nextNode;
        }
        //结尾是合成的产物
        currNode.target = recipe.item.split(' ')[0];
        currNode.cmd = recipe.item.split(' ')[1];
        currNode.nbt = recipe.item.split(' ')[2];
        currNode.id = recipe.item.split(' ')[0];
    }

    console.log(recipeTree);

    //删除旧的文件夹及其文件
    fs.removeSync(path.join(__dirname, 'tree'));
    fs.removeSync(path.join(__dirname, 'tree.mcfunction'));

    //遍历配方树，生成所有可能的合成路径
    //execute if score @s dream_counter matches 0 if data storage dreamland:crafting_table {id:"dreamland:dreamdust"} run function dreamland:craft/tree/dreamdust 
    walkTree(recipeTree,__dirname);
})

function walkTree(recipe:RecipeTree, filePath : string){
    if(recipe.target != "null"){
        console.log(filePath);
        //抵达最底端，产物输出
        //item replace block ~ ~ ~ container.16 with minecraft:iron_ingot{CustomModelData: 120002, display: {Name: '[{"translate":"item.dreamland.illusory_ingot","italic":false}]'}, tag: {id: "dreamland:illusory_ingot", isTemp: 1b}}
        let command = "item replace block ~ ~ ~ container.16 with " + recipe.target + "{CustomModelData: " + recipe.cmd + ", display: {Name: '[{\"translate\":\"item." + recipe.id.split(":")[0] + "." + recipe.id.split(":")[1] + "\",\"italic\":false}]'}, tag: {id: \"" + recipe.target + "\", isTemp: 1b" + (recipe.nbt != undefined?"," + recipe.nbt:"") + "}}";
        fs.appendFileSync(path.join(filePath, recipe.getFunctionName() + '.mcfunction'), command + "\r");
        return;
    }
    for(let child of recipe.children){
        console.log(filePath);
        if(!fs.existsSync(path.join(filePath, recipe.getFunctionName()))){
            fs.mkdirSync(path.join(filePath, recipe.getFunctionName()));
        }
        //execute if score @s dream_counter matches 0 if data storage dreamland:crafting_table {id:"dreamland:dreamdust"} run function dreamland:craft/tree/dreamdust 
        let command = "execute if score @s dream_counter matches 0 if data storage dreamland:crafting_table {id:\"" + child.item + "\"} run function dreamland:craft/" + path.relative(__dirname,filePath).replace('\\','/') + "/" + recipe.getFunctionName() + "/" + child.getFunctionName();
        fs.appendFileSync(path.join(filePath, recipe.getFunctionName() + '.mcfunction'), command + "\r\n");
        walkTree(child, path.join(filePath, recipe.getFunctionName()));
    }
}