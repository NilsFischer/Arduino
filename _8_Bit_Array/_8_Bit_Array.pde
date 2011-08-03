int led[4] = {
  11, 10, 9, 6,};
int schalter = 2;
int oldVal = 0;
int val = oldVal;
int up = 0;
int loga[64] = {
  0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14,
  16, 18, 20, 22, 25, 28, 30, 33, 36, 39, 42, 46, 49, 
  53, 56, 60, 64, 68, 72, 77, 81, 86, 90, 95, 100, 105, 
  110, 116, 121,127, 132, 138, 144, 150, 156, 163, 169,
  176, 182, 189, 196, 203, 210, 218, 225, 233, 240, 248, 255};  

void setup() {
  pinMode(led[4], OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode( 9, OUTPUT);
  pinMode( 6, OUTPUT);
  pinMode(schalter, INPUT);

}

int counter[4] = {10, 10, 10, 10};

int changeMarker[4] = {
  1, 1, 1, 1,};

void changeCounter(int i) {
  if (counter[i] == 63) {
    changeMarker[i] = -1;
  }
  if (counter[i] == 0) {
    changeMarker[i] = 1;
  }
  counter[i] = counter[i] + changeMarker[i];
  up = counter[i] * 0,1;
}

void setLED(int ledNr) {
  for (int i = 0; i<6;i++) {
    if (i == ledNr) {
      analogWrite(led[i], loga[up]);
    }
  }
}

void loop() { 
  for (int i = 0; i<4;i++) {
      int schalter = digitalRead(schalter);
      if (val != oldVal && val == HIGH) {
        up = counter[i] / 10;
        analogWrite(led[i], loga[up]);
        delay(1000);
      }
      else {
      changeCounter(i);
      analogWrite(led[i], loga[counter[i]]);
    }
    delay(10);
  }
}













