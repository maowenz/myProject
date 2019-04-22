package test;

import java.util.Timer;
import java.util.TimerTask;

public class TestTimeSchedule {
	
	
	static Timer timer = new Timer();
	
	public void sche(String status) {
		if("cancel".equals(status)) {
				timer.cancel();
				return;
		}
		timer.schedule(new TimerTask() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				System.out.println("执行定时任务");
			}
		}, 300);
	}
	
	public static void main(String[] args) {
		
		TestTimeSchedule t = new TestTimeSchedule();
		//timer.cancel();
		t.sche("cance");
		
		
	}
	
}
