module socd(
	input up, input down, input left, input right,
	output up_C, output down_C, output left_C, output right_C
);
	
	always @(up||down)
		up_C = up;
		down_C = (up && down) ? 0 : down;
	
	always @(left||right)
		left_C = (left&&right) ? 0 : left;
		right_C = (left&&right) ? 0 : right;
