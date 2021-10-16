package help;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import net.sf.json.JSONObject;

public class JReader {

	public static void main(String[] args) {
		// TODO 自动生成的方法存根
		String json = getJSON();
		JSONObject j = JSONObject.fromObject(json);
		JSONObject o = j.getJSONObject("parent");
		System.out.println(o);
	}
	
	
	public static String getJSON() {
		String j = "";
		try {
			FileReader fr = new FileReader("D:\\.minecraft\\resourcepacks\\Dreamland\\assets\\minecraft\\models\\item\\apple.json");
			while(true) {
				int a = fr.read();
				if(a == -1) {
					break;
				}
				char c = (char)a;
				j += c;
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return j;
	}

}
