package help;

import java.util.*;
import java.io.*;

public class CReader {

	public static void main(String[] args) throws IOException {
		//锟斤拷取锟较筹拷锟戒方
		FileReader f = new FileReader("D:\\.minecraft\\saves\\Dreamlandstudio\\datapacks\\Dreamland\\data\\dream\\functions\\craft\\magic_craft.mcfunction");
		FileWriter w = new FileWriter("D:\\.minecraft\\saves\\Dreamlandstudio\\datapacks\\Dreamland\\data\\dream\\functions\\craft\\magic_craft.txt");
		String s = "";
		while(true) {
			int i = f.read();
			if(i == -1) {
				break;
			}else{
				char c = (char)i;
				s += c;
				if(c == '\n') {
					if(s.charAt(0)=='#') {
						//锟斤拷锟斤拷锟斤拷锟斤拷锟�
						w.write(s.substring(0,s.length()));
						s = "";
					}else {
						//锟斤拷锟斤拷锟斤拷浞�
						ArrayList<String> o = split(s);
						output(o,w);
						s = "";
					}
				}
			}
		}
		f.close();
		w.close();
	}
	
	static void output(ArrayList<String> o,FileWriter w) throws IOException {
		String out = "";
		for(int i = 0;i < 10;i++) {
			if((i)%3==0&&i!=0) {
				out += '\n';
			}
			out += o.get(i) + "\t";
			if(o.get(i).length() > 30) {
			}
		}
		out += "\n\n";
		w.write(out);
		w.flush();
	}
	
	static ArrayList<String> split(String s) {
		//锟斤拷一锟斤拷锟叫凤拷,锟斤拷取锟斤拷锟斤拷锟皆硷拷锟斤拷锟斤拷
		s = s.substring(45);
		//if data storage dream:crafting_table {Items:[{Slot:1b,Count:1b,tag:{tag:{id:"dreamland:dreamdust"}}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:2b}]} if data storage dream:crafting_table {Items:[{Slot:3b,Count:1b,tag:{tag:{id:"dreamland:sweetdream_essence"}}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:10b}]} if data storage dream:crafting_table {Items:[{Slot:11b,Count:1b,tag:{tag:{id:"dreamland:dream_org_ingot"}}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:12b}]} if data storage dream:crafting_table {Items:[{Slot:19b,Count:1b,tag:{tag:{id:"dreamland:sweetdream_essence"}}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:20b}]} if data storage dream:crafting_table {Items:[{Slot:21b,Count:1b,tag:{tag:{id:"dreamland:dreamdust"}}}]} run replaceitem block ~ ~ ~ container.16 minecraft:iron_ingot{CustomModelData:120002,display:{Name:'[{"translate":"item.dreamland.illusory_ingot","italic":false}]'},tag:{id:"dreamland:illusory_ingot",isTemp:1b}}
		ArrayList<String> inputs = new ArrayList<String>();//锟斤拷锟斤拷
		//锟街凤拷锟斤拷锟斤拷锟�
		String output = s.substring(s.indexOf("run") + 41);
		s = s.substring(0, s.indexOf("run")-1);
		//锟街凤拷锟斤拷锟斤拷锟�
		while(!(s.indexOf("if")==-1&&s.indexOf("unless")==-1)) {
			inputs.add(s.substring(0,s.indexOf("}]}")+3));
			s = s.substring(s.indexOf("}]}") + 3);
		}
		//锟斤拷锟斤拷锟斤拷锟斤拷
		ArrayList<String> inputs2 = new ArrayList<String>();
		for(String input : inputs) {
			if(input.indexOf("if")!=-1) {
				//if data storage dream:crafting_table {Items:[{Slot:1b,Count:1b,tag:{tag:{id:"dreamland:dreamdust"}}}]}
				//if data storage dream:crafting_table {Items:[{Slot:11b,Count:1b,id:"minecraft:diamond"}]}
				String t = input.substring(input.indexOf("id:\"") + 4, input.indexOf("\"}"));
				inputs2.add(t);
			}else {
				//unless block ~ ~ ~ minecraft:chest{Items:[{Slot:2b}]}
				String t = "null";
				inputs2.add(t);
			}
		}
		//锟斤拷锟斤拷锟斤拷锟斤拷
		//minecraft:iron_ingot{CustomModelData:120002,display:{Name:'[{"translate":"item.dreamland.illusory_ingot","italic":false}]'},tag:{id:"dreamland:illusory_ingot",isTemp:1b}}
		//minecraft:iron_chestplate{CustomModelData:120001,display:{Name:'[{"translate":"item.dreamland.dream_org_chestplate","italic":false}]'},tag:{id:"dreamland:dream_org_chestplate",isTemp:1b,type:2b,infusion:0b},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;14958484,1076729488,182811115,1253354]}]}
		//minecraft:elytra{tag:{isTemp:1b,type:9b,infusion:0b}}
		if(output.indexOf("id")!=-1) {
			output = "out>>" + output.substring(output.indexOf("id:") + 4,output.indexOf("\",isTemp"));
		}else {
			output = "out>>" + output.substring(0,output.indexOf("{"));
		}
		inputs2.add(output);
		return inputs2;
		//锟斤拷锟斤拷锟斤拷锟斤拷选锟斤拷一学锟斤拷锟斤拷,锟饺救猴拷锟接帮拷(doge
	}
	
	private static void p(int size) {
		System.out.println(size);
	}

	static void p(String o) {
		System.out.println(o);
	}

	static void p(char c) {
		System.out.print(c);
	}
	
	static void p(ArrayList<String> s) {
		for(String i : s) {
			p(i);
		}
	}
}
