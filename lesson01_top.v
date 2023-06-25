//lesson01_top.v
//Esta primera lección explora los piezas fundamentales
//del diseño digital, las puertas lógicas. Se trata de funciones
//cuyos operandos solo puede tomar dos valores o estados, verdadero "1", o
//falso "0". El resultado de estas funciones solo puede tomar
//uno de estos valores también. Por esto tambien se le denomina
//lógica binaria.
//Material del Workshop: "Como crear tu propio juego Arcade (y sobrevivir al intento)"

`include "simular_pulsaciones_botones.v"

module lesson01_top (
  input wire clk,
  input wire reset,
  //output wire [3:0] video_r,
  //output wire [3:0] video_g,
  //output wire [3:0] video_b,
  //output wire csync
  output wire boton1,
  output wire boton2,
  output wire logic_gate_OR,
  output wire logic_gate_AND,
  output wire logic_gate_NOT,
  output wire logic_gate_NAND,
  output wire logic_gate_NOR,
  output wire logic_gate_XOR,
  output wire logic_gate_XNOR
);
  
  //Vamos a crear un circuito con dos interruptores como entrada,
  //Vamos a aplicar varias puertas logicas a estas entradas y ver que 
  //salida producen
  //wire boton1, boton2;
  
  reg [1:0] cnt;
  
  //logica para simular las posibles combinaciones de pulsaciones de 
  //los dos botones
  simular_pulsaciones_botones spb(
    .clk(clk),
    .boton1(boton1),
    .boton2(boton2)
  );
  /////////////////////////////////////
  
  
  assign logic_gate_OR = boton1 | boton2;     //Puerta lógica OR
  assign logic_gate_AND = boton1 & boton2;    //Puerta lógica AND
  assign logic_gate_XOR = boton1 ^ boton2;    //Puerta lógica XOR o OR exclusiva 
  assign logic_gate_NOT = ~boton1;            //Puerta lógica NOT, solo un operando
  assign logic_gate_NAND = ~(boton1 & boton2);//Puerta lógica NAND o AND invertida
  assign logic_gate_NOR = ~(boton1 | boton2); //Puerta lógica NOR o OR invertida
  assign logic_gate_XNOR = ~(boton1 ^ boton2);//Puerta lógica XNOR o NOR exclusiva
  
  //si se conectara cada una de las salidas a un diodo LED se podría visualizar las
  //acciones de los botones en los LED.
endmodule
  
