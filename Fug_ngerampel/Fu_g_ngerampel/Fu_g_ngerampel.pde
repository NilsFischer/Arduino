int ledPin1 = 13;
int ledPin2 = 12;
int ledPin3 = 11;
int ledPin4 = 2;
int ledPin5 = 1;
int ledPin6 = 0;
int schalter = 3; 
void setup()
{
  pinMode(ledPin1, OUTPUT);
  pinMode(ledPin2, OUTPUT);
  pinMode(ledPin3, OUTPUT);
  pinMode(ledPin4, OUTPUT);
  pinMode(ledPin5, OUTPUT);
  pinMode(ledPin6, OUTPUT);
  pinMode(schalter, INPUT);
  digitalWrite(schalter, HIGH);
}
void loop()
{
  int val = digitalRead(schalter);
  if (val == LOW) {
      digitalWrite(ledPin1, LOW);
      digitalWrite(ledPin2, LOW);
      digitalWrite(ledPin3, HIGH);
      digitalWrite(ledPin4, HIGH);
      digitalWrite(ledPin5, HIGH);
      digitalWrite(ledPin6, LOW);
      delay(500.00);
      digitalWrite(ledPin1, LOW);
      digitalWrite(ledPin2, HIGH);
      digitalWrite(ledPin3, LOW);
      digitalWrite(ledPin4, HIGH);
      digitalWrite(ledPin5, HIGH);
      digitalWrite(ledPin6, LOW);
      delay(2000.00);
      digitalWrite(ledPin1, HIGH);
      digitalWrite(ledPin2, LOW);
      digitalWrite(ledPin3, LOW);
      digitalWrite(ledPin4, HIGH);
      digitalWrite(ledPin5, HIGH);
      digitalWrite(ledPin6, LOW);
      delay(1000.00);
      digitalWrite(ledPin1, HIGH);
      digitalWrite(ledPin2, LOW);
      digitalWrite(ledPin3, LOW);
      digitalWrite(ledPin4, LOW);
      digitalWrite(ledPin5, LOW);
      digitalWrite(ledPin6, HIGH);
      delay(3000.00);
      digitalWrite(ledPin1, HIGH);
      digitalWrite(ledPin2, LOW);
      digitalWrite(ledPin3, LOW);
      digitalWrite(ledPin4, HIGH);
      digitalWrite(ledPin5, HIGH);
      digitalWrite(ledPin6, LOW);
      delay(1000.00);
      digitalWrite(ledPin1, HIGH);
      digitalWrite(ledPin2, HIGH);
      digitalWrite(ledPin3, LOW);
      digitalWrite(ledPin4, HIGH);
      digitalWrite(ledPin5, HIGH);
      digitalWrite(ledPin6, LOW);
      delay(2000.00);
      digitalWrite(ledPin1, LOW);
      digitalWrite(ledPin2, LOW);
      digitalWrite(ledPin3, HIGH);
      digitalWrite(ledPin4, HIGH);
      digitalWrite(ledPin5, HIGH);
      digitalWrite(ledPin6, LOW);
      delay(3000.00);
  }
      else {
      digitalWrite(ledPin1, LOW);
      digitalWrite(ledPin2, LOW);
      digitalWrite(ledPin3, HIGH);
      digitalWrite(ledPin4, HIGH);
      digitalWrite(ledPin5, HIGH);
      digitalWrite(ledPin6, LOW);
    }
}
