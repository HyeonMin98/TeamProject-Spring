package Menu;

import java.awt.Frame;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.List;

import javax.swing.JOptionPane;

import run.Products;

public class TeaMouse extends MouseAdapter {
	Frame f;
	List<Products> list;
	int n;
	int i;

	public TeaMouse(int n, Frame f, List<Products> list) {
		this.f = f;
		this.list = list;
		this.n = n;
	}

	@Override
	public void mouseClicked(MouseEvent e) {
		Boolean bExist = false;
		Products pro = new Products();
		String[] sName = { "캐모마일", "라벤더", "자스민", "페퍼민트", "레몬티", "로즈마리" };
		int[] nPrice = { 1000, 2000, 3000, 4000, 5000, 6000 };

		for (i = 0; i < list.size(); i++) {
			if (list.get(i).getName().equals(sName[n])) {
				list.get(i).setCnt(list.get(i).getCnt() + 1);
				break;
			}
		}
		if (i == list.size()) {
			pro.setName(sName[n]);
			pro.setPrice(nPrice[n]);
			list.add(pro);
		}

		if (n < 4) {
			f.removeAll();
			new Tea1(f, list);
		} else {
			f.removeAll();
			new Tea2(f, list);
		}
		JOptionPane.showMessageDialog(f, "메뉴를 장바구니에 담았습니다.");
	}

}
