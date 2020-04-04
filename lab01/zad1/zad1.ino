void setup() {
  Serial.begin(9600);
}

void loop() {
  int sensorValue = analogRead(A0);
  double voltageValue = (double) sensorValue / 1024.0;
  Serial.println(voltageValue);
  delay(1);
}
