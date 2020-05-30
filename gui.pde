/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.
 
 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
 // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
public void encryptWindowOpener(GButton source, GEvent event) { //_CODE_:encryptWindowB:474613:
  println("encryptWindowB - GButton >> GEvent." + event + " @ " + millis());
  int w=400, h=350;
  encryptWindow = GWindow.getWindow(this, "Encrypt", (int)screenSize.getWidth()/2-w/2, (int)screenSize.getHeight()/2-h/2, w, h, JAVA2D);
  encryptWindow.noLoop();
  encryptWindow.setActionOnClose(G4P.CLOSE_WINDOW);
  encryptWindow.addDrawHandler(this, "encryptDraw");
  imgB = new MyImageButton(encryptWindow, 10, 50, 190, 210, new String[] { "Default.png", "Default.png", "Default.png" } );
  imgB.addEventHandler(this, "imgMethod");
  encryptDetailsB = new GButton(encryptWindow, 130, 280, 80, 50);
  encryptDetailsB.setText("details");
  encryptDetailsB.setTextBold();
  encryptDetailsB.addEventHandler(this, "detailM");
  chooseImageB = new GButton(encryptWindow, 220, 50, 80, 150);
  chooseImageB.setText("Choose Image");
  chooseImageB.setTextBold();
  chooseImageB.addEventHandler(this, "encChooseImageM");
  saveB = new GButton(encryptWindow, 220, 280, 170, 50);
  saveB.setText("Save");
  saveB.setTextBold();
  saveB.addEventHandler(this, "saveM");
  button2 = new GButton(encryptWindow, 220, 210, 170, 60);
  button2.setText("Encrypt");
  button2.setTextBold();
  button2.addEventHandler(this, "encryptOpenerM");
  customKeyB = new GButton(encryptWindow, 310, 130, 80, 70);
  customKeyB.setText("custom key");
  customKeyB.setTextBold();
  customKeyB.addEventHandler(this, "customKeyM");
  label2 = new GLabel(encryptWindow, 0, 10, 100, 20);
  label2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label2.setText("BOXCRYPT V0.2");
  label2.setTextBold();
  label2.setOpaque(false);
  button4 = new GButton(encryptWindow, 310, 10, 80, 30);
  button4.setText("Help");
  button4.addEventHandler(this, "help");
  button5 = new GButton(encryptWindow, 220, 10, 80, 30);
  button5.setText("ABOUT");
  button5.addEventHandler(this, "about");
  GenerateKeyB = new GButton(encryptWindow, 310, 50, 80, 70);
  GenerateKeyB.setText("Generate Key");
  GenerateKeyB.setTextBold();
  GenerateKeyB.addEventHandler(this, "GenerateKeyM");
  encryptWindow.loop();
} //_CODE_:encryptWindowB:474613:

