package help;

import java.io.FileOutputStream;
import java.io.IOException;

public class Help4 {

	public static void main(String[] args) throws IOException {
		FileOutputStream fos = new FileOutputStream("D:\\mc\\.minecraft\\saves\\Dreamlandstudio\\datapacks\\Dreamland\\data\\dream\\functions\\items\\mineral_detector.mcfunction",true);
		String[] s = {"coal","iron","gold","diamond","lapis","emerald","redstone"};
		for(String i : s) {
			for(int j = -3; j<4;j++) {
				for(int k = -3;k<4;k++) {
					for(int l = -3;l<4;l++) {
						//execute if block ~-3 ~-3 ~-3 minecraft:coal_ore run scoreboard players add dream_mineral_detector_result_coal dream_counter 1
						String o = "execute if block ~"+j+" ~"+k+" ~"+l+" minecraft:"+i+"_ore run scoreboard players add dream_mineral_detector_result_"+i+" dream_counter 1";
						fos.write((o +"\n").getBytes());
					}
				}
			}
		}

	}

}
