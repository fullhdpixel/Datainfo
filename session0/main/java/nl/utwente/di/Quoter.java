package nl.utwente.di;

public class Quoter {
//1 => 10.0
//2 => 45.0
//3 => 20.0
//4 => 35.0
//5 => 50.0
//>6 => 0.0
	
	public String isbn;
	public double getBookPrice(String isbn) {
		double result;
		if (isbn.equals("1")) {
			result = 10.0;
		} else if (isbn.equals("2")) {
			result = 45.0;
		} else if (isbn.equals("3")) {
			result = 20.0;
		} else if (isbn.equals("4")) {
			result = 35.0;
		} else if (isbn.equals("5")) {
			result = 50.0;
		} else {
			result = 0.0;
		}
		return result;
	}
}
