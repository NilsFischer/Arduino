#include <Debounce.h>
int taster = 2;
Debounce debouncer = Debounce( 20 , taster );
int led = 13;
void setup() {
  pinMode(13, OUTPUT);
  pinMode(taster, INPUT);
  digitalWrite(taster, HIGH);
}

void loop() {
  debouncer.update();
  int tasterVal = debouncer.read();
  if (tasterVal == HIGH) {
    digitalWrite(13, LOW);
  }
  else {
    digitalWrite(13, HIGH);
  }

}




