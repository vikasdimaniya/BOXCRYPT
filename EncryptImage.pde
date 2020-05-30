import java.util.*;
class EncryptImage extends Encryption{
  public PImage image;
  public int keyValue;
  EncryptImage(File file,int keyValue){
    this.file=file;
    image=loadImage(file.getAbsolutePath());
    this.keyValue=keyValue;
  }
  void startncryption(){
    if(keyValue==2){
      for(int i=0;i<image.pixels.length;i++){
        
      }
    }
  };
}
