package com.mwz.learn;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.Toolkit;

import javax.swing.JFrame;

public class BallGame2 extends JFrame {
	
	private static final long serialVersionUID = 1L;
	
	Image ball = Toolkit.getDefaultToolkit().getImage("images/ball.png");
	Image desk = Toolkit.getDefaultToolkit().getImage("images/desk.jpg");
	
	
	double x = 100; //С��λ�ú�����
	double y = 100; //С��λ��������
	
	boolean right = true;//С���˶��ķ���
	
	//������
	public void paint(Graphics g) {
		
		System.out.println("���ڱ���һ��");
		g.drawImage(desk, 0, 0, null);
		g.drawImage(ball, (int)x, (int)y, null);
		
		//x = x + 10;
		
		if(right) {
			x = x + 10;
		}else {
			x = x - 10;
		}
		
		if(x > 850-40-20) {
			right = false;
		}
		
		if(x < 40) {
			right = true;
		}
	}
	
	
	
	//���ڼ���
	void launchFrame() {
		setSize(850,500);
		setLocation(50,50);
		setVisible(true);
		
		//���»����� ÿ��25��
		while(true) {
			repaint();
			try {
				Thread.sleep(40); //40����
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
	}
	
	//main�����ǳ������е����
	public static void main(String [] args) {
		
		BallGame2 ballGame = new BallGame2();
		ballGame.launchFrame();
		
	}
	

}
