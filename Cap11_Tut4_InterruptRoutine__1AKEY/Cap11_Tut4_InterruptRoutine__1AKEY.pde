int TonGen1 = 9;
// Funktion zum Setzen der analogen Spannung

void writeAudio(uint8_t val)
{
  OCR1A = (val);
}

// digitaler Eingang für den Taster

int Taster1 = 13;
int Taster2 = 12;
int Taster3 = 11;
int Taster4 = 3;
int Taster5 = 2;
int Taster6 = 8;
int Taster7 = 7;
int Taster8 = 6;
int Taster9 = 5;
int Taster10 = 4;
int dauer = 0;

// Variable für die Erzeugung der Wellenform innerhalb der
// Interrrupt-Routinephase ist ein Zähler, der von 0 bis 65535
// geht

uint16_t phase = 0;

// speed bestimmt, wie schnell phase hochgezählt wird.

uint16_t speed = 0;

// sample ist die Variable, in der die analoge Ausgangsspannung
// gespeichert wird.

uint8_t sample = 0;

// Das ist die Definition der Interrupt-Routine, die 625.000 Mal
// pro Sekunde aufgerufen wird (bei jedem Überlauf des PWM-Timers).

SIGNAL(TIMER1_OVF_vect)
{
  // Als Erstes wird die analoge Spannung gesetzt.
  writeAudio(sample);
  // phase wird hochgezählt: je größer speed ist, desto schneller
  phase += speed;
  // Wenn phase größer als die Hälfte ist, wird die analoge
  // Ausgangsspannung auf 5V gesetzt, sonst auf 0V.
  // Dadurch wird eine regelmäßige Rechteck-Wellenform generiert.
  if (phase >= 32768)
  sample = 255;
  else
  sample = 0;  
}

// In der Routine setup werden der PWM-Timer konfiguriert und die
// Interrupt-Routine aktiviert.

void setup()
{
  Serial.begin(9600);
  pinMode(TonGen1, OUTPUT);
  pinMode(Taster1, INPUT);
  pinMode(Taster2, INPUT);
  pinMode(Taster3, INPUT);
  pinMode(Taster4, INPUT);
  pinMode(Taster5, INPUT);
  pinMode(Taster6, INPUT);
  pinMode(Taster7, INPUT);
  pinMode(Taster8, INPUT);
  pinMode(Taster9, INPUT);
  pinMode(Taster10, INPUT);
  digitalWrite(Taster1, LOW);
  digitalWrite(Taster2, LOW);
  digitalWrite(Taster3, LOW);
  digitalWrite(Taster4, LOW);
  digitalWrite(Taster5, LOW);
  digitalWrite(Taster6, LOW);
  digitalWrite(Taster7, LOW);
  digitalWrite(Taster8, LOW);
  digitalWrite(Taster9, LOW);
  digitalWrite(Taster10, LOW);
  int valTaster1 = LOW;
  int valTaster2 = LOW;
  int valTaster3 = LOW;
  int valTaster4 = LOW;
  int valTaster5 = LOW;
  int valTaster6 = LOW;
  int valTaster7 = LOW;
  int valTaster8 = LOW;
  int valTaster9 = LOW;
  int valTaster10 = LOW;
  TCCR1A = _BV(WGM10) | _BV(COM1A1);
  TCCR1B = _BV(CS10) | _BV(WGM12);
  // Aktivieren der Interrupt-Routine
  TIMSK1 |=_BV(TOIE1);
}

void loop ()
{
     // In der Hauptschleife wird nur noch die Tonhöhe bestimmt,
     // indem die Variable speed gesetzt wird.
     //speed = analogRead(0) + 1;
     
  Serial.println(speed);
  
  int valTaster1 = digitalRead(Taster1);
  int valTaster2 = digitalRead(Taster2);
  int valTaster3 = digitalRead(Taster3);
  int valTaster4 = digitalRead(Taster4);
  int valTaster5 = digitalRead(Taster5);
  int valTaster6 = digitalRead(Taster6);
  int valTaster7 = digitalRead(Taster7);
  int valTaster8 = digitalRead(Taster8);
  int valTaster9 = digitalRead(Taster9);
  int valTaster10 = digitalRead(Taster10);
  
if (dauer == 5)
 {
   delayMicroseconds(50);
   int (dauer = 0);
 }
 else if (dauer == 0)
 {
   int (speed = 0);
 }
 
if (valTaster10 == HIGH)
  {
    int (speed = 1024);
    int (dauer = 5);
    int (valTaster10 = LOW);
  }
  if (dauer == 5)
 {
   delayMicroseconds(50);
   int (dauer = 0);
 }
 else if (dauer == 0)
 {
   int (speed = 0);
 }
  
/*if (valTaster9 == HIGH)
  {
    int (speed = 922);
    int (dauer = 5);
    int (valTaster9 = LOW);
} */
if (valTaster8 == HIGH)
  {
    int (speed = 819);
    int (dauer = 5);
    int (valTaster8 = LOW);
  }
  if (dauer == 5)
 {
   delayMicroseconds(50);
   int (dauer = 0);
 }
 else if (dauer == 0)
 {
   int (speed = 0);
 }
if (valTaster7 == HIGH)
  {
    int (speed = 717);
    int (dauer = 5);
    int (valTaster7 = LOW);
  }
  
if (valTaster6 == HIGH)
  {
    int (speed = 614);
    int (dauer = 5);
    int (valTaster6 = LOW);
  }
if (valTaster5 == HIGH)
  {
    int (speed = 512);
    int (dauer = 5);
    int (valTaster5 = LOW);
  }
  if (valTaster4 == HIGH)
  {
    int (speed = 410);
    int (dauer = 5);
    int (valTaster4 = LOW);
  }
  if (valTaster3 == HIGH)
  {
    int (speed = 307);
    int (dauer = 5);
    int (valTaster3 = LOW);
  }
  if (valTaster2 == HIGH)
  {
    int (speed = 205);
    int (dauer = 5);
    int (valTaster2 = LOW);
  }
  if (valTaster1 == HIGH)
  {
    int (speed = 102);
    int (dauer = 5);
    int (valTaster1 = LOW);
  }

}
