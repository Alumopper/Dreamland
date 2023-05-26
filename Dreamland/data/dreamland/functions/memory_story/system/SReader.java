import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class SReader {

	static int i = 1;
	static int k = 1;
	static int t = 0;
	
	public static void main(String[] args) throws IOException {
		FileReader f = new FileReader("D:\\.minecraft\\saves\\Dreamland Studio 1_19_1\\datapacks\\Dreamland\\data\\dream\\functions\\memory_story\\system\\word.txt");
		FileWriter w = new FileWriter("D:\\.minecraft\\saves\\Dreamland Studio 1_19_1\\datapacks\\Dreamland\\data\\dream\\functions\\memory_story\\system\\log.mcfunction",true);
		Scanner sc = new Scanner(f);
		while(sc.hasNext()) {
			output(sc.nextLine(),w);
		}
		f.close();
		w.close();
		sc.close();
	}
	
	public static void output(String s,FileWriter w) throws IOException {
		//System.out.println(sc.nextLine());
		//execute if score dream_tec_story dream_timer matches 0 run tellraw @a {"text":"[锟斤拷]...","color": "white"}
		String out = "execute if score dream_tec_story dream_timer matches "+t+" run tellraw @a {\"translate\":\"word.dreamland.system.log.text"+ k++ +"\",\"color\": \"white\"}\n";
		w.write(out);
		t += (s.length()*3+1);
	}
}
