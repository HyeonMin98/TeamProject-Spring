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

public class Tea2 extends Panel {

	Tea2 t2 = this;

	public Tea2(Frame f, List list) {

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
				f.removeAll();// 전체삭제
				new Coffe1(f, list);// 커피 1 페이지 열기
			}
		});

		tea.setBackground(Color.orange);

		f.add(coffee);
		f.add(tea);
		f.add(ade);

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
				new Tea1(f, list);

			}
		});
		pageBack.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				f.removeAll();
				new Tea1(f, list);

			}
		});

		//

		Panel img1;
		Panel img2;
		Panel img3;
		Panel img4;

		ImageIcon imageCaffe1 = new ImageIcon("src/cafeimg/teaimg/lemon.jpg");

		img1 = new Panel();
		img1.setLayout(null);
		img1.setLayout(new BorderLayout());
		img1.setBounds(50, 150, 200, 170);

		ImageIcon imageCaffe2 = new ImageIcon("src/cafeimg/teaimg/rosemary.jpg");

		img2 = new Panel();
		img2.setLayout(null);
		img2.setLayout(new BorderLayout());
		img2.setBounds(350, 150, 200, 170);

		

		JLabel jl1 = new JLabel(imageCaffe1);
		jl1.setBounds(0, 0, 200, 150);
		JLabel jl1_Name = new JLabel("레몬티");
		jl1_Name.setBounds(0, 150, 200, 20);
		jl1_Name.setHorizontalAlignment(JLabel.CENTER);

		JLabel jl2 = new JLabel(imageCaffe2);
		jl2.setBounds(0, 0, 200, 150);
		JLabel jl2_Name = new JLabel("로즈마리");
		jl2_Name.setBounds(0, 150, 200, 20);
		jl2_Name.setHorizontalAlignment(JLabel.CENTER);
		
		jl1.addMouseListener(new TeaMouse(4, f, list));
		jl2.addMouseListener(new TeaMouse(5, f, list));
		

		img1.add(jl1, BorderLayout.CENTER);
		img1.add(jl1_Name, BorderLayout.SOUTH);
		img2.add(jl2, BorderLayout.CENTER);
		img2.add(jl2_Name, BorderLayout.SOUTH);
		

		this.add(img1);
		this.add(img2);


		f.add(this);
	}
}
