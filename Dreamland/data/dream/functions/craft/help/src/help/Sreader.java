package help;

import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class Sreader {

	static int i = 1;
	static int k = 1;
	static int t = 0;
	
	public static void main(String[] args) throws IOException {
		FileReader f = new FileReader("D:\\.minecraft\\saves\\Dreamlandstudio\\datapacks\\Dreamland\\data\\dream\\functions\\structure\\the_edge_cabin\\text.txt");
		FileWriter w = new FileWriter("D:\\.minecraft\\saves\\Dreamlandstudio\\datapacks\\Dreamland\\data\\dream\\functions\\structure\\the_edge_cabin\\story.mcfunction",true);
		FileWriter w1 = new FileWriter("D:\\.minecraft\\saves\\Dreamlandstudio\\datapacks\\Dreamland\\data\\dream\\functions\\structure\\the_edge_cabin\\temp.txt",true);
		Scanner sc = new Scanner(f);
		while(sc.hasNext()) {
			output(sc.nextLine(),w,w1);
		}
		f.close();
		w.close();
		w1.close();
		sc.close();
	}
	
	public static void output(String s,FileWriter w,FileWriter w1) throws IOException {
		//ï¿½Ð¶ï¿½ï¿½ï¿½Ò»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ëµï¿½Ä»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ô¼ï¿½Ëµï¿½Ä»ï¿½
		//System.out.println(sc.nextLine());
		if(s.startsWith("¡·")) {
			//Îªï¿½ï¿½ï¿½ï¿½Ëµï¿½Ä»ï¿½
			//execute if score dream_tec_story dream_timer matches 0 run tellraw @a {"text":"[ï¿½ï¿½ï¿½ï¿½]...","color": "aqua"}
			String out = "execute if score dream_tec_story dream_timer matches "+t+" run tellraw @a {\"translate\":\"dream.word.the_edge_cabin.Marine"+i+"\",\"color\": \"aqua\"}\n";
			t += (s.length()*3+10);
			w.write(out);
			//dream.word.the_edge_cabin.MarineX
			out = "\"dream.word.the_edge_cabin.Marine"+ i++ + "\":\"<ÀÏÕß>" + s.substring(s.indexOf("¡·")+1) +"\",\n";
			w1.write(out);
		}else {
			//execute if score dream_tec_story dream_timer matches 0 run tellraw @a {"text":"[ï¿½ï¿½]...","color": "white"}
			String out = "execute if score dream_tec_story dream_timer matches "+t+" run tellraw @a {\"translate\":\"dream.word.the_edge_cabin.Player"+ k +"\",\"color\": \"white\"}\n";
			w.write(out);
			t += (s.length()*3+10);
			//dream.word.the_edge_cabin.Player
			out = "\"dream.word.the_edge_cabin.Player"+ k++ + "\":\"<×Ô¼º>" + s +"\",\n";
			w1.write(out);
		}
	}
}
