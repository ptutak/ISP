const double VOLTAGE_BOUNDARY = 3.3;

int sensorPin = A0;
int ledPin = 2;
int buttonPin = 3;

int pwmPin = 9;
int sensorPwmPin = A2;

void setup() {
  Serial.begin(9600);
  pinMode(ledPin, OUTPUT);
  pinMode(buttonPin, INPUT);
  digitalWrite(ledPin, LOW);
  analogWrite(pwmPin,200);
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
  double voltageValue = (double) sensorValue / 1024.0;
  Serial.println(voltageValue);

  if (voltageValue > VOLTAGE_BOUNDARY) {
    digitalWrite(ledPin, HIGH);
  } else {
    digitalWrite(ledPin, LOW);
  }

  int buttonState = checkButton(buttonPin);

  if (buttonState == HIGH) {
    digitalWrite(ledPin, LOW);
  }

  int pwmSensorValue = analogRead(sensorPwmPin);
  double pwmSensorVoltage = (double)pwmSensorValue / (double)1024.0;
  Serial.println(pwmSensorVoltage);
  
  delay(1);
}
