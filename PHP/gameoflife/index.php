<!DOCTYPE html>
<!--Good starting position: vanjavk.me/gameoflife/?n=10&m=8&aliens=3,3;2,3;3,2;3,1;1,2 -->
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="/css/default.css">
		<meta charset="UTF-8">
		<title>Game of life</title>
	</head>
	<body>
		
<?php
function printGrid($n,$m,$aliens){
	for($j=0; $j<$m; $j++)
	{
		for($i=0; $i<$n; $i++)
		{
			if (in_array(array($i,$j),$aliens))
			{
				echo '[o]';
			}
			else
			{
				echo '[ ]';
			}
			
		}
		echo "<br>";
	}
}
function monthGrid($n,$m,$aliens){
	$a=array(1,0,-1);
	$b=array(1,0,-1);
	$aliens1=array();
	for($j=0; $j<$m; $j++)
	{
		for($i=0; $i<$n; $i++)
		{
			$coords=array();

			foreach($a as $x1)
			{
				foreach($b as $y1)
				{
					if (($x1!=0) or ($y1!=0))
					{
						$coords[]=array(($i+$n+$x1)%$n,($j+$m+$y1)%$m);
					}
					
				}
			}
			$susjedi=0;
			foreach($coords as $coord)
			{
				if (in_array($coord,$aliens))
				{
					$susjedi++;
				}
			}
			if (in_array(array($i,$j),$aliens))
			{
				if ($susjedi==2 or $susjedi==3)
				{
					$aliens1[]=array($i,$j);
				}
			}
			else
			{
				if ($susjedi==3)
				{
					$aliens1[]=array($i,$j);
				}
			}	
		}
	}
	return $aliens1;
}
function parseAliens($aliens){
	return str_replace('%3B',';',str_replace('%2C',',',$aliens));
}

$n=intval($_GET["n"]);
$m=intval($_GET["m"]);
$aliens=parseAliens($_GET["aliens"]);
$aliens1=parseAliens($_GET["aliens"]);

$aliens=array_map(function($i) {return explode(',',$i);},explode(';',$aliens));
echo "Game of life - by vanjavk!";
echo '<br><br>';

$aliens=monthGrid($n,$m,$aliens);
printGrid($n,$m,$aliens);

$aliensstr="";
foreach($aliens as $a){
	$aliensstr.=$a[0].','.$a[1].";";
}
$aliensstr=substr($aliensstr, 0, -1);
$url = "http://".$_SERVER['HTTP_HOST'].str_replace($aliens1,$aliensstr,parseAliens($_SERVER['REQUEST_URI']));
echo '<br><a href="'.$url.'">Next step</a>';
echo '<br>';
echo '<br>';
$source_code='https://github.com/vanjavk/Programming/blob/master/PHP/gameoflife';
echo '<a href="'.$source_code.'">Source code</a>';



?>

	</body>
</html>
