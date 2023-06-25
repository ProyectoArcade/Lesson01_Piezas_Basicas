//simular_pulsaciones_botones.v
//Para el Workshop Crea tu propio juego Arcade (y como sobrevivir al intento)
module simular_pulsaciones_botones(
  input wire clk,
  output wire boton1,
  output wire boton2
)
  reg [1:0] cnt;
  
  //logica para simular las posibles combinaciones de pulsaciones de 
  //los dos botones
  always @(posedge clk) begin
    cnt <= cnt + 2'b01;
  end
  assign boton1 = cnt[0];
  assign boton2 = cnt[1];
endmodule
