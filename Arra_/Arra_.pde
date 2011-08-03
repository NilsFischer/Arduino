int led[4] = { 10,11,12,13};
int oldVal = 0;
int counter = 0;
int taster = 2;

void setup() {
  for (int i = 0; i<4; i++) {
  pinMode(led[i], OUTPUT);
  pinMode(taster, INPUT);
  digitalWrite(taster, HIGH);
 }
}

void setLED(int ledNr) {
  for (int i = 0; i<4; i++) {
    if (i == ledNr) {
      digitalWrite(led[i], HIGH);
  }
    else {
        digitalWrite(led[i], LOW);
   }  
  }
}

int setCounter(int counter) {
  if (counter == 3) {
    counter = 0;
  }
  else {
    counter++;
  }
  return counter;
}

void loop() {
  int val = digitalRead(taster);
  if (val != oldVal && val == HIGH) {
    counter = setCounter(counter);
    setLED(counter);
    delay(10);
  }
  oldVal = val;
}

