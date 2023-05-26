package Dreamland.data.dreamland.functions.particle.spreading_circle;

import java.util.ArrayList;
import java.io.*;

class Pos{
    double angle;
    double r;
    public Pos(double angle, double r) {
        this.angle = angle;
        this.r = r;
    }
}

public class Gener{
    
    public static void main(String[] args)throws IOException {
        ArrayList<ArrayList<Pos>> as = new ArrayList<ArrayList<Pos>>();
        FileWriter fw = new FileWriter("Dreamland/data/dream/functions/particle/spreading_circle/tick.mcfunction");
        String tick = "";
        //穷举，半径20，扩散时间2，半径缓动为circle in
        for(int i = 0;i < 40;i ++){
            tick += "execute if score @s dream_timer matches "+(i+1)+" run function dreamland:particle/spreading_circle/parts/"+(i+1)+"\n";
            //一共40刻
            ArrayList<Pos> a = new ArrayList<>();
            double r = easeOutCubic(i); //半径
            //System.out.println(r);
            for(double angle = 0;angle < 360;angle += (0.5/r)*180/Math.PI){
                a.add(new Pos(angle,r));
            }
            as.add(a);
            //生成代码
            String ss = "";
            //execute rotated ~ ~ positioned ~ ~ ~ run particle end_rod ~ ~ ~ 0.1 0.1 0.1 3
            for (Pos pos : a) {
                String s = "execute rotated "+pos.angle+" ~ positioned ^ ^ ^"+pos.r+" run particle dust 1 1 1 1 ~ ~ ~ 0.1 0.1 0.1 10000 3";
                System.out.println(s);
                ss += (s + "\n");
            }
            FileWriter fw2 = new FileWriter("Dreamland/data/dream/functions/particle/spreading_circle/parts/"+(i+1)+".mcfunction");
            fw2.write(ss);
            fw2.flush();
            fw2.close();
        }
        //fw.write(tick);
        //fw.flush();
        fw.close();
    }

    /**
     * 
     * @param t 时间
     * @param b 起点
     * @param c 终点
     * @param d 持续时间
     * @return
     */
    static double easeOutCubic (double t) { 
        double b = 0;double c = 20;double d = 40;
        return c * ((t = t / d - 1) * t * t + 1) + b; 
    } 
}
