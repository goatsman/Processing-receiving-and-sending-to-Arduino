import processing.serial.*;

Serial mySerialPort;       // Create object from Serial class
String serialPortData;     // Data received from the serial port

void setup(){
  
  size(500,500);
  String portName = Serial.list()[2];  //change the 0 to a 1 or 2 etc. to match your port
  mySerialPort = new Serial(this, portName, 9600); 
}

void draw(){
  
  if (mousePressed == true) {                           
    //if we clicked in the window
   mySerialPort.write('1');         //send a 1
   println("1");   
  } else 
  {                           //otherwise
  mySerialPort.write('0');          //send a 0
  }   
}

