int led[5] = {
  11,10,9,6, 5,};
int schalter = 2;
int oldVal = 0;
int val = oldVal;
int counter[5] = {
  10,20,30,40,50,};
int changeMarker[5] = {
  1,1,1,1,1,};
int loga[64] = {
  0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14,
  16, 18, 20, 22, 25, 28, 30, 33, 36, 39, 42, 46, 49, 
  53, 56, 60, 64, 68, 72, 77, 81, 86, 90, 95, 100, 105, 
  110, 116, 121,127, 132, 138, 144, 150, 156, 163, 169,
  176, 182, 189, 196, 203, 210, 218, 225, 233, 240, 248, 255};  

void setup() {
  pinMode(schalter, INPUT);
  pinMode(led[5], OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode( 9, OUTPUT);
  pinMode( 6, OUTPUT);
  pinMode( 5, OUTPUT);
  for (int i = 0; i<5; i++) {
    pinMode(led[i], OUTPUT);
  }
}

void changeCounter(int i) {
  if (counter[i] == 255) {
    changeMarker[i] = -1;
  }
  if (counter[i] == 0) {
    changeMarker[i] = 1;
  }
  counter[i] = counter[i] + changeMarker[i];
}

void loop() { 
  for (int i = 0;i<5;i++) {
    changeCounter(i);
    analogWrite(led[i], loga[counter[i]]);
    delay(10);
  }
}































