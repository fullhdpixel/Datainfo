package nl.utwente.di;

public class Quoter {
//1 => 10.0
//2 => 45.0
//3 => 20.0
//4 => 35.0
//5 => 50.0
//>6 => 0.0
	
	public enum isbn {
		
	}
	public double getBookPrice(String isbn) {
		double result;
		
		switch(isbn) {
			case "1": result = 10.0;
				break;
			case "2": result = 45.0;
				break;
			case "3": result = 20.0;
				break;
			case "4": result = 35.0;
				break;
			case "5": result = 50.0;
				break;
			default: result = 0.0;
		} 
		
		return result;
		
		/*
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
		*/
	}
}
