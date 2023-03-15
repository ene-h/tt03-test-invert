module socd(
	input up, input down, input left, input right,
	output up_C, output down_C, output left_C, output right_C
);
	
  //always @(up or down)
  assign up_C = up;
  assign	down_C = (up && down) ? 0 : down;
	
  //always @(left or right)
  assign left_C = (left && right) ? 0 : left;
  assign right_C = (left && right) ? 0 : right;
	
endmodule
