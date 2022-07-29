package Start;

import java.awt.Frame;
import java.util.List;

public class Thread_M {

	public Thread_M(Frame f, List list) {
		
		list.removeAll(list);
		
		Thread_S S = new Thread_S(f,list);
		
		S.start();
		
		
	}
}
