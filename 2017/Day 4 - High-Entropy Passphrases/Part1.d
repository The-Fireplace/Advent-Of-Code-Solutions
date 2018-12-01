import std.stdio;
import std.string;
import std.regex;
import std.algorithm;

void main(string[] args) {
	File inputf = File("input.txt", "r");
	int validCount = 0;
	string line;
	string[] passes;
	while(!inputf.eof()){
		line = chomp(inputf.readln());
		passes = split(line, " ");
		bool isValid = true;
		for(int i=1;i<passes.length;i++){
			string pass = passes[i];
			if(canFind(passes[0..i], pass)){
				isValid = false;
				break;
			}
		}
		if(isValid)
			validCount++;
	}
	inputf.close();
	writeln("Number of valid passphrases: ",validCount-1);
	getchar();
}