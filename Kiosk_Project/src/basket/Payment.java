package basket;

import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.Color;
import java.awt.Font;
import java.awt.Frame;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.List;

import javax.swing.JLabel;
import javax.swing.JOptionPane;

import Menu.Coffe1;
import run.Products;

public class Payment {

	public Payment(Frame f, List<Products> list) {

		Font font = new Font("맑은 고딕", Font.BOLD, 25);

		
		
		JLabel select = new JLabel("결제 방법을 선택해 주세요");
		
		select.setBounds(170,50, 400,100);
		select.setFont(font);
		f.add(select);
		
		
		RoundedButton card = new RoundedButton("신용 카드");
		card.setBounds(50, 150, 500, 150);
		card.setBackground(Color.RED);
		card.setFont(font);

		RoundedButton cash = new RoundedButton("현금 결제");
		cash.setBounds(50, 320, 500, 150);
		cash.setBackground(Color.RED);
		cash.setFont(font);
		
		RoundedButton back = new RoundedButton("돌아가기");
		back.setBounds(500,750,100,100);

		f.add(card);
		f.add(cash);
		f.add(back);

		card.setForeground(Color.white);
		cash.setForeground(Color.white);

		f.setVisible(true);
		f.setResizable(false);
		
		card.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				JOptionPane thanks = new JOptionPane();
				thanks.showMessageDialog(f,"카드를 넣어주세요");
			}
			
		});
		cash.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				JOptionPane thanks = new JOptionPane();
				thanks.showMessageDialog(f,"현금을 넣어주세요");
			}
			
		});
		
		
		back.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				f.removeAll();
				new Coffe1(f, (java.util.List) list);

			}
		});
			


	}

}
