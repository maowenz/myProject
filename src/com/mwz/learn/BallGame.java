package com.mwz.learn;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.Toolkit;

import javax.swing.JFrame;

public class BallGame extends JFrame {
	
	
	private static final long serialVersionUID = 1L;
	
	Image ball = Toolkit.getDefaultToolkit().getImage("images/ball.png");
	Image desk = Toolkit.getDefaultToolkit().getImage("images/desk.jpg");
	
	double x = 100; //小球位置横坐标
	double y = 100; //小球位置纵坐标
	
	double degree = 3.14/3;//小球运动的初始方向
	
	//画窗口
	public void paint(Graphics g) {
		
		System.out.println("窗口被画一次");
		g.drawImage(desk, 0, 0, null);
		g.drawImage(ball, (int)x, (int)y, null);
		
		//x = x + 10;
		x = x + 10*Math.cos(degree);
		y = y + 10*Math.sin(degree);
		
		if(y > 500-40-30 || y < 40+40) {
			degree = -degree;
		}
		
		if(x > 856-40-30 || x < 40) {
			degree = 3.14 - degree;
		}
		
	}
	
	//窗口加载
	void launchFrame() {
		setSize(850,500);
		setLocation(50,50);
		setVisible(true);
		
		//重新画窗口 每秒25次
		while(true) {
			repaint();
			try {
				Thread.sleep(40); //40毫秒
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
	}
	
	//main方法是程序运行的入口
	public static void main(String [] args) {
		
		BallGame ballGame = new BallGame();
		ballGame.launchFrame();
		
	}
	

}
