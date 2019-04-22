package test;

import java.awt.BorderLayout;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTabbedPane;
import javax.swing.SwingConstants;

public class JTabbed extends JPanel{
	
	
	private static final long serialVersionUID = 1L;
	
	public JTabbed() {
		
		JTabbedPane jtp=new JTabbedPane(SwingConstants.BOTTOM);
		Icon icon=new ImageIcon("icon.gif");
		JButton btn = new JButton(icon);
		JLabel l = new JLabel("Welcome to the NCR Examination!");
		
		jtp.addTab("Icon",btn); 
		jtp.addTab("Welcome", l);
		
		setLayout(new BorderLayout());
		add(jtp,"Center");
	}
	public static void main(String args[]){
		JTabbed jt=new JTabbed();
	
		String str= jt.getClass().toString();
		System.out.println(str);
		if(str.indexOf("class") != -1)
			str = str.substring(6);
		JFrame frame = new JFrame(str);
		frame.addWindowListener(new WindowAdapter() {
			public void windowClosing(WindowEvent we) {
				System.exit(0);
			}
		});
		frame.getContentPane().add(jt);
		frame.setSize(500, 300);
		frame.setVisible(true);
	}
	
}
