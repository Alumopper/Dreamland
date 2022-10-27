import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class Gen{
    public static void main(String[] args) throws IOException {
        int max = 150;
        int all = max;
        int each = (int)Math.pow(all, 0.2);
        //1
        for (int i = 0; i < all/each + 1; i++) {
            BufferedWriter bw = new BufferedWriter(new FileWriter("./zip/0_" + i + ".mcfunction"));
            String str = "";
            for (int j = 0; j < each && i * each + j <= max; j++) {
                int curr = i *each + j;
                str += "execute if score dream_finalbosshealth dream_boss_hp matches " + curr + " run attribute @s minecraft:generic.max_health base set " + curr + "\n";
            }
            bw.write(str);
            bw.flush();
            bw.close();
        }
        all = all/each + 1;
        //2
        for (int i = 0; i < all/each + 1; i++) {
            BufferedWriter bw = new BufferedWriter(new FileWriter("./zip/1_" + i + ".mcfunction"));
            String str = "";
            for (int j = 0; j < each && (i*each+j)*each + j <= max; j++) {
                str += "execute if score dream_finalbosshealth dream_boss_hp matches " + (i*each+j)*each + ".." + ((i*each+j+1)*each-1) + " as @a run function dream:memory_story/final_boss2/healthset/zip/0_" + (i*each+j) + "\n";
            }
            bw.write(str);
            bw.flush();
            bw.close();
        }
        all = all/each + 1;
        //3
        for (int i = 0; i < all/each + 1; i++) {
            BufferedWriter bw = new BufferedWriter(new FileWriter("./zip/2_" + i + ".mcfunction"));
            String str = "";
            for (int j = 0; j < each && (i*each+j)*each*each + j <= max; j++) {
                str += "execute if score dream_finalbosshealth dream_boss_hp matches " + (i*each+j)*each*each + ".." + ((i*each+j+1)*each*each-1) + " as @a run function dream:memory_story/final_boss2/healthset/zip/1_" + (i*each+j) + "\n";
            }
            bw.write(str);
            bw.flush();
            bw.close();
        }
        all = all/each + 1;
        //4
        for (int i = 0; i < all/each + 1; i++) {
            BufferedWriter bw = new BufferedWriter(new FileWriter("./zip/3_" + i + ".mcfunction"));
            String str = "";
            for (int j = 0; j < each && (i*each+j)*each*each*each + j <= max; j++) {
                str += "execute if score dream_finalbosshealth dream_boss_hp matches " + (i*each+j)*each*each*each + ".." + ((i*each+j+1)*each*each*each-1) + " as @a run function dream:memory_story/final_boss2/healthset/zip/2_" + (i*each+j) + "\n";
            }
            bw.write(str);
            bw.flush();
            bw.close();
        }
        all = all/each + 1;
        //5
        for (int i = 0; i < all/each + 1; i++) {
            BufferedWriter bw = new BufferedWriter(new FileWriter("./zip/4_" + i + ".mcfunction"));
            String str = "";
            for (int j = 0; j < each && (i*each+j)*each*each*each*each <= max; j++) {
                str += "execute if score dream_finalbosshealth dream_boss_hp matches " + (i*each+j)*each*each*each*each + ".." + ((i*each+j+1)*each*each*each*each-1) + " as @a run function dream:memory_story/final_boss2/healthset/zip/3_" + i + "\n";
            }
            bw.write(str);
            bw.flush();
            bw.close();
        }
    }
}