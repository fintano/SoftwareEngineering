package aspectJ;

import lejos.hardware.lcd.LCD;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		while(true){
			LCD.drawString("TEST", 0, 0);
			LCD.clear();
		}
	}

}
