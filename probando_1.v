`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:35:14 09/22/2016
// Design Name:   instanciacion_vga_2
// Module Name:   C:/.Xilinx/prueba_testbench_proy2/probando_1.v
// Project Name:  prueba_testbench_proy2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: instanciacion_vga_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module probando_1;

	// Inputs
	reg CLK_TB;
	reg RESET_TB;
	reg activring_TB;
	reg bandera_TB_hh;
	reg bandera_TB_mh;
	reg bandera_TB_sh;
	reg bandera_TB_df;
	reg bandera_TB_mf;
	reg bandera_TB_af;
	reg bandera_TB_hc;
	reg bandera_TB_mc;
	reg bandera_TB_sc;
	reg [3:0] numero;

	// Outputs
	wire v_sync;
	wire h_sync;
	wire [3:0] text_on_out;
	wire [2:0] text_rgb_out;

	// Instantiate the Unit Under Test (UUT)
	instanciacion_vga_2 uut (
		.CLK_TB(CLK_TB), 
		.RESET_TB(RESET_TB), 
		.activring_TB(activring_TB), 
		.bandera_TB_hh(bandera_TB_hh), 
		.bandera_TB_mh(bandera_TB_mh), 
		.bandera_TB_sh(bandera_TB_sh), 
		.bandera_TB_df(bandera_TB_df), 
		.bandera_TB_mf(bandera_TB_mf), 
		.bandera_TB_af(bandera_TB_af), 
		.bandera_TB_hc(bandera_TB_hc), 
		.bandera_TB_mc(bandera_TB_mc), 
		.bandera_TB_sc(bandera_TB_sc), 
		.numero(numero), 
		.v_sync(v_sync), 
		.h_sync(h_sync), 
		.text_on_out(text_on_out), 
		.text_rgb_out(text_rgb_out)
	);

	initial begin
		// Initialize Inputs
		CLK_TB = 0;
		RESET_TB = 0;
		activring_TB = 0;
		bandera_TB_hh = 0;
		bandera_TB_mh = 0;
		bandera_TB_sh = 0;
		bandera_TB_df = 0;
		bandera_TB_mf = 0;
		bandera_TB_af = 0;
		bandera_TB_hc = 0;
		bandera_TB_mc = 0;
		bandera_TB_sc = 0;
		numero = 0;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// se hace un clear inicial a todas las senales
      RESET_TB = 1; 
		
		#100;
		RESET_TB = 0;
		
		//damos un numero a escribir aleatoreamente este sera dado por el rtc en el futuro
		#100; 
		numero= 4'b1000;
		
		//activamos los cursores de hora minutos y segundos para poder observar estos valores en color rojo 
		//este color sera cuando se encuentre cambiando respectivamente las horas los min o los seg
		#100;
		activring_TB =1;
		bandera_TB_sc = 1;
		
		end
	
		//generacion de CLK de 50MHz
      always  begin
		#5	CLK_TB= ~CLK_TB;
		end 
	
      
endmodule

