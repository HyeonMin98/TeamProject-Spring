package Menu;

import java.awt.Frame;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.List;

import javax.swing.JOptionPane;

import run.Products;

public class CoffeMouse extends MouseAdapter{
	Frame f;
	List<Products> list;
	int n;
	int i;
	
	public CoffeMouse(int n, Frame f, List<Products> list) {
		this.f = f;
		this.list = list;
		this.n = n;
	}
	
	@Override
	public void mouseClicked(MouseEvent e) {

		Boolean bExist = false;
		Products pro = new Products();
		String[] sName = {"아메리카노","에스프레소","카페라떼","카페모카",
				"카푸치노","모카치노","바닐라 라떼","카라멜 마끼아또"};
		int[] nPrice = {3900,4000,5000,6000,7000,8000,9000,2000};
		
		
		
		for(i=0; i<list.size(); i++) {
			if(list.get(i).getName().equals(sName[n])) {
				list.get(i).setCnt(list.get(i).getCnt()+1);
				bExist = true;
				break;
			}
		}
		if(!bExist) {
			pro.setName(sName[n]);
			pro.setPrice(nPrice[n]);
			list.add(pro);
		}
		if(n<4) {
			f.removeAll();
			new Coffe1(f, list);
		}else {
			f.removeAll();
			new Coffe2(f, list);
		}
		JOptionPane.showMessageDialog(f,"메뉴를 장바구니에 담았습니다.");
	}
}
