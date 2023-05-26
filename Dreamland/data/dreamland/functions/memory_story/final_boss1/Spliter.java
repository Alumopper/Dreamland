import java.io.*;
import java.util.ArrayList;

public class Spliter {

    static String readline(BufferedReader r) throws IOException{
        //啊啊啊啊啊啊好烦啊
        String a = "";
        char c;
        while((c = (char)r.read()) != '\n'){
            if(c == '\r') continue;
            a += c;
        }
        return a;
    }

    static class Command{
        int time;
        int column;

        public String getStr(){
            return "execute if score $dream_finalskill_psummon_timer dream_timer matches " + time + " run say " + column;
        }

        Command(int time,int column){
            this.time = time;
            this.column = column;
        }
    }

    public static void main(String[] args) throws IOException {
        BufferedReader fr = new BufferedReader(new FileReader("D:\\.minecraft\\saves\\DreamlandStudio2 (1)\\datapacks\\Dreamland\\data\\dream\\functions\\memory_story\\final_boss1\\skills.osu"));
        System.out.println("定位数据");
        while (true){
            String t = readline(fr);
            // System.out.println(t);
            if(t.equals("[HitObjects]")) break;
        }
        ArrayList<Command> cs = new ArrayList<Command>(); 
        System.out.println("开始读取数据");
        while (true) {
            String l = readline(fr);
            if (l.equals(""))
                break;
            // execute if score $dream_finalskill_psummon_timer dream_timer matches 6 run say 1
            String[] data = l.split(",");
            int column = (int) (Double.valueOf(data[0]) / 29); // 列数
            int time = (int) (Double.valueOf(data[2]) / 50); // 时间（单位刻）
            cs.add(new Command(time,column));
        }
        System.out.println("第一次切分");
        int each = (int)Math.pow(cs.size(), 0.2);
        int index = 0;  //序号
        int filenum = 0;    //上一层创建的文件数
        BufferedWriter bw = null; 
        //第一层切分
        for(int i = 0; i < cs.size(); i++){
            if(i % each == 0){
                filenum++;
                //为新的一组，创建文件
                if(bw != null) bw.flush();
                bw = new BufferedWriter(new FileWriter("D:\\.minecraft\\saves\\DreamlandStudio2 (1)\\datapacks\\Dreamland\\data\\dream\\functions\\memory_story\\final_boss1\\timerzip/0-"+filenum+".mcfunction"));
            }
            bw.write(cs.get(i).getStr()+"\n");
            index ++;
        }
        System.out.println("第二次");
        int lastfilenum = filenum;
        filenum = 0;
        index = 0;
        //第二层切分
        for(int i = 0;i < lastfilenum;i ++){
            if(i % each == 0){
                filenum++;
                //为新的一组，创建文件
                bw.flush();
                bw = new BufferedWriter(new FileWriter("D:\\.minecraft\\saves\\DreamlandStudio2 (1)\\datapacks\\Dreamland\\data\\dream\\functions\\memory_story\\final_boss1\\timerzip/1-"+filenum+".mcfunction"));
            }
            bw.write("execute if score $dream_finalskill_psummon_timer dream_timer matches "+cs.get(index).time+".."+cs.get(index+each>cs.size()?cs.size()-1:index+each-1).time+" run function dreamland:memory_story/final_boss1/timerzip/0-"+(i+1)+"\n");
            index += each;
        }
        System.out.println("第三次");
        lastfilenum = filenum;
        filenum = 0;
        index = 0;
        //第三层切分
        for(int i = 0;i < lastfilenum;i ++){
            if(i % each == 0){
                filenum++;
                //为新的一组，创建文件
                bw.flush();
                bw = new BufferedWriter(new FileWriter("D:\\.minecraft\\saves\\DreamlandStudio2 (1)\\datapacks\\Dreamland\\data\\dream\\functions\\memory_story\\final_boss1\\timerzip/2-"+filenum+".mcfunction"));
            }
            bw.write("execute if score $dream_finalskill_psummon_timer dream_timer matches "+cs.get(index).time+".."+cs.get(index+each*each>cs.size()?cs.size()-1:index+each*each-1).time+" run function dreamland:memory_story/final_boss1/timerzip/1-"+(i+1)+"\n");
            index += each*each;
        }
        System.out.println("第四次");
        lastfilenum = filenum;
        filenum = 0;
        index = 0;
        //第三层切分
        for(int i = 0;i < lastfilenum;i ++){
            if(i % each == 0){
                filenum++;
                //为新的一组，创建文件
                bw.flush();
                bw = new BufferedWriter(new FileWriter("D:\\.minecraft\\saves\\DreamlandStudio2 (1)\\datapacks\\Dreamland\\data\\dream\\functions\\memory_story\\final_boss1\\timerzip/3-"+filenum+".mcfunction"));
            }
            bw.write("execute if score $dream_finalskill_psummon_timer dream_timer matches "+cs.get(index).time+".."+cs.get(index+each*each*each>cs.size()?cs.size()-1:index+each*each*each-1).time+" run function dreamland:memory_story/final_boss1/timerzip/2-"+(i+1)+"\n");
            index += each*each*each;
        }
        System.out.println("第五次");
        lastfilenum = filenum;
        filenum = 0;
        index = 0;
        //第四层切分
        for(int i = 0;i < lastfilenum;i ++){
            if(i % each == 0){
                filenum++;
                //为新的一组，创建文件
                bw.flush();
                bw = new BufferedWriter(new FileWriter("D:\\.minecraft\\saves\\DreamlandStudio2 (1)\\datapacks\\Dreamland\\data\\dream\\functions\\memory_story\\final_boss1\\timerzip/4-"+filenum+".mcfunction"));
            }
            bw.write("execute if score $dream_finalskill_psummon_timer dream_timer matches "+cs.get(index).time+".."+cs.get(index+each*each*each*each>cs.size()?cs.size()-1:index+each*each*each*each-1).time+" run function dreamland:memory_story/final_boss1/timerzip/3-"+(i+1)+"\n");
            index += each*each*each*each;
        }
        fr.close();
    }
}