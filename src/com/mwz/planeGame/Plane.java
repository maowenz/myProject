package com.mwz.planeGame;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.event.KeyEvent;

public class Plane extends GameObject {
	
	//int speed = 5;
	
	boolean left,right,up,down;
	
	boolean live = true;
	
	@Override
	public void drawSelf(Graphics g) {
		
		if(live) {
			g.drawImage(image, (int)x, (int)y, null);

			if(left) {
				x -= speed;
			}
			if(right) {
				x += speed;
			}
			if (up) {
				y -= speed;
			}
			if (down) {
				y += speed;
			}
		}else {
			
		}
		
		
	}
	
	public Plane(Image image,double x,double y) {
		this.image = image;
		this.x = x;
		this.y = y;
		this.speed = 3;
		this.width = image.getWidth(null);
		this.height = image.getHeight(null);
	}
	//°´¼ü·É»úÒÆ¶¯
	public void addDirection(KeyEvent e) {
		switch (e.getKeyCode()) {
		case KeyEvent.VK_LEFT:
			this.left = true;
			break;
		case KeyEvent.VK_RIGHT:
			this.right = true;
			break;
		case KeyEvent.VK_UP:
			this.up = true;	
			break;
		case KeyEvent.VK_DOWN:
			this.down = true;
			break;
		default:
			break;
		}
	}
	
	//ËÉ¿ª¼ü·É»úÍ£Ö¹
	public void minusDirection(KeyEvent e) {
		switch (e.getKeyCode()) {
		case KeyEvent.VK_LEFT:
			this.left = false;
			break;
		case KeyEvent.VK_RIGHT:
			this.right = false;
			break;
		case KeyEvent.VK_UP:
			this.up = false;	
			break;
		case KeyEvent.VK_DOWN:
			this.down = false;
			break;
		default:
			break;
		}
	}
	
}
