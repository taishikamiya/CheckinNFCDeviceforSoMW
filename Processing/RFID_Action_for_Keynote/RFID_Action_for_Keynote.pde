import processing.serial.*;
Serial myPort; 

// key action
import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.KeyEvent;

Robot robot;
 
float fillColor;
float diameter;

 
void setup() {
  size(800, 600);
  //fullScreen();
  String portName = Serial.list()[1];  // Select your Serial port
  myPort = new Serial(this, portName, 115200);
  myPort.bufferUntil('\n');
    
  //Let's get a Robot...
  try { 
    robot = new Robot();
  } 
  catch (AWTException e) {
    e.printStackTrace();
    exit();
  }  
}
 
void draw() {
  background(0);

  fill(fillColor);
  ellipse(width/2-50, height/2-150, diameter, diameter);
  
}
 
void serialEvent(Serial myPort) { 
  String myString = myPort.readStringUntil('\n');
  myString = trim(myString);
  println(myString);
//  String[] m = match(myString, "UID Value: ([0-9]+)");
  if(myString.equals("CHECKIN")){
    diameter = 300;
    fillColor = 240;
  // key action
      robot.keyPress(KeyEvent.VK_SPACE);
      delay(100);
      robot.keyRelease(KeyEvent.VK_SPACE);
  } else if(myString.equals("CHECKOUT")){
    diameter = 50;
    fillColor = 100;    
  // key action
      robot.keyPress(KeyEvent.VK_SPACE);
      delay(100);
      robot.keyRelease(KeyEvent.VK_SPACE);
  } else {
    diameter = 10;
    fillColor = 20;
  }

}