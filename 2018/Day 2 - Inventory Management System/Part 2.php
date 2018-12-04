<?php
$lines = file("input.txt");

foreach($lines as $lineNum1 => $line1){
	foreach($lines as $lineNum2 => $line2){
		if($lineNum1 < $lineNum2){
			$changecount = 0;
			$outstr = [];
			foreach(str_split($line1) as $index => $char1){
				//echo $char1.' '.$line2[$index].'<br>';
				if($char1 == $line2[$index])
					$outstr[] = $char1;
				else
					$changecount += 1;
			}
			if($changecount == 1){
				foreach($outstr as $char)
					echo $char;
				echo '<br />';
			}
		}
	}
}

