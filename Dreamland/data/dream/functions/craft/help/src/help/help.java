package help;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;
import java.io.*;

//Encode GB 2312
//锟斤拷锟斤拷锟斤拷锟斤拷by Alumopper

public class help {
	//锟斤拷锟芥范锟斤拷锟斤拷锟斤拷
	public static void main(String[] args) {
		//锟斤拷锟斤拷锟斤拷锟斤拷
		JFrame jf = new JFrame("Helper v1.2.5        by Alumopper");
		jf.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        jf.setSize(500, 400);
        jf.setLocationRelativeTo(null);
        
        //锟芥划锟斤拷锟�
        SpringLayout layout = new SpringLayout();
        JPanel jp = new JPanel(layout);
        jf.setContentPane(jp);
        
        JButton btn = new JButton("锟斤拷锟斤拷");
        //锟较筹拷台
        JTextField tf1 = new JTextField(10);
        JTextField tf2 = new JTextField(10);
        JTextField tf3 = new JTextField(10);
        JTextField tf4 = new JTextField(10);
        JTextField tf5 = new JTextField(10);
        JTextField tf6 = new JTextField(10);
        JTextField tf7 = new JTextField(10);
        JTextField tf8 = new JTextField(10);
        JTextField tf9 = new JTextField(10);//1~9锟斤拷锟斤拷台
        JTextField tf10 = new JTextField(10);//
        JTextField tf11 = new JTextField(10);//
        JTextField tf12 = new JTextField(10);//
        JTextField tf13 = new JTextField(10);//
        JTextField tf14 = new JTextField(10);//锟斤拷锟斤拷锟秸硷拷
        
        JLabel l1 = new JLabel("锟斤拷品原锟斤拷");
        JLabel l2 = new JLabel("魔锟斤拷id");
        JLabel l3 = new JLabel("锟斤拷锟秸合筹拷台锟斤拷式锟斤拷锟斤拷魔锟斤拷id(注:原锟斤拷锟斤拷品锟斤拷锟斤拷前锟斤拷锟�0)");
        JLabel l4 = new JLabel("锟斤拷品锟斤拷锟斤拷");
        JLabel l5 = new JLabel("锟皆讹拷锟斤拷锟斤拷什锟斤拷锟�");
        JLabel l6 = new JLabel("锟斤拷锟斤拷锟秸硷拷");
        
        jp.add(btn);
        jp.add(tf1);
        jp.add(tf2);
        jp.add(tf3);
        jp.add(tf4);
        jp.add(tf5);
        jp.add(tf6);
        jp.add(tf7);
        jp.add(tf8);
        jp.add(tf9);
        jp.add(tf10);
        jp.add(tf11);
        jp.add(tf12);
        jp.add(tf13);
        jp.add(tf14);
        
        jp.add(l1);
        jp.add(l2);
        jp.add(l3);
        jp.add(l4);
        jp.add(l5);
        jp.add(l6);
        
        SpringLayout.Constraints btncons = layout.getConstraints(btn);
        SpringLayout.Constraints tf1cons = layout.getConstraints(tf1);
        SpringLayout.Constraints tf2cons = layout.getConstraints(tf2);
        SpringLayout.Constraints tf3cons = layout.getConstraints(tf3);
        SpringLayout.Constraints tf4cons = layout.getConstraints(tf4);
        SpringLayout.Constraints tf5cons = layout.getConstraints(tf5);
        SpringLayout.Constraints tf6cons = layout.getConstraints(tf6);
        SpringLayout.Constraints tf7cons = layout.getConstraints(tf7);
        SpringLayout.Constraints tf8cons = layout.getConstraints(tf8);
        SpringLayout.Constraints tf9cons = layout.getConstraints(tf9);
        SpringLayout.Constraints tf10cons = layout.getConstraints(tf10);
        SpringLayout.Constraints tf11cons = layout.getConstraints(tf11);
        SpringLayout.Constraints tf12cons = layout.getConstraints(tf12);
        SpringLayout.Constraints tf13cons = layout.getConstraints(tf13);
        SpringLayout.Constraints tf14cons = layout.getConstraints(tf14);
        
        SpringLayout.Constraints l1cons = layout.getConstraints(l1);
        SpringLayout.Constraints l2cons = layout.getConstraints(l2);
        SpringLayout.Constraints l3cons = layout.getConstraints(l3);
        SpringLayout.Constraints l4cons = layout.getConstraints(l4);
        SpringLayout.Constraints l5cons = layout.getConstraints(l5);
        SpringLayout.Constraints l6cons = layout.getConstraints(l6);

        
        btncons.setX(Spring.constant(400));
        btncons.setY(Spring.constant(300));
        
        tf1cons.setX(Spring.constant(10));
        tf1cons.setY(Spring.constant(30));//
        tf2cons.setX(Spring.constant(130));
        tf2cons.setY(Spring.constant(30));//
        tf3cons.setX(Spring.constant(250));
        tf3cons.setY(Spring.constant(30));//
        tf4cons.setX(Spring.constant(10));
        tf4cons.setY(Spring.constant(70));//
        tf5cons.setX(Spring.constant(130));
        tf5cons.setY(Spring.constant(70));//
        tf6cons.setX(Spring.constant(250));
        tf6cons.setY(Spring.constant(70));//
        tf7cons.setX(Spring.constant(10));
        tf7cons.setY(Spring.constant(110));//
        tf8cons.setX(Spring.constant(130));
        tf8cons.setY(Spring.constant(110));//
        tf9cons.setX(Spring.constant(250));
        tf9cons.setY(Spring.constant(110));//
        tf10cons.setX(Spring.constant(10));
        tf10cons.setY(Spring.constant(250));//
        tf11cons.setX(Spring.constant(130));
        tf11cons.setY(Spring.constant(250));//
        tf12cons.setX(Spring.constant(10));
        tf12cons.setY(Spring.constant(300));//
        tf13cons.setX(Spring.constant(130));
        tf13cons.setY(Spring.constant(300));//
        tf14cons.setX(Spring.constant(10));
        tf14cons.setY(Spring.constant(160));//
        
        l1cons.setX(Spring.constant(10));
        l1cons.setY(Spring.constant(230));//
        l2cons.setX(Spring.constant(130));
        l2cons.setY(Spring.constant(230));//
        l3cons.setX(Spring.constant(10));
        l3cons.setY(Spring.constant(10));//
        l4cons.setX(Spring.constant(10));
        l4cons.setY(Spring.constant(270));//
        l5cons.setX(Spring.constant(130));
        l5cons.setY(Spring.constant(270));//
        l6cons.setX(Spring.constant(10));
        l6cons.setY(Spring.constant(140));//

        btn.addActionListener(new ActionListener() {
        	public void actionPerformed(ActionEvent e) {
        		JTextField[] tfs = {tf1,tf2,tf3,tf4,tf5,tf6,tf7,tf8,tf9,tf10,tf11,tf12,tf13,tf14};
        		try {
					print(tfs);
				} catch (IOException e1) {
					e1.printStackTrace();
				}
        	}
        });
        
        jf.setVisible(true);
	}
	