public void decryptWindowOpener(GButton source, GEvent event) { //_CODE_:decryptWindowB:477109:
  println("decryptWindowB - GButton >> GEvent." + event + " @ " + millis());
  int w= 400, h= 350;
  decrypterWindow = GWindow.getWindow(this, "Window title", (int)screenSize.getWidth()/2-w/2, (int)screenSize.getHeight()/2-h/2, w, h, JAVA2D);
  decrypterWindow.noLoop();
  decrypterWindow.addDrawHandler(this, "win_draw1");
  button1 = new GButton(decrypterWindow, 220, 50, 80, 150);
  button1.setText("Choose Image");
  button1.setTextBold();
  button1.addEventHandler(this, "decChooseImageM");
  imgButton1 = new MyImageButton(decrypterWindow, 10, 50, 190, 210, new String[] { "Default.png", "Default.png", "Default.png" } );
  imgButton1.addEventHandler(this, "imgButton1_click1");
  button3 = new GButton(decrypterWindow, 310, 130, 80, 70);
  button3.setText("Enter Key");
  button3.setTextBold();
  button3.addEventHandler(this, "button3_click1");
  SelectKeyfileB = new GButton(decrypterWindow, 310, 50, 80, 70);
  SelectKeyfileB.setText("Select Key");
  SelectKeyfileB.setTextBold();
  SelectKeyfileB.addEventHandler(this, "SelectKeyfile");
  button6 = new GButton(decrypterWindow, 220, 210, 170, 60);
  button6.setText("Decrypt");
  button6.setTextBold();
  button6.addEventHandler(this, "decryptMain");
  button8 = new GButton(decrypterWindow, 220, 280, 170, 50);
  button8.setText("Save");
  button8.setTextBold();
  button8.addEventHandler(this, "saveM");
  button7 = new GButton(decrypterWindow, 220, 10, 80, 30);
  button7.setText("ABOUT");
  button7.addEventHandler(this, "about");
  button9 = new GButton(decrypterWindow, 310, 10, 80, 30);
  button9.setText("Help");
  button9.addEventHandler(this, "help");
  DecryptDetailsMethodB = new GButton(decrypterWindow, 130, 280, 80, 50);
  DecryptDetailsMethodB.setText("Details");
  DecryptDetailsMethodB.setTextBold();
  DecryptDetailsMethodB.addEventHandler(this, "detailM");
  label3 = new GLabel(decrypterWindow, 0, 10, 100, 20);
  label3.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label3.setText("BOXCRYPT V0.2");
  label3.setTextBold();
  label3.setOpaque(false);
  decrypterWindow.loop();
} //_CODE_:decryptWindowB:477109:


synchronized public void encryptDraw(PApplet appc, GWinData data) { //_CODE_:encryptWindow:654548:
  appc.background(230);
} //_CODE_:encryptWindow:654548:

