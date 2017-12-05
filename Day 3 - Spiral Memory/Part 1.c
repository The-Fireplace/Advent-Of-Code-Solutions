#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int getLevel(int number){
	int level = 1;
	for(int sqr=1;sqr<number*number;sqr+=2,level++){
		if(sqr*sqr >= number)
			return level;
	}
	return -1;
}

int getSqr(int number){
	for(int sqr=1;sqr<number*number;sqr+=2){
		if(sqr*sqr >= number)
			return sqr;
	}
	return -1;
}

int main(void) {
	puts("Enter the puzzle input.");
	int inp = 0;
	scanf(" %d", &inp);
	int level = getLevel(inp);
	//printf("The number %d was determined to be on level %d of the memory.\n", inp, level);
	int sqr = getSqr(inp);
	int prevSqr = sqr-2;
	int segmentLength = (sqr*sqr-prevSqr*prevSqr)/4;
	//printf("Segment length for level %d of the spiral determined to be %d.\n", level, segmentLength);
	int segment = 1;
	for(;segment<5;segment++){
		if(prevSqr*prevSqr+segment*segmentLength >= inp)
			break;
	}
	//printf("The number %d is determined to be in segment %d.\n", inp, segment);
	int midpoint = prevSqr*prevSqr+segment*segmentLength-segmentLength/2;
	//printf("The midpoint of the segment is determined to be %d.\n", midpoint);
	int moveCount = level-1+abs(inp-midpoint);
	printf("The number of moves required for puzzle input %d is %d.", inp, moveCount);
	return EXIT_SUCCESS;
}
