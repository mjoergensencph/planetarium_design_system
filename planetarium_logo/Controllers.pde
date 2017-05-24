void controllers() {
  
  //Laver font til controllers
  PFont controlfont;
  controlfont = createFont("Avenir", 10, false);
  ControlFont font = new ControlFont(controlfont);

  //Laver knapperne. Tre bangs og fire sliders
  cp5 = new ControlP5(this); 

  //Knap til at lave ny
  cp5.addBang("bang")
    .setPosition(80, 50)
    .setSize(40, 40)
    .setTriggerEvent(Bang.RELEASE)
    .setFont(font)
    .setLabel("Make new")
    ;

  //Knap til at gemme .svg
  cp5.addBang("bang1")
    .setPosition(160, 50)
    .setSize(40, 40)
    .setTriggerEvent(Bang.RELEASE)
    .setFont(font)
    .setLabel("Save .svg")
    ;

  //Knap til at gemme .png
  cp5.addBang("bang2")
    .setPosition(240, 50)
    .setSize(40, 40)
    .setTriggerEvent(Bang.RELEASE)
    .setFont(font)
    .setLabel("Save .png")
    ;

  //Slider til rød farve
  cp5.addSlider("tekstFarveR")
    .setPosition(360, 50)
    .setSize(200, 40)
    .setRange(0, 255)
    .setValue(255)
    .setColorForeground(sliderColorR1)
    .setColorBackground(sliderColorR)
    .setColorActive(sliderColorR1)
    .setFont(font)
    .setLabel("Red color")
    .setSliderMode(Slider.FLEXIBLE)
    .setNumberOfTickMarks(5)
    ;

  //Slider til grøn farve
  cp5.addSlider("tekstFarveG")
    .setPosition(660, 50)
    .setSize(200, 40)
    .setRange(0, 255)
    .setValue(255)
    .setColorForeground(sliderColorG1)
    .setColorBackground(sliderColorG)
    .setColorActive(sliderColorG1)
    .setFont(font)
    .setLabel("Green color")
    .setSliderMode(Slider.FLEXIBLE)
    .setNumberOfTickMarks(5)
    ;

  //Slider til blå farve
  cp5.addSlider("tekstFarveB")
    .setPosition(960, 50)
    .setSize(200, 40)
    .setRange(0, 255)
    .setValue(255)
    .setColorForeground(sliderColorB1)
    .setColorBackground(sliderColorB)
    .setColorActive(sliderColorB1)
    .setFont(font)
    .setLabel("Blue color")
    .setSliderMode(Slider.FLEXIBLE)
    .setNumberOfTickMarks(5)
    ;

  //Slider til alpha
  cp5.addSlider("tekstFarveA")
    .setPosition(1260, 50)
    .setSize(200, 40)
    .setRange(0, 255)
    .setValue(130)
    .setFont(font)
    .setLabel("Alpha")
    .setNumberOfTickMarks(5)
    ;

  //Omarrangere labels på knapperne.
  cp5.getController("bang").getCaptionLabel().align(ControlP5.CENTER, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);
  cp5.getController("bang1").getCaptionLabel().align(ControlP5.CENTER, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);
  cp5.getController("bang2").getCaptionLabel().align(ControlP5.CENTER, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);
  cp5.getController("tekstFarveR").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);
  cp5.getController("tekstFarveR").getCaptionLabel().getStyle().setMargin(4,0,0,0);
  cp5.getController("tekstFarveG").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);
  cp5.getController("tekstFarveG").getCaptionLabel().getStyle().setMargin(4,0,0,0);
  cp5.getController("tekstFarveB").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);
  cp5.getController("tekstFarveB").getCaptionLabel().getStyle().setMargin(4,0,0,0);
  cp5.getController("tekstFarveA").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);
  cp5.getController("tekstFarveA").getCaptionLabel().getStyle().setMargin(4,0,0,0);
}