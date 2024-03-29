import java.io.*;
import java.util.ArrayList;
import java.util.Scanner;

public class Give{
    public static void main(String[] args) throws FileNotFoundException {
        ids.add("red_dye");
        ids.add("air");
        for (String string : filenames) {
            Scanner sc = new Scanner(new FileReader("D:\\.minecraft\\saves\\Dreamland Studio 1_19_4\\datapacks\\Dreamland\\data\\dream\\functions\\creative\\gui\\" + string + ".mcfunction"));
            while(sc.hasNextLine()){
                String line = sc.nextLine();
                if(!line.startsWith("item")){
                    continue;
                }
                String[] re = resolveCommand(line);
                String item = re[0];
                if(ids.contains(item)){
                    continue;
                }
                String nbt = re[1];
                //{CustomModelData: 120003, display: {Name: '[{"translate":"item.dreamland.unnamed_helmet","italic":false}]'}, tag: {id: "dreamland:unnamed_helmet", type: 1b, infusion: 0b, defaultarmor: 4,isTemp: 0b}, AttributeModifiers: [{AttributeName: "generic.armor", Name: "generic.armor", Amount: 4, Operation: 0, UUID: [I; 14958484, 1076729488, 189845405, 125006454], Slot: "head"}, {AttributeName: "generic.movement_speed", Amount: -0.005d, Operation: 0, UUID: [I; 562251, 1512166, 5184181, 84185165], Slot: "head"}]}
                String fileName = re[1].substring(re[1].indexOf("land:") + 5).substring(0, re[1].substring(re[1].indexOf("land:") + 5).indexOf("\\\""));
                System.out.println(fileName + " in " + string);
                System.out.println( "\t" + nbt);
                String path = "D:\\.minecraft\\saves\\Dreamland Studio 1_19_4\\datapacks\\Dreamland\\data\\dream\\loot_tables\\give\\" + fileName + ".json";
                String content = String.format(file, item, nbt);
                try {
                    File file = new File(path);
                    if (!file.exists()) {
                        file.createNewFile();
                    }
                    FileWriter fileWriter = new FileWriter(file);
                    fileWriter.write(content);
                    fileWriter.flush();
                    fileWriter.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    //item replace entity @s container.2 with red_dye{CustomModelData: 120003, display: {Name: '{"translate":"gui.dreamland.creative.nextpage"}'}, tag: {isTemp: 1b}}
    //item replace entity @s container.3 with air
    public static String[] resolveCommand(String command){
        String[] re = new String[2];
        re = command.split("\\s+", 7)[6].split("\\{", 2);
        if(re.length == 1){
            re = new String[]{re[0], ""};
            return re;
        }
        re[1] = "{" + re[1]; // re[0] = item, re[1] = nbt
        re[1] = re[1].replaceAll("\"", "\\\\\\\"");
        return re;
    }

    public static String file = "{\n" +
            "    \"pools\": [\n" +
            "        {\n" +
            "            \"entries\": [\n" +
            "                {\n" +
            "                    \"type\": \"minecraft:item\",\n" +
            "                    \"name\": \"%s\",\n" +
            "                    \"functions\": [\n" +
            "                        {\n" +
            "                            \"function\": \"minecraft:set_nbt\",\n" +
            "                            \"tag\": \"%s\"\n" +
            "                        }\n" +
            "                    ]\n" +
            "                }\n" +
            "            ],\n" +
            "            \"rolls\": 1\n" +
            "        }\n" +
            "    ]\n" +
            "}";

    public static String[] filenames = new String[]{"101","102","201","202","301","401"};
    public static ArrayList<String> ids = new ArrayList<>();
}