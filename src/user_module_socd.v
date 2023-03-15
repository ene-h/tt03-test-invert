module socd(
	input [7:0] io_in,
  	output [7:0] io_out
);
	
	wire up=io_in[0];
	//>.....
  //always @(up or down)
  assign up_C = up;
  assign	down_C = (up && down) ? 0 : down;
	
  //always @(left or right)
  assign left_C = (left && right) ? 0 : left;
  assign right_C = (left && right) ? 0 : right;
	
endmodule
