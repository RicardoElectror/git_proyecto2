`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:59:40 09/21/2016 
// Design Name: 
// Module Name:    indicador_ring 
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
module indicador_ring(
	input alarma_on;
	input wire [7:0] H, M, S,
	input wire [7:0] HRTC, MRTC, SRTC,
	output wire activring,
    );
	 
reg [3:0] hora1, hora2, min1, min2, seg1, seg2,
	
	always @ *
		begin 
		if (alarma_on)
			begin
			if(hora1==0 && hora2==0 && min1==0 && min2==0 && seg1==0 && seg2==0)
				actiring==1;
			else
				begin
				hora1 = H[7:4] - HRTC[7:4];
				hora2 = H[3:0] - HRTC[3:0];
				min1  = M[7:4] - MRTC[7:4];
				min2  = M[3:0] - MRTC[3:0];
				seg1  = S[7:4] - SRTC[7:4];
				seg2  = S[3:0] - SRTC[3:0];
				end
			end
		else
			activring = 0;

endmodule
