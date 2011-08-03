int ledPin1 = 13;  
int ledPin2 = 12;
int ledPin3 = 11; 
int ledPin4 = 10; 
int ledPin5 =  9; 
int schalter = 2;

void setup() {
  pinMode(13, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode( 9, OUTPUT);
  pinMode(schalter, INPUT);
  digitalWrite(schalter, HIGH);
}

void loop() {
  
  int val = digitalRead(schalter);
  if (val == HIGH) {
    digitalWrite(11, LOW);
    digitalWrite(10, LOW);
    delay(10);
    digitalWrite(12, HIGH);
    delay(2000);
    digitalWrite(12, LOW);
    delay(500);
    digitalWrite(13, HIGH);
    digitalWrite( 9, HIGH);
    delay(5000);
    digitalWrite( 9, LOW);
    delay(10);
    digitalWrite(12, HIGH);
    digitalWrite(10, HIGH);
    delay(2000);
    digitalWrite(10, LOW);
    digitalWrite(13, LOW);
    digitalWrite(12, LOW);
    delay(10);
}

else {
   digitalWrite(11, HIGH);
   digitalWrite(10, HIGH);
   }
}
