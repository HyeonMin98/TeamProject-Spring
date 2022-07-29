package Menu;

import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.Color;
import java.awt.Frame;
import java.util.List;
import java.awt.Panel;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;

import javax.swing.ImageIcon;
import javax.swing.JLabel;

import basket.SmallBasket;
import basket.SmallBasket;
import run.Products;

public class Tea1 extends Panel {

	Tea1 t1 = this;

	public Tea1(Frame f, List list) {

		new SmallBasket(f, (java.util.List<Products>) list);

		this.setBounds(0, 0, 600, 850);
		this.setLayout(null);

		// 버튼

		Button coffee = new Button("커피");
		Button tea = new Button("티");
		Button ade = new Button("에이드");

		coffee.setBounds(50, 40, 120, 80);
		tea.setBounds(242, 40, 120, 80);
		ade.setBounds(430, 40, 120, 80);

		ade.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				f.removeAll();
				new Ade1(f, list);
			}
		});

		coffee.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				f.removeAll();
				new Coffe1(f, list);
			}
		});

//---------------------------------------------------------------------------------------------

		tea.setBackground(Color.orange);

		f.add(coffee);
		f.add(tea);
		f.add(ade);

		f.setVisible(true);

		Button pageGo = new Button("◁");
		Button pageBack = new Button("▷");
		pageGo.setBounds(150, 550, 50, 25);
		pageBack.setBounds(400, 550, 50, 25);

		f.add(pageGo);
		f.add(pageBack);

		pageGo.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				f.removeAll();
				new Tea2(f, list);

			}
		});
		pageBack.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				f.removeAll();
				new Tea2(f, list);

			}
		});


		Panel img1;
		Panel img2;
		Panel img3;
		Panel img4;

		ImageIcon imageCaffe1 = new ImageIcon("src/cafeimg/teaimg/chamomile.jpg");

		img1 = new Panel();
		img1.setLayout(null);
		img1.setLayout(new BorderLayout());
		img1.setBounds(50, 150, 200, 170);

		ImageIcon imageCaffe2 = new ImageIcon("src/cafeimg/teaimg/lavender.jpg");

		img2 = new Panel();
		img2.setLayout(null);
		img2.setLayout(new BorderLayout());
		img2.setBounds(50, 350, 200, 170);

		ImageIcon imageCaffe3 = new ImageIcon("src/cafeimg/teaimg/jasmin.jpg");

		img3 = new Panel();
		img3.setLayout(null);
		img3.setLayout(new BorderLayout());
		img3.setBounds(350, 150, 200, 170);

		ImageIcon imageCaffe4 = new ImageIcon("src/cafeimg/teaimg/peppermint.jpg");

		img4 = new Panel();
		img4.setLayout(null);
		img4.setLayout(new BorderLayout());
		img4.setBounds(350, 350, 200, 170);

		JLabel jl1 = new JLabel(imageCaffe1);
		jl1.setBounds(0, 0, 200, 150);
		JLabel jl1_Name = new JLabel("캐모마일");
		jl1_Name.setBounds(0, 150, 200, 20);
		jl1_Name.setHorizontalAlignment(JLabel.CENTER);

		JLabel jl2 = new JLabel(imageCaffe2);
		jl2.setBounds(0, 0, 200, 150);
		JLabel jl2_Name = new JLabel("라벤더");
		jl2_Name.setBounds(0, 150, 200, 20);
		jl2_Name.setHorizontalAlignment(JLabel.CENTER);

		JLabel jl3 = new JLabel(imageCaffe3);
		jl3.setBounds(0, 0, 200, 150);
		JLabel jl3_Name = new JLabel("자스민");
		jl3_Name.setBounds(0, 150, 200, 20);
		jl3_Name.setHorizontalAlignment(JLabel.CENTER);

		JLabel jl4 = new JLabel(imageCaffe4);
		jl4.setBounds(0, 0, 200, 150);
		JLabel jl4_Name = new JLabel("페퍼민트");
		jl4_Name.setBounds(0, 150, 200, 20);
		jl4_Name.setHorizontalAlignment(JLabel.CENTER);

		jl1.addMouseListener(new TeaMouse(0, f, list));
		jl2.addMouseListener(new TeaMouse(1, f, list));
		jl3.addMouseListener(new TeaMouse(2, f, list));
		jl4.addMouseListener(new TeaMouse(3, f, list));

		img1.add(jl1, BorderLayout.CENTER);
		img1.add(jl1_Name, BorderLayout.SOUTH);
		img2.add(jl2, BorderLayout.CENTER);
		img2.add(jl2_Name, BorderLayout.SOUTH);
		img3.add(jl3, BorderLayout.CENTER);
		img3.add(jl3_Name, BorderLayout.SOUTH);
		img4.add(jl4, BorderLayout.CENTER);
		img4.add(jl4_Name, BorderLayout.SOUTH);

		this.add(img1);
		this.add(img2);
		this.add(img3);
		this.add(img4);

		f.add(this);
	}
}
