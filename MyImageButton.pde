import g4p_controls.*;
 import processing.core.*;
public class MyImageButton extends GImageButton {
    
  public MyImageButton(PApplet theApplet, float p0, float p1, float p2, float p3, String[] fnames) {
      
        super(theApplet, p0, p1, p2, p3, fnames, null);
    
  }
  File file;
  final public File getImage(){
    return file;
  }
  public void setImage(String[] fnames) {
    file=new File(fnames[0]);
    bimage = ImageManager.loadImage(winApp, fnames);
    // There should be 3 images if not use as many as possible, 
    // duplicating the last one if neccessary
    if(bimage.length != 3){
        PImage[] temp = new PImage[3];
        for(int i = 0; i < 3; i++)
          temp[i] = bimage[Math.min(i, bimage.length - 1)];
        bimage = temp;
    }
    
    // resize images if needed
    for(int i = 0; i < bimage.length; i++){
        if(bimage[i].width != width || bimage[i].height != height)
          bimage[i].resize((int)width, (int)height);                    
    }
  }
  public void setImage(File[] Image) {
    String[] fnames=new String[3];
    for(int i = 0; i < Image.length; i++){
      fnames[i]=Image[i].getAbsolutePath();
    }
    bimage = ImageManager.loadImage(winApp, fnames);
    // There should be 3 images if not use as many as possible, 
    // duplicating the last one if neccessary
    if(bimage.length != 3){
        PImage[] temp = new PImage[3];
        for(int i = 0; i < 3; i++)
          temp[i] = bimage[Math.min(i, bimage.length - 1)];
        bimage = temp;
    }
    
    // resize images if needed
    for(int i = 0; i < bimage.length; i++){
        if(bimage[i].width != width || bimage[i].height != height)
          bimage[i].resize((int)width, (int)height);                    
    }
  }
}
