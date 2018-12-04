<?php
$lines = file("input.txt");

$twos = array();
$threes = array();

foreach($lines as $lineNum => $line){
	$charcount = array();
	foreach(str_split($line) as $char){
		if(array_key_exists($char, $charcount))
			$charcount[$char] += 1;
		else
			$charcount[$char] = 1;
	}
	foreach($charcount as $char => $count){
		if($count == 2 && !in_array($line, $twos))
			$twos[] = $line;
		if($count == 3 && !in_array($line, $threes))
			$threes[] = $line;
	}
}
echo sizeof($twos) * sizeof($threes);
