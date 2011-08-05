int potPin = 0;
int speakerOut = 3;
int val = 0;
int power = 13;
int val2 = 0;
int val3 = 0;
int val4 = 0;
int val5 = 0;
int val6 = 0;
int led1 = 12;
int led2 = 11;
int led3 = 10;
int led4 = 9;
int led5 = 8;
int led6 = 7;

void setup() {
  pinMode(speakerOut, OUTPUT);
  pinMode(power, OUTPUT);
  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  pinMode(led3, OUTPUT);
  pinMode(led4, OUTPUT);
  pinMode(led5, OUTPUT);
  pinMode(led6, OUTPUT);
}
  
  void loop () {
    digitalWrite(power, HIGH);
    val = analogRead(potPin);
    if (val < 850) {
      digitalWrite(led1, HIGH);
      digitalWrite(speakerOut, HIGH);
      delayMicroseconds (1000);
      digitalWrite(speakerOut, LOW);
      delayMicroseconds (1000);
    }
    val3 = analogRead(potPin);
    if (val3 < 870) {
      digitalWrite(led3, HIGH);
    }
    val4 = analogRead(potPin);
    if (val4 < 890) {
      digitalWrite(led4, HIGH);
    }
    val5 = analogRead(potPin);
    if (val5 < 910) {
      digitalWrite(led5, HIGH);
    }
    val6 = analogRead(potPin);
    if (val6 < 930) {
      digitalWrite(led6, HIGH);
    }
    val2 = analogRead(potPin);
    if (val2 < 830) {
      digitalWrite(led2, HIGH);
      digitalWrite(speakerOut, HIGH);
      delayMicroseconds (300);
      digitalWrite(speakerOut, LOW);
      delayMicroseconds (300);
    }
   else {
     digitalWrite(led1, LOW);
     digitalWrite(led2, LOW);
     digitalWrite(led3, LOW);
     digitalWrite(led4, LOW);
     digitalWrite(led5, LOW);
     digitalWrite(led6, LOW);
     digitalWrite(speakerOut, LOW);
   }
  }
  
