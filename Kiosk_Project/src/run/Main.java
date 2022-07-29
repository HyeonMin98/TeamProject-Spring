package run;

import java.awt.Frame;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.util.ArrayList;
import java.util.List;

import Start.Start_image;
import Start.Thread_M;

public class Main {
	
	public static void main(String[] args) {
		
		List<Products> list = new ArrayList<Products>();
		
		Frame f = new Frame();
		f.setTitle("Cafe");
		f.setBounds(500, 50, 600, 850);
		f.setLayout(null);

		new Thread_M(f, list);

		f.setResizable(false);
		f.setVisible(true);
		f.addWindowListener(new WindowAdapter() {
			
			@Override
			public void windowClosing(WindowEvent e) {
				System.exit(0);
			}
		});
	
	}

}
