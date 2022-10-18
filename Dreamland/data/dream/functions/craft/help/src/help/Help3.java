package help;

import java.io.*;
import java.util.*;
import java.math.*;

public class Help3 {

	public static void main(String[] args) throws Exception {
		for(int i = 0;i <= 359;i ++) {
			if(i % 20 == 0) {
				FileOutputStream fs = new FileOutputStream("D:\\mc\\.minecraft\\saves\\Dreamlandstudio\\datapacks\\Dreamland\\data\\dream\\functions\\entity\\blue_slime\\move1.mcfunction",true);
				String s = "execute if score @s dream_direction matches " + i + ".." + (i + 19) + " run function dream:entity/blue_slime/move2/" + i + "_" + (i + 19) + "\n";
				System.out.println(s);
				//дmove1.mcfunction
				fs.write(s.getBytes());
				fs.flush();
				fs.close();
			}
			int j = i % 20;
			FileOutputStream fs2 = new FileOutputStream("D:\\mc\\.minecraft\\saves\\Dreamlandstudio\\datapacks\\Dreamland\\data\\dream\\functions\\entity\\blue_slime\\move2\\" + j*20 + "_" + (j*20 + 19) + ".mcfunction",true);
			String s1 = "execute if score @s dream_direction matches " + i + " run function dream:entity/blue_slime/move3/" + i;
			//дmove2�µĺ���
			System.out.println(s1);
			fs2.write(s1.getBytes());
			fs2.flush();
			fs2.close();
			FileOutputStream fs3 = new FileOutputStream("D:\\mc\\.minecraft\\saves\\Dreamlandstudio\\datapacks\\Dreamland\\data\\dream\\functions\\entity\\blue_slime\\move3\\" + i + ".mcfunction",true);
			String s2 = "scoreboard players add @s dream_vx " + (int)(Math.cos(i * Math.PI / 180) * 100);
			String s3 = "scoreboard players add @s dream_vz " + (int)(Math.sin(i * Math.PI / 180) * 100);
			//дmove3
			fs3.write((s2 + "\n" + s3 + "\n").getBytes());
			System.out.println(s2 + "\n" + s3 + "\n");
			fs3.flush();
			fs3.close();
		}
		System.out.println("Done!");
	}

}
