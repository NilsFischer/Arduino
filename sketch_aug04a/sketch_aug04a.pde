#include <Debounce.h>

int led[11] = {
  13, 12, 10, 9, 8,7,6,4,3};
int ledPin1 = 13;
int ledPin2 = 12;
int ledPin3 = 10;
int ledPin4 = 9;
int ledPin5 = 8;
int ledPin6 = 7;
int ledPin7 = 6;
int ledPin8 = 4;
int ledPin9 = 3;

void setup() {
    pinMode (led[11], OUTPUT);
    pinMode(13, OUTPUT);
    pinMode(12, OUTPUT);
    pinMode(11, OUTPUT);
    pinMode(10, OUTPUT);
    pinMode( 9, OUTPUT);
    pinMode( 8, OUTPUT);
    pinMode( 7, OUTPUT);
    pinMode( 6, OUTPUT);
    pinMode( 5, OUTPUT);
    pinMode( 4, OUTPUT);
    pinMode( 3, OUTPUT);
  }
 
void loop() {
  int randomLED = random(2, 14);
  digitalWrite(randomLED, HIGH);
  delay(500);
  digitalWrite(randomLED, LOW);
}






