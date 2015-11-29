void declaringControls(){
  cp1 = new ControlP5(this);
  cp2 = new ControlP5(this);
  cp3 = new ControlP5(this);
  cp4 = new ControlP5(this);
  cp5 = new ControlP5(this);
  cp6 = new ControlP5(this);
  cp7 = new ControlP5(this);
  cpR = new ControlP5(this);
  //cp9 = new ControlP5(this);
}

void creatingControls(){
  pfont = createFont("Arial",int(0.04*height),true); // use true/false for smooth/no-smooth
  ControlFont font = new ControlFont(pfont,int(0.04*height));
  
  //Crea los botones para la página inicial
  cp1.addButton("Registrarse").setPosition(0.5*width-(0.375*width),0.2*height).setSize(int(0.75*width),int(0.08*height));
  cp1.addButton("Ingresar").setPosition(0.5*width-(0.375*width),0.3*height).setSize(int(0.75*width),int(0.08*height));
      
  cp1.getController("Registrarse").getCaptionLabel().setFont(font).toUpperCase(false);
  cp1.getController("Ingresar").getCaptionLabel().setFont(font) .toUpperCase(false);
  
  //Crea los botones para la página de registro
  cp2.addTextfield("Nombre").setPosition(0.05*width, 0.05*height).setSize(int(0.75*width),int(0.06*height)).setFont(font).setAutoClear(true);
  cp2.addTextfield("Apellidos").setPosition(0.05*width, 0.15*height).setSize(int(0.75*width),int(0.06*height)).setFont(font).setAutoClear(true);
  cp2.addTextfield("Documento de Identidad").setPosition(0.05*width, 0.25*height).setSize(int(0.75*width),int(0.06*height)).setFont(font).setAutoClear(true);
  cp2.addTextfield("Dia").setPosition(0.05*width, 0.35*height).setSize(int(0.25*width),int(0.06*height)).setFont(font).setAutoClear(true);
  cp2.addTextfield("Mes").setPosition(0.32*width, 0.35*height).setSize(int(0.25*width),int(0.06*height)).setFont(font).setAutoClear(true);
  cp2.addTextfield("Año").setPosition(0.59*width, 0.35*height).setSize(int(0.25*width),int(0.06*height)).setFont(font).setAutoClear(true);
  cp2.addTextfield("Contraseña").setPosition(0.05*width, 0.45*height).setSize(int(0.25*width),int(0.06*height)).setFont(font).setAutoClear(true);
  cp2.addButton("Registrar").setPosition(0.05*width,0.55*height).setSize(int(0.42*width),int(0.05*height));
    
  cp2.getController("Registrar").getCaptionLabel().setFont(font) .toUpperCase(false);
  cp2.getController("Documento de Identidad").getCaptionLabel().setFont(font).setSize(int(0.02*height)).toUpperCase(false);
  cp2.getController("Nombre").getCaptionLabel().setFont(font).setSize(int(0.02*height)).toUpperCase(false);
  cp2.getController("Apellidos").getCaptionLabel().setFont(font).setSize(int(0.02*height)).toUpperCase(false);
  cp2.getController("Dia").getCaptionLabel().setFont(font).setSize(int(0.02*height)).toUpperCase(false);
  cp2.getController("Mes").getCaptionLabel().setFont(font).setSize(int(0.02*height)).toUpperCase(false);
  cp2.getController("Año").getCaptionLabel().setFont(font).setSize(int(0.02*height)).toUpperCase(false);
  cp2.getController("Contraseña").getCaptionLabel().setFont(font).setSize(int(0.02*height)).toUpperCase(false);
  
  //Crea los botones para la página de Ingreso
  cp3.addTextfield("Documento").setPosition(0.125*width, 0.33*height).setSize(int(0.75*width),int(0.06*height)).setFont(font).setAutoClear(true);
  cp3.addTextfield("Contraseña").setPosition(0.125*width, 0.43*height).setSize(int(0.75*width),int(0.06*height)).setFont(font).setAutoClear(true);
  cp3.addButton("IngresarP").setCaptionLabel("Ingresar").setPosition(0.455*width,0.53*height).setSize(int(0.42*width),int(0.05*height));
    
  cp3.getController("Documento").getCaptionLabel().setFont(font).setSize(int(0.02*height)).toUpperCase(false);
  cp3.getController("Contraseña").getCaptionLabel().setFont(font).setSize(int(0.02*height)).toUpperCase(false);
  cp3.getController("IngresarP").getCaptionLabel().setFont(font).toUpperCase(false);
  
  //Crea los botones para la página del perfil
  cp4.addButton("Modificar").setLabel("Modificar datos").setValue(128).setPosition(0.5*width-(0.375*width),0.3*height).setSize(int(0.75*width),int(0.08*height));
  cp4.addButton("Ver").setLabel("Ver datos").setValue(128).setPosition(0.5*width-(0.375*width),0.4*height).setSize(int(0.75*width),int(0.08*height));
  cp4.addButton("Date").setLabel("Pedir cita").setValue(128).setPosition(0.5*width-(0.375*width),0.5*height).setSize(int(0.75*width),int(0.08*height));

  cp4.getController("Modificar").getCaptionLabel().setFont(font).toUpperCase(false);
  cp4.getController("Ver").getCaptionLabel().setFont(font) .toUpperCase(false);
  cp4.getController("Date").getCaptionLabel().setFont(font) .toUpperCase(false);
  
  //Crea los campos de texto para la visualización de los datos
  nombre = cp5.addTextarea("Nombre").setPosition(0.05*width, 0.05*height).setSize(int(0.75*width),int(0.06*height)).setFont(font);
  documento = cp5.addTextarea("Documento").setPosition(0.05*width, 0.12*height).setSize(int(0.75*width),int(0.06*height)).setFont(font);
  nacimiento = cp5.addTextarea("Fecha de nacimiento").setPosition(0.05*width, 0.19*height).setSize(int(0.75*width),int(0.06*height)).setFont(font);
  especialidad = cp5.addTextarea("Especialidad").setPosition(0.05*width, 0.26*height).setSize(int(0.75*width),int(0.06*height)).setFont(font);
  
  //Crea los campos de texto para poder cambiar los datos
  mNombre = cp6.addTextfield("Nombre").setPosition(0.05*width, 0.05*height).setSize(int(0.75*width),int(0.06*height)).setFont(font).setAutoClear(true);
  mApellidos = cp6.addTextfield("Apellidos").setPosition(0.05*width, 0.15*height).setSize(int(0.75*width),int(0.06*height)).setFont(font).setAutoClear(true);
  mDocumento = cp6.addTextfield("Documento de Identidad").setPosition(0.05*width, 0.25*height).setSize(int(0.75*width),int(0.06*height)).setFont(font).setAutoClear(true);
  mDia = cp6.addTextfield("Dia").setPosition(0.05*width, 0.35*height).setSize(int(0.25*width),int(0.06*height)).setFont(font).setAutoClear(true);
  mMes = cp6.addTextfield("Mes").setPosition(0.32*width, 0.35*height).setSize(int(0.25*width),int(0.06*height)).setFont(font).setAutoClear(true);
  mAnio = cp6.addTextfield("Año").setPosition(0.59*width, 0.35*height).setSize(int(0.25*width),int(0.06*height)).setFont(font).setAutoClear(true);
  mContra = cp6.addTextfield("Contraseña").setPosition(0.05*width, 0.45*height).setSize(int(0.25*width),int(0.06*height)).setFont(font).setAutoClear(true);
  cp6.addButton("Guardar").setPosition(0.05*width,0.55*height).setSize(int(0.42*width),int(0.05*height));
    
  cp6.getController("Guardar").getCaptionLabel().setFont(font) .toUpperCase(false);
  cp6.getController("Documento de Identidad").getCaptionLabel().setFont(font).setSize(int(0.02*height)).toUpperCase(false);
  cp6.getController("Nombre").getCaptionLabel().setFont(font).setSize(int(0.02*height)).toUpperCase(false);
  cp6.getController("Apellidos").getCaptionLabel().setFont(font).setSize(int(0.02*height)).toUpperCase(false);
  cp6.getController("Dia").getCaptionLabel().setFont(font).setSize(int(0.02*height)).toUpperCase(false);
  cp6.getController("Mes").getCaptionLabel().setFont(font).setSize(int(0.02*height)).toUpperCase(false);
  cp6.getController("Año").getCaptionLabel().setFont(font).setSize(int(0.02*height)).toUpperCase(false);
  cp6.getController("Contraseña").getCaptionLabel().setFont(font).setSize(int(0.02*height)).toUpperCase(false);
  
  //Crea las listas para la selección del doctor
  cp7.addScrollableList("Especialidad").setPosition(0.05*width,0.05*height).setSize(int(0.25*width),int(0.3*height)).setBarHeight(int(0.06*height)).setItemHeight(int(0.06*height));
  cp7.addScrollableList("Doctores").setPosition(0.32*width,0.05*height).setSize(int(0.5*width),int(0.3*height)).setBarHeight(int(0.06*height)).setItemHeight(int(0.06*height)).setVisible(false);
  cp7.addScrollableList("toDowithDoctor").setLabel("¿Qué desea hacer?").setPosition(0.84*width,0.05*height).setSize(int(0.25*width),int(0.3*height)).setBarHeight(int(0.06*height)).setItemHeight(int(0.06*height)).setVisible(false);
  
  cp7.getController("Especialidad").getCaptionLabel().setFont(font).toUpperCase(false);
  cp7.getController("Doctores").getCaptionLabel().setFont(font).toUpperCase(false);
  cp7.getController("toDowithDoctor").getCaptionLabel().setFont(font).toUpperCase(false);
  
  cpR.addButton("Regresar").setPosition(0.5625*width,0.93*height).setSize(int(0.42*width),int(0.05*height));
  cpR.getController("Regresar").getCaptionLabel().setFont(font).toUpperCase(false);
}

void clearcp3(){
  cp3.get(Textfield.class,"Documento").clear();
  cp3.get(Textfield.class,"Contraseña").clear();
}