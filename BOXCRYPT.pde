  // Need G4P library
import g4p_controls.*;
import java.awt.Dimension;
import java.awt.Toolkit;
File keyFile,FinalFolder;
File doc;
PImage decImage,finalEncImage;
File image;
File folder;
EncryptImage encryptImage;
int process=-1; //process tells about the operation -1 means nothing, 1 means encryption,2 2 means decryption. It is used be the file selection fuction to determine the which window is open and set image accordingly
public void setup(){
  size(400, 400, JAVA2D);
  createGUI();
  customGUI();
  // Place your setup code here
}

public void draw(){
  background(230);
  
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){

}

//selectFolder("Select a folder to process:", "folderSelected");
void folderSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    folder=selection;
    println("User selected " + selection.getAbsolutePath());
  }
}
void finalFolderSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    FinalFolder=selection;
    println("User selected " + selection.getAbsolutePath());
  }
}  

//selectInput("Select a file to process:", "fileSelected");
void KeyfileSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    keyFile=selection;
    println("User selected " + selection.getAbsolutePath());
  }
}

void fileSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    image=selection;
    if(process==1)
      imgB.setImage(new File[] { image, image, image } );
    else if(process == 2)
      imgButton1.setImage(new File[] { image, image, image } );
    println("User selected " + selection.getAbsolutePath());
  }
}

void docfileSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    doc=selection;
    println("User selected " + selection.getAbsolutePath());
  }
}
