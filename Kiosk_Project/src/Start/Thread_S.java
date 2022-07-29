package Start;

import java.awt.Frame;
import java.util.List;

public class Thread_S extends Thread {

	Frame f;
	List list;
	
	public Thread_S(Frame f, List list) {
		
		this.f = f;
		this.list = list;
		
	}
	
	@Override
	public void run() {
		
		int n = 1;
		
		Start_image S1 = new Start_image(f,list);
		Start_image2 S2 = new Start_image2(f,list);
		Start_image3 S3 = new Start_image3(f,list);
		
		
		while(S1.stop && S2.stop && S3.stop) {
		
			try {
			
				f.removeAll();
				
				switch (n) {
					case 1:
						
						S1 = new Start_image(f, list);
						n =2;
						break;
					case 2:
						
						S2 = new Start_image2(f, list);
						n =3;
						break;
					case 3:
						
						S3 = new Start_image3(f, list);
						n =1;
						break;
				}//switch
				
				Thread.sleep(2000);
								
			} catch (InterruptedException e) {
					e.printStackTrace();
			}
		}//while
	}//run

}
