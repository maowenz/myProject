package test;

import java.awt.Dimension;
import java.awt.GridLayout;

import javax.swing.JButton;
import javax.swing.JFrame;

public class Button {
	
	public static void main(String [] args){
		//创建JFrame窗口
		JFrame frame = new JFrame("button");
		frame.setSize(500 , 300);
		
		//创建网格布局管理器
		GridLayout grid = new GridLayout(2,2);
		frame.setLayout(grid);
		
		JButton [] button = new JButton[4];
		//在JFrame窗口中添加按钮
		for(int i = 0;i < 4;i++) {
			button[i] = new JButton("button"+(i+1));
			//设置按钮的宽高
			button[i].setPreferredSize(new Dimension(150, 80));
			frame.add(button[i]);
		}
		//设置JFrame窗口可见
		frame.setVisible(true);
		
	}
	
}
