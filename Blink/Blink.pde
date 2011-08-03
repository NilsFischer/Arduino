/*
  Blink
  Turns on an LED on for one second, then off for one second, repeatedly.
 
  This example code is in the public domain.
 */

int ledPin1 = 13;
int ledPin2 = 12;
int ledPin3 = 11;
int ledPin4 = 10;
int ledPin5 =  9;
int ledPin6 =  8;

void setup() {                
  // initialize the digital pin as an output.
  // Pin 13 has an LED connected on most Arduino boards:
  pinMode(13, OUTPUT);  
  pinMode(12, OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode( 9, OUTPUT);
  }

void loop() {
  digitalWrite(13, HIGH);
  delay(2000);
  digitalWrite(12, HIGH);
  delay(500);
  digitalWrite(12, LOW);
  delay(100);
  digitalWrite( 9, HIGH);
  delay(2000);
  digitalWrite( 9, LOW);
  delay(100);
  digitalWrite(12, HIGH);
  delay(500);
  digitalWrite(12, LOW);
  delay(100); 
  digitalWrite(13, LOW);
  delay(100);  
  digitalWrite(11, HIGH);
  digitalWrite(10, HIGH);
  delay(2000);
  digitalWrite(11, LOW);
  digitalWrite(10, LOW);
  delay(100);
  digitalWrite(12, HIGH);
  delay(500);
  digitalWrite(12, LOW);
  delay(100);
}