public void imgMethod(MyImageButton source, GEvent event) { //_CODE_:imgB:760759:
  println("imgB - MyImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:imgB:760759:

public void detailM(GButton source, GEvent event) { //_CODE_:encryptDetailsB:971637:
  println("detailsB - GButton >> GEvent." + event + " @ " + millis());
  int w=300, h=200;
  PImage imageDetails=loadImage(image.getAbsolutePath());
  DetailsWindow = GWindow.getWindow(this, "Details", (int)screenSize.getWidth()/2-w/2, (int)screenSize.getHeight()/2-h/2, w, h, JAVA2D);
  DetailsWindow.noLoop();
  DetailsWindow.addDrawHandler(this, "win_draw_Details");
  imgButton3 = new MyImageButton(DetailsWindow, 10, 10, 160, 170, new String[] { "ASDAD.png", "ASDAD.png", "ASDAD.png" } );
  imgButton3.setImage(new File[] { image, image, image } );
  imgButton3.addEventHandler(this, "imgButton3_click1");
  button10 = new GButton(DetailsWindow, 190, 10, 80, 30);
  button10.setText("Open");
  button10.addEventHandler(this, "button10_click1");
  label11 = new GLabel(DetailsWindow, 190, 50, 80, 20);
  label11.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label11.setText("Resolution");
  label11.setOpaque(false);
  ResolutionL = new GLabel(DetailsWindow, 190, 80, 80, 20);
  ResolutionL.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  ResolutionL.setText(imageDetails.width+"X"+imageDetails.height);
  ResolutionL.setOpaque(false);
  label12 = new GLabel(DetailsWindow, 190, 110, 80, 20);
  label12.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label12.setText("Size");
  label12.setOpaque(false);
  label13 = new GLabel(DetailsWindow, 190, 140, 80, 20);
  label13.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label13.setText(String.valueOf(image.length())+"bytes");
  label13.setOpaque(false);
  DetailsWindow.loop();
} //_CODE_:encryptDetailsB:971637:

public void encChooseImageM(GButton source, GEvent event) { //_CODE_:chooseImageB:516344:
  println("chooseImageB - GButton >> GEvent." + event + " @ " + millis());
  process=1;
  selectInput("Select a Image to process:", "fileSelected");
} //_CODE_:chooseImageB:516344:

public void decChooseImageM(GButton source, GEvent event) { //_CODE_:button1:574621:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
  process=2;
  selectInput("Select a Image to process:", "fileSelected");
} //_CODE_:button1:574621:



public void saveM(GButton source, GEvent event) { //_CODE_:saveB:452575:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
  int w=400, h=350;
  FolderSelectorWindow = GWindow.getWindow(this, "SelectFolder", (int)screenSize.getWidth()/2-w/2, (int)screenSize.getHeight()/2-h/2, w, h, JAVA2D);
  FolderSelectorWindow.noLoop();
  FolderSelectorWindow.addDrawHandler(this, "FolderSelectorWindowDraw");
  imgButton2 = new MyImageButton(FolderSelectorWindow, 10, 50, 190, 163, new String[] { "ASDAD.png", "ASDAD.png", "ASDAD.png" } );
  imgButton2.addEventHandler(this, "imgButton2_click1");
  imgButton2.setImage(new File[]{image,image,image});
  helpSelectB = new GButton(FolderSelectorWindow, 310, 10, 80, 30);
  helpSelectB.setText("help");
  helpSelectB.addEventHandler(this, "help");
  aboutSelectFolderB = new GButton(FolderSelectorWindow, 220, 10, 80, 30);
  aboutSelectFolderB.setText("about");
  aboutSelectFolderB.addEventHandler(this, "about");
  label4 = new GLabel(FolderSelectorWindow, 0, 10, 100, 20);
  label4.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label4.setText("BOXCRYPT V0.2");
  label4.setTextBold();
  label4.setOpaque(false);
  FileNameT = new GTextField(FolderSelectorWindow, 220, 60, 170, 70, G4P.SCROLLBARS_HORIZONTAL_ONLY);
  FileNameT.setPromptText("Enter File Name");
  FileNameT.setOpaque(true);
  FileNameT.addEventHandler(this, "FileName");
  FolderSelctorB = new GButton(FolderSelectorWindow, 220, 150, 170, 50);
  FolderSelctorB.setText("Select Folder");
  FolderSelctorB.setTextBold();
  FolderSelctorB.addEventHandler(this, "FolderSelector");
  FolderLocation = new GLabel(FolderSelectorWindow, 10, 260, 190, 70);
  FolderLocation.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  FolderLocation.setOpaque(false);
  FinishB = new GButton(FolderSelectorWindow, 220, 260, 170, 70);
  FinishB.setText("Finish");
  FinishB.setTextBold();
  FinishB.addEventHandler(this, "Finish");
  FolderSelectorWindow.loop();
} //_CODE_:saveB:452575:

public void encryptOpenerM(GButton source, GEvent event) { //_CODE_:button2:428299:
  println("button2 - GButton >> GEvent." + event + " @ " + millis());
  int w=200, h=200;
  SelectTxtFileWindow = GWindow.getWindow(this, "Select Txt File", (int)screenSize.getWidth()/2-w/2, (int)screenSize.getHeight()/2-h/2, w, h, JAVA2D);
  SelectTxtFileWindow.noLoop();
  SelectTxtFileWindow.addDrawHandler(this, "SelectTxtFileWindowOpenner");
  selectTxtFile = new GButton(SelectTxtFileWindow, 10, 5, 180, 85);
  selectTxtFile.setText("Select txt File");
  selectTxtFile.addEventHandler(this, "selectDocFileM");
  start = new GButton(SelectTxtFileWindow, 10, 105, 180, 80);
  start.setText("start encryption");
  start.addEventHandler(this, "encryptStartM");
  SelectTxtFileWindow.loop();
} //_CODE_:button2:428299:

public void customKeyM(GButton source, GEvent event) { //_CODE_:customKeyB:964228:
  println("button3 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:customKeyB:964228:

public void help(GButton source, GEvent event) { //_CODE_:button4:686696:
  println("button4 - GButton >> GEvent." + event + " @ " + millis());
  int w=300, h=300;
  HelpWindow = GWindow.getWindow(this, "HELP", (int)screenSize.getWidth()/2-w/2, (int)screenSize.getHeight()/2-h/2, w, h, JAVA2D);
  HelpWindow.noLoop();
  HelpWindow.addDrawHandler(this, "win_draw_HELP");
  label8 = new GLabel(HelpWindow, 10, 0, 90, 30);
  label8.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label8.setText("BOXCRYPT V0.2");
  label8.setTextBold();
  label8.setOpaque(false);
  label9 = new GLabel(HelpWindow, 110, 40, 80, 20);
  label9.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label9.setText("HELP");
  label9.setTextBold();
  label9.setOpaque(false);
  label10 = new GLabel(HelpWindow, 20, 90, 250, 170);
  label10.setTextAlign(GAlign.LEFT, GAlign.TOP);
  label10.setText("Click on open button and select the Image. Now you have two option custom key or generate key. Select one and click on encrypt. Now the image has been encrypted. Click on select location button and select a location. Enter file name in textField. Click on save. Done.");
  label10.setLocalColorScheme(GCScheme.CENTER);
  label10.setOpaque(false);
  HelpWindow.loop();
} //_CODE_:button4:686696:

public void encryptAbout(GButton source, GEvent event) { //_CODE_:button5:598525:
  println("button5 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:button5:598525:

public void GenerateKeyM(GButton source, GEvent event) { //_CODE_:GenerateKeyB:287958:
  println("GenerateKeyB - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:GenerateKeyB:287958:


public void imgButton1_click1(MyImageButton source, GEvent event) { //_CODE_:imgButton1:674185:
  println("imgButton1 - MyImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:imgButton1:674185:

public void button3_click1(GButton source, GEvent event) { //_CODE_:button3:584981:
  println("button3 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:button3:584981:
public void SelectKeyfile(GButton source, GEvent event) { //_CODE_:SelectKeyfileB:367895:
  println("SelectKeyfileB - GButton >> GEvent." + event + " @ " + millis());
  selectInput("Select a key file to process:", "keyfileSelected");
} //_CODE_:SelectKeyfileB:367895:


public void button8_click1(GButton source, GEvent event) { //_CODE_:button8:346835:
  println("button8 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:button8:346835:

public void DecAbout(GButton source, GEvent event) { //_CODE_:button7:313070:
  println("button7 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:button7:313070:

public void decryptDetailsMethod(GButton source, GEvent event) { //_CODE_:DecryptDetailsMethodB:771619:
  println("DecryptDetailsMethodB - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:DecryptDetailsMethodB:771619:

synchronized public void FolderSelectorWindowDraw(PApplet appc, GWinData data) { //_CODE_:FolderSelectorWindow:941761:
  appc.background(230);
} //_CODE_:FolderSelectorWindow:941761:

public void imgButton2_click1(MyImageButton source, GEvent event) { //_CODE_:imgButton2:842961:
  println("imgButton2 - MyImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:imgButton2:842961:


public void aboutSelectFolder(GButton source, GEvent event) { //_CODE_:aboutSelectFolderB:513175:
  println("aboutSelectFolderB - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:aboutSelectFolderB:513175:

public void FileName(GTextField source, GEvent event) { //_CODE_:FileNameT:544145:
  println("FileNameT - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:FileNameT:544145:

public void FolderSelector(GButton source, GEvent event) { //_CODE_:FolderSelctorB:221365:
  println("FolderSelctorB - GButton >> GEvent." + event + " @ " + millis());
  selectFolder("Select a Image to process:", "finalFolderSelected");
} //_CODE_:FolderSelctorB:221365:

public void Finish(GButton source, GEvent event) { //_CODE_:FinishB:738039:
  println("FinishB - GButton >> GEvent." + event + " @ " + millis());
  finalEncImage.save(FinalFolder.getAbsolutePath()+"\\"+FileNameT.getText()+".png");
  finalEncImage.save(FinalFolder.getAbsolutePath()+"\\"+FileNameT.getText()+".jpg");
  finalEncImage.save(FinalFolder.getAbsolutePath()+"\\"+FileNameT.getText()+".tiff");
} //_CODE_:FinishB:738039:

synchronized public void win_draw_ABOUT(PApplet appc, GWinData data) { //_CODE_:About:283925:
  appc.background(230);
} //_CODE_:About:283925:

synchronized public void win_draw_HELP(PApplet appc, GWinData data) { //_CODE_:HelpWindow:610835:
  appc.background(230);  
} //_CODE_:HelpWindow:610835:

synchronized public void win_draw_Details(PApplet appc, GWinData data) { //_CODE_:DetailsWindow:708242:
  appc.background(230);
} //_CODE_:DetailsWindow:708242:

public void imgButton3_click1(MyImageButton source, GEvent event) { //_CODE_:imgButton3:502882:
  println("imgButton3 - MyImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:imgButton3:502882:

public void button10_click1(GButton source, GEvent event) { //_CODE_:button10:738578:
  println("button10 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:button10:738578:

public void about(GButton source, GEvent event) { //_CODE_:aboutB:557993:
  println("aboutB - GButton >> GEvent." + event + " @ " + millis());
  int w=300, h=300;
  About = GWindow.getWindow(this, "About BoxCrypt V0.2", (int)screenSize.getWidth()/2-w/2, (int)screenSize.getHeight()/2-h/2, w, h, JAVA2D);
  About.noLoop();
  About.addDrawHandler(this, "win_draw_ABOUT");
  label5 = new GLabel(About, 10, 0, 90, 30);
  label5.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label5.setText("BOXCRYPT V0.2");
  label5.setTextBold();
  label5.setOpaque(false);
  label6 = new GLabel(About, 110, 40, 80, 20);
  label6.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label6.setText("ABOUT");
  label6.setTextBold();
  label6.setOpaque(false);
  label7 = new GLabel(About, 20, 90, 260, 190);
  label7.setTextAlign(GAlign.LEFT, GAlign.TOP);
  label7.setText(" Boxcrypt is a software which can  hide information behind images which may seem normal to eyes but with the help of special decrypter and key we can extract information hidden in it.  BOXCRYPT is Vikas Kumar's 5th semester project Build using processing a java based language  And gui build using g4p library.");
  label7.setTextBold();
  label7.setOpaque(false);
  About.loop();
} //_CODE_:aboutB:557993:


// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI() {
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("Sketch Window");
  encryptWindowB = new GButton(this, 80, 50, 240, 140);
  encryptWindowB.setText("HIDE DATA");
  encryptWindowB.setTextBold();
  encryptWindowB.addEventHandler(this, "encryptWindowOpener");
  decryptWindowB = new GButton(this, 80, 220, 240, 140);
  decryptWindowB.setText("UNHIDE DATA");
  decryptWindowB.setTextBold();
  decryptWindowB.addEventHandler(this, "decryptWindowOpener");
  label1 = new GLabel(this, 160, 10, 110, 30);
  label1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1.setText("BOXCRYPT v 0.2");
  label1.setTextBold();
  label1.setOpaque(false);
  aboutB = new GButton(this, 320, 370, 70, 20);
  aboutB.setText("ABOUT");
  aboutB.addEventHandler(this, "about");
}


synchronized public void SelectTxtFileWindowOpenner(PApplet appc, GWinData data) { //_CODE_:SelectTxtFileWindow:373171:
  appc.background(230);
} //_CODE_:SelectTxtFileWindow:373171:

public void selectDocFileM(GButton source, GEvent event) { //_CODE_:selectTxtFile:347145:
  println("selectTxtFile - GButton >> GEvent." + event + " @ " + millis());
  selectInput("Select file to hide:", "docfileSelected");
} //_CODE_:selectTxtFile:347145:


public void encryptStartM(GButton source, GEvent event) { //_CODE_:start:899926:
  //------------->function where actual processing happens<----------------------
  println("start - GButton >> GEvent." + event + " @ " + millis());
  String[] lines = loadStrings(doc);
  println("there are " + lines.length + " lines");
  println(lines[2].getClass());
  //if condition file size
  println("a========");
  int count=0;
  for (int i = 0; i < lines.length; i++) {
    for (int j = 0; j < lines[i].length(); j++) {
      //(int)lines[i].charAt(j);
      count++;
    }
  }
  //PImage is use beacuse File type cant be use to determine the width and heaight of the image
  PImage imgOriginal=loadImage(image.getAbsolutePath());
  PImage img=createImage(imgOriginal.width, imgOriginal.height, RGB); 
  img=imgOriginal.get();
  int o=0;
  if (count>img.width*img.height) {
    //EXCEPTION CHOOSE LARGER IMAGE
    println("Choose a larger image.");
    int w=240, h=120;
    errorChooseLargerPic = GWindow.getWindow(this, "Window title", (int)screenSize.getWidth()/2-w/2, (int)screenSize.getHeight()/2-h/2, w, h, JAVA2D);
    errorChooseLargerPic.noLoop();
    errorChooseLargerPic.addDrawHandler(this, "win_draw1");
    ChooseLargerImageL = new GLabel(errorChooseLargerPic, 1, 5, 236, 32);
    ChooseLargerImageL.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
    ChooseLargerImageL.setText("Please choose a larger image than that.");
    ChooseLargerImageL.setTextBold();
    ChooseLargerImageL.setOpaque(false);
    label14 = new GLabel(errorChooseLargerPic, 3, 30, 234, 89);
    label14.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
    label14.setText("The image is used to store data so the no of pixels should be greater than the characters in the data file");
    label14.setOpaque(false);
    label15 = new GLabel(errorChooseLargerPic, 145, 88, 94, 31);
    label15.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
    label15.setText("press cross to close");
    label15.setTextBold();
    label15.setOpaque(false);
    errorChooseLargerPic.loop();
  } else {
    //actual hidding process
    img.loadPixels();

    //ACTUAL DATA INSERTION
    int va;
    for (int i = 0; i < lines.length; i++) {
      for (int j = 0; j < lines[i].length(); j++) {
        va=(int)lines[i].charAt(j);
        //img.pixels[o++]=color(255,255,0);
        img.pixels[o++]=color(va, va, va);
        println("------"+(char)va+"=="+(char)red(img.pixels[o-1]));
        //img.pixels[o++]=color(red(img.pixels[o]), green(img.pixels[o]), blue(img.pixels[o]));
        //img.pixels[o++]=color((int)lines[i].charAt(j));
      }
      va=(int)'\n';
      println("back slash"+va);
      img.pixels[o++]=color(va, va, va);
    }

    //END OF FILE SEQUENCE INCLUDEING FILE NAME
    String endOfFileSeq="eofs";//"endOfFileSeqUENCE";
    int valueIs=0;
    for (int i=0; i<endOfFileSeq.length(); i++) {
      valueIs=(int)endOfFileSeq.charAt(i);
      img.pixels[o++]=color(valueIs, valueIs, valueIs);
    }
    println("aaaa");
    String endOfDataSeq="eods";//END OF DATA SEQUENCE
    //file name storage
    String fileName=doc.getName();
    for (int i=0; i<fileName.length(); i++) {
      valueIs=(int)fileName.charAt(i);
      img.pixels[o++]=color(valueIs, valueIs, valueIs);
    }
    for (int i=0; i<endOfDataSeq.length(); i++) {
      valueIs=(int)endOfDataSeq.charAt(i);
      img.pixels[o++]=color(valueIs, valueIs, valueIs);
    }

    //linux
    //img.updatePixels();
    //img.save("/home/vikas/Desktop/new/new.png");
    //img.save("/home/vikas/Desktop/new/new.jpg");
    //img.save("/home/vikas/Desktop/new/new.tiff");
    ////windows
    finalEncImage=img;
    /*img.save("\\temp\\new.png");
    img.save("\\temp\\new.jpg");
    img.save("\\temp\\new.tiff");*/
    EncryptSuccesfullWindow = GWindow.getWindow(this, "Encryption sucessfull", 0, 0, 240, 120, JAVA2D);
    EncryptSuccesfullWindow.noLoop();
    EncryptSuccesfullWindow.addDrawHandler(this, "encryptSuccesfullM");
    SuccessfullyDoneL = new GLabel(EncryptSuccesfullWindow, 20, 11, 182, 45);
    SuccessfullyDoneL.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
    SuccessfullyDoneL.setText("Successfully done.");
    SuccessfullyDoneL.setTextBold();
    SuccessfullyDoneL.setOpaque(false);
    EncryptionCloseB = new GButton(EncryptSuccesfullWindow, 75, 71, 80, 30);
    EncryptionCloseB.setText("Close");
    EncryptionCloseB.setTextBold();
    EncryptionCloseB.addEventHandler(this, "encryptionCloseM");
    EncryptSuccesfullWindow.loop();
  }
} //_CODE_:start:899926:

public void decryptMain(GButton source, GEvent event) { //_CODE_:button6:929661:
  println("button6 - GButton >> GEvent." + event + " @ " + millis());
  //This method is responsible for the dycription process
  //This fuction also save the file
  PImage img=loadImage(image.getAbsolutePath());
  img.loadPixels();
  PrintWriter output;
  PrintWriter outputFinal;
  output = createWriter("temp.txt");
  int i=0;
  println("dycription starts..");
  char ch;
  while (i<img.width*img.height) {
    ch=(char)red(img.pixels[i]);
    if (ch=='e' && (char)red(img.pixels[i+1])=='o' && (char)red(img.pixels[i+2])=='f' && (char)red(img.pixels[i+3])=='s')break;

    //create file and store ch in it
    if ((int)ch!=153 && (int)ch!=0)
      if (ch!='ÿ' && ch!='í')
        println(ch+" "+i+"  "+(int)ch);

    output.print(ch);
    i++;
  }
  i=i+4;
  StringBuffer s=new StringBuffer("");
  while (i<img.width*img.height) {
    ch=(char)red(img.pixels[i]);
    if (ch=='e' && (char)red(img.pixels[i+1])=='o' && (char)red(img.pixels[i+2])=='d' && (char)red(img.pixels[i+3])=='s')break;
    s.append(ch);
    //create file and store ch in it
    if (ch!='ÿ' && ch!='í')
      println(ch+" "+i+"  "+(int)ch);
    //output.print(ch);
    i++;
  }
  output.flush(); // Writes the remaining data to the file
  output.close();
  outputFinal = createWriter("\\temp\\"+s.toString());
  String[] lines = loadStrings("temp.txt");
  for (int k = 0; k < lines.length; k++) {
    for (int j = 0; j < lines[k].length(); j++) {
      outputFinal.print(lines[k].charAt(j));
    }
  }
  outputFinal.flush(); // Writes the remaining data to the file
  outputFinal.close();
  DecryptSuccesfullWindow = GWindow.getWindow(this, "Decryption Successfull", 0, 0, 240, 120, JAVA2D);
  DecryptSuccesfullWindow.noLoop();
  DecryptSuccesfullWindow.addDrawHandler(this, "decryptSuccessfullM");
  DecryptionDoneL = new GLabel(DecryptSuccesfullWindow, 10, 17, 216, 38);
  DecryptionDoneL.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  DecryptionDoneL.setText("Decryption Done. File name is");
  DecryptionDoneL.setTextBold();
  DecryptionDoneL.setOpaque(false);
  DecOutputFileL = new GLabel(DecryptSuccesfullWindow, 47, 50, 136, 33);
  DecOutputFileL.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  DecOutputFileL.setText("temp.txt");
  DecOutputFileL.setTextBold();
  DecOutputFileL.setOpaque(false);
  DecryptWindowCloseB = new GButton(DecryptSuccesfullWindow, 80, 81, 80, 30);
  DecryptWindowCloseB.setText("Close");
  DecryptWindowCloseB.setTextBold();
  DecryptWindowCloseB.addEventHandler(this, "DecryptWindowCloseM");
  DecryptSuccesfullWindow.loop();
} //_CODE_:button6:929661:

synchronized public void encryptSuccesfullM(PApplet appc, GWinData data) { //_CODE_:EncryptSuccesfullWindow:768108:
  appc.background(230);
} //_CODE_:EncryptSuccesfullWindow:768108:

public void encryptionCloseM(GButton source, GEvent event) { //_CODE_:EncryptionCloseB:356018:
  println("EncryptionCloseB - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:EncryptionCloseB:356018:

synchronized public void decryptSuccessfullM(PApplet appc, GWinData data) { //_CODE_:DecryptSuccesfullWindow:953764:
  appc.background(230);
} //_CODE_:DecryptSuccesfullWindow:953764:

public void DecryptWindowCloseM(GButton source, GEvent event) { //_CODE_:DecryptWindowCloseB:369881:
  println("DecryptWindowCloseB - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:DecryptWindowCloseB:369881:


synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:errorChooseLargerPic:301995:
  appc.background(230);
} //_CODE_:errorChooseLargerPic:301995:

// Variable declarations 
// autogenerated do not edit
GWindow errorChooseLargerPic;
GLabel ChooseLargerImageL; 
GLabel label14; 
GLabel label15; 
GButton encryptWindowB; 
GButton decryptWindowB; 
GLabel label1; 
GButton aboutB; 
GWindow encryptWindow;
GWindow SelectTxtFileWindow;
MyImageButton imgB; 
GButton encryptDetailsB; 
GButton chooseImageB; 
GButton saveB; 
GButton button2; 
GButton customKeyB; 
GLabel label2; 
GButton button4; 
GButton button5; 
GButton GenerateKeyB; 
GWindow decrypterWindow;
GButton button1; 
MyImageButton imgButton1; 
GButton button3; 
GButton SelectKeyfileB; 
GButton button6; 
GButton button8; 
GButton button7; 
GButton button9; 
GButton DecryptDetailsMethodB; 
GLabel label3; 
GWindow FolderSelectorWindow;
MyImageButton imgButton2; 
GButton helpSelectB; 
GButton aboutSelectFolderB; 
GLabel label4; 
GTextField FileNameT; 
GButton FolderSelctorB; 
GLabel FolderLocation; 
GButton FinishB; 
GWindow About;
GLabel label5;
GLabel label6;
GLabel label7;
GWindow HelpWindow;
GLabel label8; 
GLabel label9; 
GLabel label10; 
GWindow DetailsWindow;
MyImageButton imgButton3; 
GButton button10; 
GLabel label11; 
GLabel ResolutionL; 
GLabel label12; 
GLabel label13;
GButton selectTxtFile; 
GButton start;
//Variables for successfull window
GWindow EncryptSuccesfullWindow;
GLabel SuccessfullyDoneL; 
GButton EncryptionCloseB; 
GWindow DecryptSuccesfullWindow;
GLabel DecryptionDoneL; 
GLabel DecOutputFileL; 
GButton DecryptWindowCloseB; 
