package com.webapde.s18.minichallenge;

public enum Color {
	BLACK("#000000"), WHITE("#FFFFFF"), RED("#FF0000"), YELLOW("#FFFF00"), GREEN("#008000"), BLUE("#0000FF");
	
	private String hexValue;
	
	Color(String hexValue) {
		this.hexValue = hexValue;
	}
	
	public String getHexValue() {
		return hexValue;
	}
}
