package help;

import java.io.*;

public class Help2 {

	public static void main(String[] args) throws IOException{
		for(int i = -3;i <= 3;i ++) {
			for(int k = -3;k <= 3;k ++) {
				String str = ("summon minecraft:area_effect_cloud ~" + i + " 255 ~" + k + " {Radius:0.0f,Age:78578787,Tags:[dream_mineral_detector]}\n");
				System.out.println(str);
				FileOutputStream fos = new FileOutputStream("D:\\mc\\.minecraft\\saves\\Dreamlandstudio\\datapacks\\Dreamland\\data\\dream\\functions\\items\\mineral_detector.mcfunction",true);
				fos.write(str.getBytes());
				fos.flush();
				fos.close();
			}
		}
	}

}
