int led[4] = { 10,11,12,13};
int oldVal = 0;
int counter = 0;
int taster = 2;

void setup() {
for (int i = 0; i<4; i++) {
pinMode(led[i], OUTPUT);
pinMode(schalter, INPUT);
digitalWrite(schalter, HIGH);

}
for (int i = 0

void setLED(int ledNr)  {
for (int i = 0; i<4; i++) {
  if (i == ledNr) {
    digitalWrite(led[i], HIGH);
  }
  else {
    digitalWrite(led[i], LOW);
   
  }  
}
}
