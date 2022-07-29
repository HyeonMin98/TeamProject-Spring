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

public class Coffe2 extends Panel {

	Coffe2 c2 = this;

	public Coffe2(Frame f, List list) {

		new SmallBasket(f, (java.util.List<Products>) list);

		this.setBounds(0, 0, 600, 850);
		this.setLayout(null);

		// 버튼

		Button coffee = new Button("커피");
		Button tea = new Button("티");
		Button ade = new Button("에이드");

		// 버튼위치
		coffee.setBounds(50, 40, 120, 80);
		tea.setBounds(242, 40, 120, 80);
		ade.setBounds(430, 40, 120, 80);

		// tea 버튼 누르면 tea로 감
		tea.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				f.removeAll();
				new Tea1(f, list);
			}
		});

		ade.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				f.removeAll();
				new Ade1(f, list);
			}
		});
		// 버튼 누르면 색 변함
		coffee.setBackground(Color.orange);
		// 버튼 추가
		f.add(coffee);
		f.add(tea);
		f.add(ade);
		// 가시화
		f.setVisible(true);

		// 앞뒤가기

		Button pageGo = new Button("◁");
		Button pageBack = new Button("▷");

		// 앞뒤 가기 위치
		pageGo.setBounds(150, 550, 50, 25);
		pageBack.setBounds(400, 550, 50, 25);

		f.add(pageGo);
		f.add(pageBack);

		pageGo.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				f.removeAll();
				new Coffe1(f, list);

			}
		});
		pageBack.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				f.removeAll();
				new Coffe1(f, list);

			}
		});

		//
		Panel img1;
		Panel img2;
		Panel img3;
		Panel img4;

		ImageIcon imageCaffe1 = new ImageIcon("src/cafeimg/coffeimg/cappuccino.jpg");

		img1 = new Panel();
		img1.setLayout(null);
		img1.setLayout(new BorderLayout());
		img1.setBounds(50, 150, 200, 170);

		ImageIcon imageCaffe2 = new ImageIcon("src/cafeimg/coffeimg/mocachino.jpg");

		img2 = new Panel();
		img2.setLayout(null);
		img2.setLayout(new BorderLayout());
		img2.setBounds(50, 350, 200, 170);

		ImageIcon imageCaffe3 = new ImageIcon("src/cafeimg/coffeimg/vanilla_latte.jpg");

		img3 = new Panel();
		img3.setLayout(null);
		img3.setLayout(new BorderLayout());
		img3.setBounds(350, 150, 200, 170);

		ImageIcon imageCaffe4 = new ImageIcon("src/cafeimg/coffeimg/caramel_macchiato.jpg");

		img4 = new Panel();
		img4.setLayout(null);
		img4.setLayout(new BorderLayout());
		img4.setBounds(350, 350, 200, 170);

		JLabel jl1 = new JLabel(imageCaffe1);
		jl1.setBounds(0, 0, 200, 150);
		JLabel jl1_Name = new JLabel("카푸치노");
		jl1_Name.setBounds(0, 150, 200, 20);
		jl1_Name.setHorizontalAlignment(JLabel.CENTER);

		JLabel jl2 = new JLabel(imageCaffe2);
		jl2.setBounds(0, 0, 200, 150);
		JLabel jl2_Name = new JLabel("모카치노");
		jl2_Name.setBounds(0, 150, 200, 20);
		jl2_Name.setHorizontalAlignment(JLabel.CENTER);

		JLabel jl3 = new JLabel(imageCaffe3);
		jl3.setBounds(0, 0, 200, 150);
		JLabel jl3_Name = new JLabel("바닐라 라떼");
		jl3_Name.setBounds(0, 150, 200, 20);
		jl3_Name.setHorizontalAlignment(JLabel.CENTER);

		JLabel jl4 = new JLabel(imageCaffe4);
		jl4.setBounds(0, 0, 200, 150);
		JLabel jl4_Name = new JLabel("카라멜 마끼아또");
		jl4_Name.setBounds(0, 150, 200, 20);
		jl4_Name.setHorizontalAlignment(JLabel.CENTER);

		jl1.addMouseListener(new CoffeMouse(4, f, list));
		jl2.addMouseListener(new CoffeMouse(5, f, list));
		jl3.addMouseListener(new CoffeMouse(6, f, list));
		jl4.addMouseListener(new CoffeMouse(7, f, list));

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
