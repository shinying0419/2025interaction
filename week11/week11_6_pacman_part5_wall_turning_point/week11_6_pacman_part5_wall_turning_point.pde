//week11_6_pacman_part5_wall_turning_point
//修改自week11_5_pacman_part4_many_beans_for_for_array
//小精靈 張嘴(要動),移動時嘴巴方向改變,生出豆子且吃掉
void setup(){
  size(600,600);  //改一下視窗大小,讓它是30的倍數
}
int x=300-15,y=300-15,dx=0,dy=0,dir=0;  //durection
float m=0,dm=0.05;  //嘴巴大小mouth,嘴巴改變量diff of m
boolean [][]bean_eaten=new boolean[20][20];  //java的二維陣
void draw(){
  background(0);//黃色的
  for(int i=0;i<20;i++){
    for(int j=0;j<20;j++){
      if(bean_eaten[i][j]==false){
        fill(255);
        ellipse(15+j*30,15+i*30,5,5);
        if(dist(x,y,15+j*30,15+i*30)<15)  bean_eaten[i][j]=true;
      }
    }
  }
  fill(255,255,0);
  float m0=dir*PI/2;
  arc(x,y,30,30,m0+m,m0+PI*2-m) ; //弧度
  if(x+dx>=15 && x+dx<=600-15) x+=dx;
  if(y+dy>=15 && y+dy<=600-15) y+=dy;
  //豆子、轉折點、座標(15+j*30,15+i*30)
  if((x-15)%30==0 && (y-15)%30==0){
    if(next==2) {dx=-1;dy=0;;dir=2;}
    if(next==0) {dx=+1;dy=0;dir=0;}
    if(next==3) {dx=0;dy=-1;dir=3;}
    if(next==1) {dx=0;dy=+1;dir=1;}
   next=-1;
  }
  x+=dx;
  y+=dy;
  if(m>=1||m<0)dm=-dm;
  m+=dm;
}
int next=-1;
void keyPressed(){
  if(keyCode==LEFT) next=2;
  if(keyCode==RIGHT) next=0;
  if(keyCode==UP) next=3;
  if(keyCode==DOWN) next=1;
}
