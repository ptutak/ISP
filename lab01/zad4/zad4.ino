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

int pwmWave(int pwmPin) {
  static int value = 0;
  static int slope = 1;
  analogWrite(pwmPin, value);
  value += slope;
  if (value >= 255)
    slope = -1;
  else if (value <= 0)
    slope = 1;
} 

void loop() {
  pwmWave(pwmPin);

  int sensorValue = analogRead(sensorPin);
  double voltageValue = (double) sensorValue / 1024.0;
  Serial.println(voltageValue);

  int pwmSensorValue = analogRead(sensorPwmPin);
  double pwmSensorVoltage = (double)pwmSensorValue / (double)1024.0;
  Serial.println(pwmSensorVoltage);

  if (pwmSensorValue > sensorValue) {
    digitalWrite(ledPin, HIGH);
  } else {
    digitalWrite(ledPin, LOW);
  }

  int buttonState = checkButton(buttonPin);

  if (buttonState == HIGH) {
    digitalWrite(ledPin, LOW);
  }

  delay(10);
}
