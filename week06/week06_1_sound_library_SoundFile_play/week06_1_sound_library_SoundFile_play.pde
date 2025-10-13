//week06_1_sound_library_SoundFile_play
//Sketch-Library-ManageLibraries,搜尋sound
//File-Examples-Libraries核心函式庫-Sound-soundfile-SimplePlayback
//參考 這個範例有聲音、有相關函式可學習參考
import processing.sound.*;
SoundFile sound;
void setup(){
  size(500,400);  //視窗大小
  sound = new  SoundFile(this,"music.mp3");
  //把music.mp3的檔案拉進來
  sound.play();
}
void draw()
{}
