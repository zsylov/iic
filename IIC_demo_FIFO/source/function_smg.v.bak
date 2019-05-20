module function_module(
							input clk,
							input rst_n,
							input [23:0] idata,
							output [9:0] odata
						);
	parameter T100US = 13'd5000;					
	reg [3:0] i;
	reg [12:0] C1;
	reg [3:0] D1;
	reg [5:0] D2;
	
always @ ( posedge clk , negedge rst_n)
	if(!rst_n)
		begin
			i <= 4'd0;
			C1 <= 13'd0;
			D1 <= 4'd0;
			D2 <= 6'd0;
		end
	else
		case(i)
			0:
				if(C1==T100US-1)
					begin
						C1 <= 13'd0;
						i <= i +1'b1;
					end
				else 
					begin
						C1 <= C1 + 1'b1;
						D1 <= idata[23:20];
						D2 <= 6'b111_110;
					end
			1:
				if(C1==T100US-1)
					begin
						C1 <= 13'd0;
						i <= i +1'b1;
					end
				else 
					begin
						C1 <= C1 + 1'b1;
						D1 <= idata[19:16];
						D2 <= 6'b111_101;
					end
			2:
				if(C1==T100US-1)
					begin
						C1 <= 13'd0;
						i <= i +1'b1;
					end
				else 
					begin
						C1 <= C1 + 1'b1;
						D1 <= idata[15:12];
						D2 <= 6'b111_011;
					end
			3:
				if(C1==T100US-1)
					begin
						C1 <= 13'd0;
						i <= i +1'b1;
					end
				else 
					begin
						C1 <= C1 + 1'b1;
						D1 <= idata[11:8];
						D2 <= 6'b110_111;
					end
			4:
				if(C1==T100US-1)
					begin
						C1 <= 13'd0;
						i <= i +1'b1;
					end
				else 
					begin
						C1 <= C1 + 1'b1;
						D1 <= idata[7:4];
						D2 <= 6'b101_111;
					end
			5:
				if(C1==T100US-1)
					begin
						C1 <= 13'd0;
						i <= i +1'b1;
					end
				else 
					begin
						C1 <= C1 + 1'b1;
						D1 <= idata[3:0];
						D2 <= 6'b011_111;
					end
		endcase
		
assign odata = {D1,D2};
endmodule