	public static void print(JTextField[] tfs) throws IOException {
		String[] strs = new String[14];

		for(int i = 0;i<=13;i++) {
			strs[i] = tfs[i].getText();
		}
		FileOutputStream fos = new FileOutputStream("D:\\.minecraft\\saves\\Dreamlandstudio\\datapacks\\Dreamland\\data\\dream\\functions\\craft\\craft.mcfunction",true);
		
		String str = "execute ";
		//锟斤拷锟较成癸拷式
		for(int i = 0;i<=10;i++) {
			//1  2	3
			//10 11 12 15 16
			//19 20 21
			
			//0 1 2
			//3 4 5 x 9(10)
			//6 7 8
			if (i <= 2) {
				//execute if block ~ ~ ~ chest{Items:[{id:"minecraft:iron_ingot",Slot:1b,Count:1b,tag:{tag:{id:"dreamland:dream_org_ingot"}}}]}
				if(strs[i].isEmpty()) {
					str += "unless block ~ ~ ~ minecraft:chest{Items:[{Slot:" + (i + 1) + "b}]} ";
				}else {
					if(strs[i].charAt(0) == '0') {
						str += "if block ~ ~ ~ minecraft:chest{Items:[{Slot:" + (i + 1) + "b,Count:1b,id:\"minecraft:" + strs[i].substring(1) + "\"}]} ";
					}else {
						str += "if block ~ ~ ~ minecraft:chest{Items:[{Slot:" + (i + 1) + "b,Count:1b,tag:{tag:{id:\""+ strs[13] + ":" + strs[i] + "\"}}}]} ";
					}
				}
			}else if (i <= 5 && i >= 3) {
				if(strs[i].isEmpty()) {
					str += "unless block ~ ~ ~ minecraft:chest{Items:[{Slot:" + (i + 7) + "b}]} ";
				}else {
					if(strs[i].charAt(0) == '0') {
						str += "if block ~ ~ ~ minecraft:chest{Items:[{Slot:" + (i + 7) + "b,Count:1b,id:\"minecraft:" + strs[i].substring(1) + "\"}]} ";
					}else {
						str += "if block ~ ~ ~ minecraft:chest{Items:[{Slot:" + (i + 7) + "b,Count:1b,tag:{tag:{id:\""+ strs[13] + ":"+ strs[i] + "\"}}}]} ";
					}
				}
			}else if (i >= 6 && i <= 8) {
				if(strs[i].isEmpty()) {
					str += "unless block ~ ~ ~ minecraft:chest{Items:[{Slot:" + (i + 13) + "b}]} ";
				}else {
					if(strs[i].charAt(0) == '0') {
						str += "if block ~ ~ ~ minecraft:chest{Items:[{Slot:" + (i + 13) + "b,Count:1b,id:\"minecraft:" + strs[i].substring(1) + "\"}]} ";
					}else {
						str += "if block ~ ~ ~ minecraft:chest{Items:[{Slot:" + (i + 13) + "b,Count:1b,tag:{tag:{id:\""+ strs[13] + ":"+ strs[i] + "\"}}}]} ";
					}
				}
			}
		}
		//replaceitem block ~ ~-2 ~ container.0 minecraft:carrot_on_a_stick{CustomModelData:120003,display:{Name:'[{"text":"锟轿撅拷锟较筹拷台","italic":false}]'},tag:{id:"dreamland:crafting_table"}}
		//str += ("unless block ~ ~ ~ minecraft:chest{Items:[{Slot:15b}]} run replaceitem block ~ ~ ~ container.16 minecraft:" + strs[9] + "{CustomModelData:1200" + strs[12] + ",display:{Name:'[{\"text\":\"" + strs[11] + "\",\"italic\":false}]'},tag:{id:\"" + strs[10] + "\"}}");
		str += ("run replaceitem block ~ ~ ~ container.16 minecraft:" + strs[9] + "{");
		if (!strs[12].isEmpty()) str += ("CustomModelData:1200" + strs[12] + ",");
		if (!strs[10].isEmpty()){
			str += ("display:{Name:'[{\"translate\":\"dream.item.name." + strs[10].substring(strs[10].indexOf(':') + 1) + "\",\"italic\":false}]'},tag:{id:\"" + strs[10] + "\",isTemp:1b}}");
		}
		else{
			str += "tag:{isTemp:1b}}";
		};
		
		System.out.println(str);
		//fos.write(("\n#" + strs[10].substring(strs[10].indexOf(':') + 1) + "\n" + str).getBytes());
		
		fos.flush();
		fos.close();
	}

}

//qwq锟斤拷太锟斤拷锟斤拷  -----Alumopper(2020.3)
//awa锟斤拷锟斤拷写锟斤拷锟斤拷 -----Alumopper(2020.4)
//wtf锟斤拷锟斤拷锟斤拷么锟斤拷锟斤拷锟斤拷锟剿ｏ拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟叫憋拷锟捷ｏ拷锟斤拷锟解不锟斤拷全 锟斤拷 锟斤拷 锟斤拷-----Alumopper(2021.6.19)