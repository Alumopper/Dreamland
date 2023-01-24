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
		//�ж���һ��������˵�Ļ������Լ�˵�Ļ�
		//System.out.println(sc.nextLine());
		if(s.startsWith("��")) {
			//Ϊ����˵�Ļ�
			//execute if score dream_tec_story dream_timer matches 0 run tellraw @a {"text":"[����]...","color": "aqua"}
			String out = "execute if score dream_tec_story dream_timer matches "+t+" run tellraw @a {\"translate\":\"word.dream.the_edge_cabin.Marine"+i+"\",\"color\": \"aqua\"}\n";
			t += (s.length()*3+10);
			w.write(out);
			//word.dream.the_edge_cabin.MarineX
			out = "\"word.dream.the_edge_cabin.Marine"+ i++ + "\":\"<����>" + s.substring(s.indexOf("��")+1) +"\",\n";
			w1.write(out);
		}else {
			//execute if score dream_tec_story dream_timer matches 0 run tellraw @a {"text":"[��]...","color": "white"}
			String out = "execute if score dream_tec_story dream_timer matches "+t+" run tellraw @a {\"translate\":\"word.dream.the_edge_cabin.Player"+ k +"\",\"color\": \"white\"}\n";
			w.write(out);
			t += (s.length()*3+10);
			//word.dream.the_edge_cabin.Player
			out = "\"word.dream.the_edge_cabin.Player"+ k++ + "\":\"<�Լ�>" + s +"\",\n";
			w1.write(out);
		}
	}
}
