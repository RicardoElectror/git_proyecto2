`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:44:31 09/22/2016 
// Design Name: 
// Module Name:    instanciacion_vga_2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module instanciacion_vga_2(input wire CLK_TB, RESET_TB, activring_TB, bandera_TB_hh, bandera_TB_mh, bandera_TB_sh, bandera_TB_df,
    input wire bandera_TB_mf, bandera_TB_af, bandera_TB_hc, bandera_TB_mc, bandera_TB_sc, 
	 input wire [3:0] numero, 
	 output wire v_sync, h_sync,
	 output wire [3:0] text_on_out,
	 output wire [2:0] text_rgb_out
	 );
	 
	 wire videoon, vsync, hsync;
	 wire [9:0] pixx, pixy;
	 wire [3:0] text_on;
	 wire [2:0] text_rgb;
	 
	 
// Instantiate the module
Sincronizacion instance_name (
    .clk(CLK_TB), 
    .reset(RESET_TB), 
    .hsync(hsync), 
    .vsync(vsync), 
    .video_on(videoon), 
    .p_tick(), 
    .pixel_x(pixx), 
    .pixel_y(pixy)
    );


// Instantiate the module
vga_interfaz instance_name2 (
    .clk(CLK_TB), 
    .activring(activring_TB), 
    .bandera_Hhora(bandera_TB_hh), 
    .bandera_Mhora(bandera_TB_mh), 
    .bandera_Shora(bandera_TB_sh), 
    .bandera_Dfecha(bandera_TB_df), 
    .bandera_Mfecha(bandera_TB_mf), 
    .video_on(videoon), 
    .bandera_Afecha(bandera_TB_af), 
    .bandera_Hcrono(bandera_TB_hc), 
    .bandera_Mcrono(bandera_TB_mc), 
    .bandera_Scrono(bandera_TB_sc), 
    .hora1(numero), 
    .hora2(numero), 
    .min1(numero), 
    .min2(numero), 
    .sec1(numero), 
    .sec2(numero), 
    .dia1(numero), 
    .dia2(numero), 
    .mes1(numero), 
    .mes2(numero), 
    .ano1(numero), 
    .ano2(numero), 
    .ch1(numero), 
    .ch2(numero), 
    .cm1(numero), 
    .cs1(numero), 
    .cs2(numero), 
    .cm2(numero), 
    .pix_x(pixx), 
    .pix_y(pixy), 
    .text_on(text_on), 
    .text_rgb(text_rgb)
    );

assign v_sync = vsync;
assign h_sync = hsync;
assign text_on_out = text_on;
assign text_rgb_out = text_rgb;


endmodule
