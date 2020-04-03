
const double VOLTAGE_BOUNDARY = 3.3;

int sensorPin = A0;
int ledPin = A1;
int buttonPin = A2;

void setup() {
  Serial.begin(9600);
  pinMode(ledPin, OUTPUT);
  pinMode(buttonPin, INPUT);
  digitalWrite(ledPin, LOW);
}

int checkButton(int buttonPin){
  static int lastButtonState = LOW; 
  static unsigned long timeRead = 0;

  int buttonReading = digitalRead(buttonPin);

  if (buttonReading != lastButtonState) {
    timeRead = millis();
  }

  if ((millis() - timeRead) > 50) {
    lastButtonState = buttonReading;
  }
  return lastButtonState;
}

void loop() {
  int sensorValue = analogRead(sensorPin);
  Serial.println(sensorValue)

  if (sensorValue > VOLTAGE_BOUNDARY) {
    digitalWrite(ledPin, HIGH);
  } else {
    digitalWrite(ledPin, LOW);
  }

  int buttonState = checkButton(buttonPin);

  if (buttonState == HIGH) {
    digitalWrite(ledPin, LOW);
  }

  delay(1);
}
