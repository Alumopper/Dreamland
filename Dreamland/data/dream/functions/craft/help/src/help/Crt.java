package help;

import java.io.File;
import java.io.FileOutputStream;

public class Crt {
	public static void main(String args[]) throws Exception {
		boolean is;
		is = new File("./unnamed").mkdirs();
		/*FileOutputStream fos1 = new FileOutputStream("./unnamed/data/minecraft/tags/functions/tick.json");
		fos1.write("{\n    \"values\":[]\n}".getBytes());
		FileOutputStream fos2 = new FileOutputStream("./unnamed/data/minecraft/tags/functions/load.json");
		fos2.write("{\n    \"values\":[]\n}".getBytes());
		*/if(is) {
			System.out.println("Succeed");
		}else{
			System.out.println("Failed");
		}
	}
}
