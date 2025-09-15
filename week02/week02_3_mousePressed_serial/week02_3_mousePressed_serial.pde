//week02_3_mousePressed_serial
import processing.serial.*;  //第1行,使用USB的serial
Serial myPort;  //第2行,宣告USB的Serial變數myPort
void mousePressed()
{
  myPort.write(' ');  //第4行,mouse按下時,播放聲音
}
void setup()
{
  size(400,400);
  myPort = new Serial(this,"COM4",9600);  //第3行,準備好
}//剛剛你在Arduion裡設定COM多少,就是多少

void draw()
{
  if(mousePressed) background(#FF0000);
  else background(#00FF00);
}
