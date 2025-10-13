//week06_4_arduino_slow_jogging
void setup() {
  // put your setup code here, to run once:
  pinMode(8,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  tone(8, 780, 60); //你自己決定聲音的Hz pin8, 780Hz, 60ms
  delay(333); //等0.333秒換下一個音
  tone(8, 320, 60); //你自己決定聲音的Hz pin8, 780Hz, 60ms
  delay(333); //等0.333秒換下一個音
}
