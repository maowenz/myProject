package com.mwz.planeGame;

import java.awt.Frame;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;


public class MyJFrame extends Frame {
	
	private static final long serialVersionUID = 1L;
	
	Image bgImage = GameUtil.getImage("images/bg.jpg");
	Image planeImage = GameUtil.getImage("images/plane.png");
	
	private Image offScreenImage = null;
	
	Plane plane = new Plane(planeImage,250,250);
	//Shell shell = new Shell();
	
	Shell [] shells = new Shell[50];
	
	/**
	 * ����ͼ��
	 */
	@Override
	public void paint(Graphics g) {
		
		g.drawImage(bgImage, 0, 0, null);
		plane.drawSelf(g);
		//shell.draw(g);
		
		for(int i = 0;i<shells.length;i++) {
			shells[i].draw(g);
		}
		
	}
	
	/**
	 * �ػ������ڲ���
	 * @author mwz
	 *
	 */
	class PaintThread extends Thread {
		
		@Override
		public void run() {
			while(true) {
				
				//System.out.println("���ڱ��ػ�");
				
				repaint();
				
				try {
					Thread.sleep(40);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
				
			}
		}
		
	}
	
	/**
	 * ���̼����ڲ���
	 * @author mwz
	 *
	 */
	class KeyMonitor extends KeyAdapter {

		@Override
		public void keyPressed(KeyEvent e) {
			plane.addDirection(e);
		}

		@Override
		public void keyReleased(KeyEvent e) {
			plane.minusDirection(e);
		}
		
	}
	
	//˫��������Ļ��˸������
	@Override
	public void update(Graphics g) {
		
		if(offScreenImage == null) {
			offScreenImage = this.createImage(Constants.FRAME_WIDTH, Constants.FRAME_HEIGHT);
		}
		Graphics gOff = offScreenImage.getGraphics();
		paint(gOff);
		g.drawImage(offScreenImage, 0, 0, null);
		
	}
	
	/**
	 * ��ʼ������
	 */
	public void launchFrame() {
		
		setTitle("�ɻ���ս");
		setSize(Constants.FRAME_WIDTH, Constants.FRAME_HEIGHT);
		setLocation(300, 300);
		setVisible(true);
		
		addWindowListener(new WindowAdapter() {
			@Override
			public void windowClosing(WindowEvent e) {
				
				System.exit(0);
				
			}
		});
		
		new PaintThread().start();
		addKeyListener(new KeyMonitor());
		
		for (int i = 0; i < shells.length; i++) {
			shells[i] = new Shell();
		}
		
	}
	
	public static void main(String[] args) {
		MyJFrame myJFrame = new MyJFrame();
		myJFrame.launchFrame();
	}
	
}
