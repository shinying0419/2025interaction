//week11_3_pacman_part2_move_x_y_void_keyPressed
//修改自week11_2_pacman_part1_pacman_part1_mouth_m_dm_open_close
//小精靈 張嘴(在動)
void setup(){
  size(500,500);
}
int x=250,y=250,dx=0,dy=0;  //diff of x y
float m=0,dm=0.05;
void draw(){
  background(0);//黃色的
  fill(255,255,0);
  //ellipse(x,y,30,30);
  arc(x,y,30,30,+0.5,PI*2-0.5) ; //弧度
  x+=dx;
  y+=dy;
  if(m>=1||m<0)dm=-dm;
  m+=dm;
}
void keyPressed(){
  if(keyCode==LEFT){dx=-1;dy=0;}
  if(keyCode==RIGHT){dx=+1;dy=0;}
  if(keyCode==UP){dx=0;dy=-1;}
  if(keyCode==DOWN){dx=0;dy=+1;}
}
