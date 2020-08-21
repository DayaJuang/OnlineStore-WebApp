package test.data;
import java.text.NumberFormat;
import java.util.Locale;

public class ItemData {
	
	private double price = 5545; //商品の単価
	final double TAX = 0.1; //税金10%
	
	//価格は円で変換するため
	public String showPrice(double itemPrice) {
		
		NumberFormat nm = NumberFormat.getCurrencyInstance(Locale.JAPAN);
		String yen = nm.format(itemPrice);
		return yen;
	}
	
	//税金を計算するメソッド
	public double calculateTax(double price) {
		double taxPrice = price*this.TAX;
		return taxPrice;
		
	}
	
	//合計を計算するメソッド
	public double calculatePrice(double totalPrice,double tax,double shipCost) {
		
		return totalPrice + tax + shipCost;
		
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	
	

}
