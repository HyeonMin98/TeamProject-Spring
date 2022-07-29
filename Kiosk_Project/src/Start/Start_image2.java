package Start;

import java.awt.Button;
import java.awt.Frame;
import java.awt.Panel;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.util.List;

import javax.swing.ImageIcon;
import javax.swing.JLabel;

import Menu.Coffe1;

public class Start_image2 extends Panel {
	public boolean stop = true;

	public Start_image2(Frame f, List list) {

		f.setBounds(0, 0, 600, 850);
		f.setLayout(null);

		// 두번째 이미지
		ImageIcon ic = new ImageIcon("src/pageimg/cafead2.jpg");
		JLabel jl = new JLabel(ic);
		jl.setBounds(0, 0, 600, 650);
		

		Button in = new Button("매장식사");
		Button out = new Button("포장하기");

		in.setBounds(0, 650, 300, 200);
		out.setBounds(300, 650, 300, 200);
		this.setBounds(0,0,600,680);
		
		



		in.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				f.removeAll();
				
				stop = false;
				new Coffe1(f, list);
				
			}
		});
		
		out.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				f.removeAll();
				
				stop = false;
				new Coffe1(f, list);
				
			}
		});
		
		this.add(jl);
		f.add(this);
		f.add(in);
		f.add(out);
		f.setVisible(true);
		f.addWindowListener(new WindowAdapter() {
			@Override
			public void windowClosing(WindowEvent e) {
				System.exit(0);
			}
		});

	}

}
