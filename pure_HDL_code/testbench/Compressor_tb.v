`timescale 1ns/1ns
// 	input 																			clk,
// 	input 																			reset, 
// 	input 																			wrt_en,
// 	input 	[`DATA_WIDTH * `NUM_DATA - 1 	: 0] 	data_in,
// 	input 																			tvalid,
// 	input																				tlast,
// 	output																			tready,
// 	output	[`DATA_WIDTH * `NUM_DATA - 1 	: 0]	data_out
	
module Compressor_tb;
	
	reg 										clk;
	reg											reset;
	reg 	[32 * 8 - 1 : 0]	data_in;
	reg											tvalid_in;
	reg											tlast_in;
	reg											tready_in;
	reg		[32     - 1 : 0]	tkeep_in;
	wire  [32 * 8 - 1 : 0]  data_out;
	wire										tvalid_out;
	wire										tlast_out;
	wire										tready_out;
	wire	[32     - 1 : 0]	tkeep_out;
			
	initial 
	begin
		
		clk = 0;
		reset = 1;
		@(negedge clk);;
		reset = 0;
		tvalid_in = 1;
		tlast_in = 0;
		tready_in = 1;
		tkeep_in = 32'hFFFFFFFF;
		data_in = 256'h0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000;
		data_in[111:96] = 16'h0006;
		data_in[143:128] = 16'hdc05;
		data_in[127:120] = 8'h28;
		data_in[191:184] = 8'h05;
		$display("data_out %h %b %h", data_out, tvalid_out, tkeep_out);
		@(negedge clk);
		tlast_in = 1;
		tkeep_in = 32'h0000FFFF;
		data_in = 256'h00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
		$display("data_out %h %b", data_out, tvalid_out);
		@(negedge clk);
		tlast_in = 0;
		$display("data_out %h %b %h", data_out, tvalid_out, tkeep_out);
		@(negedge clk);
		$display("data_out %h %b %h", data_out, tvalid_out, tkeep_out);
		@(negedge clk);
		$display("data_out %h %b %h", data_out, tvalid_out, tkeep_out);
		@(negedge clk);
		$display("data_out %h %b %h", data_out, tvalid_out, tkeep_out);
		@(negedge clk);
		$display("data_out %h %b %h", data_out, tvalid_out, tkeep_out);
		@(negedge clk);
		$display("data_out %h %b %h", data_out, tvalid_out, tkeep_out);
		@(negedge clk);
		$display("data_out %h %b %h", data_out, tvalid_out, tkeep_out);
		@(negedge clk);
		$display("data_out %h %b %h", data_out, tvalid_out, tkeep_out);
		@(negedge clk);
		$display("data_out %h %b %h", data_out, tvalid_out, tkeep_out);
		@(negedge clk);
		$display("data_out %h %b %h", data_out, tvalid_out, tkeep_out);
		@(negedge clk);
		$display("data_out %h %b %h", data_out, tvalid_out, tkeep_out);
		@(negedge clk);
		$display("data_out %h %b %h", data_out, tvalid_out, tkeep_out);
		@(negedge clk);
// 		tlast_in = 0;
// 		data_in = 256'h0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000;
// 		data_in[111:96] = 16'h0008;
// 		data_in[143:128] = 16'hdc05;
// 		data_in[127:120] = 8'h27;
// 		data_in[191:184] = 8'h06;
// 		$display("data_out %h %b", data_out, tvalid_out);
// 		@(negedge clk);
// 		data_in = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
// 		$display("data_out %h %b", data_out, tvalid_out);
// 		@(negedge clk);
// 		data_in = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
// 		$display("data_out %h %b", data_out, tvalid_out);
// 		@(negedge clk);
// 		data_in = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
// 		$display("data_out %h %b", data_out, tvalid_out);
// 		@(negedge clk);
// 		tlast_in = 1;
// 		data_in = 256'h85ABBB22E36EBF213EDBBE8CB5E1C045EAB0B677FB69FFFFFFFFFFFFFFFFFFFF;
// 		$display("data_out %h %b", data_out, tvalid_out);
// 		@(negedge clk);
// 		tlast_in = 0;
// 		data_in = 256'hffffffffffffffff06ffffffffffdc0508ff0008ffffffffffffffffffffffff;
// 		$display("data_out %h %b", data_out, tvalid_out);
// 		@(negedge clk);
// 		data_in = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
// 		$display("data_out %h %b", data_out, tvalid_out);
// 		@(negedge clk);
// 		data_in = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
// 		$display("data_out %h %b", data_out, tvalid_out);
// 		@(negedge clk);
// 		data_in = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
// 		$display("data_out %h %b", data_out, tvalid_out);
// 		@(negedge clk);
// 		tlast_in = 1;
// 		data_in = 256'h85ABBB22E36EBF213EDBBE8CB5E1C045EAB0B677FB69FFFFFFFFFFFFFFFFFFFF;
// 		$display("data_out %h %b", data_out, tvalid_out);
// 		@(negedge clk);
// 		tlast_in = 0;
// 		data_in = 256'h0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000;
// 		data_in[111:96] = 16'h0008;
// 		data_in[143:128] = 16'hdc05;
// 		data_in[127:120] = 8'h28;
// 		data_in[191:184] = 8'h06;
// 		$display("data_out %h %b", data_out, tvalid_out);
// 		@(negedge clk);
// 		data_in = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
// 		$display("data_out %h %b", data_out, tvalid_out);
// 		@(negedge clk);
// 		data_in = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
// 		$display("data_out %h %b", data_out, tvalid_out);
// 		@(negedge clk);
// 		data_in = 256'h85ABBB22E36EBF213EDBBE8CB5E1C045EAB0B677FB69FFFFFFFFFFFFFFFFFFFF;
// 		$display("data_out %h %b", data_out, tvalid_out);
// 		@(negedge clk);
// 		$display("data_out %h %b", data_out, tvalid_out);
// 		@(negedge clk);
// 		$display("data_out %h %b", data_out, tvalid_out);
// 		@(negedge clk);
// 		$display("data_out %h %b", data_out, tvalid_out);
// 		@(negedge clk);
// 		tlast_in = 1;
// 		data_in = 256'h22EC40842DE0B7847741B7381FCCB789A6B3C07DAF94BF1B6D9BBF63AE393B95;
// 		$display("data_out %h %b", data_out, tvalid_out);
// 		@(negedge clk);
// 		tvalid_in = 0;
// 		tlast_in = 0;
		$display("data_out %h %b %h", data_out, tvalid_out, tkeep_out);
		@(negedge clk);
		$display("data_out %h %b %h", data_out, tvalid_out, tkeep_out);
		@(negedge clk);
		$display("data_out %h %b %h", data_out, tvalid_out, tkeep_out);
		@(negedge clk);
		$display("data_out %h %b %h", data_out, tvalid_out, tkeep_out);
		@(negedge clk);
		$display("data_out %h %b %h", data_out, tvalid_out, tkeep_out);
		@(negedge clk);
		$display("data_out %h %b %h", data_out, tvalid_out, tkeep_out);
		@(negedge clk);
		$display("data_out %h %b %h", data_out, tvalid_out, tkeep_out);
		@(negedge clk);
		$display("data_out %h %b %h", data_out, tvalid_out, tkeep_out);
		@(negedge clk);
		$display("data_out %h %b %h", data_out, tvalid_out, tkeep_out);
		@(negedge clk);
		$display("data_out %h %b %h", data_out, tvalid_out, tkeep_out);
		@(negedge clk);
		$display("data_out %h %b %h", data_out, tvalid_out, tkeep_out);
		@(negedge clk);
		$display("data_out %h %b %h", data_out, tvalid_out, tkeep_out);
		@(negedge clk);
		$display("data_out %h %b %h", data_out, tvalid_out, tkeep_out);
		@(negedge clk);
		$finish;
	end
  
  Compressor cmprs (clk, reset, data_in, tvalid_in, tlast_in, tready_in, tkeep_in, data_out, tvalid_out, tlast_out, tready_out, tkeep_out);
  
  always #1 clk = ~clk;
  
  initial
  begin
    $dumpfile("compressor.vcd");
    $dumpvars(0, Compressor_tb);
  end

endmodule