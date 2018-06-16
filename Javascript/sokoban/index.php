<!DOCTYPE html>

<html>
	<head>
		<link rel="stylesheet" type="text/css" href="/css/default.css">
		<meta charset="UTF-8">
		<title>Sokoban</title>
		<script type="text/javascript" src="default.js"></script>
	</head>
	<body onload="startGame()" onkeydown="keyPress(event)">
		<a href="../">back</a><br>
		<p id="screen" style="color:black">
			
		</p>
		<br>
		<!--n: <input type="text" id="n" placeholder=10 value=10><br>
		m: <input type="text" id="m" placeholder=8 value=8><br>
		rocks: <input type="text" id="rock" placeholder="3,3;3,4;3,5" value="3,3;3,4;3,5"><br>
		dests: <input type="text" id="dest" placeholder="1,3;2,4;3,2" value="1,3;2,4;3,2"><br>-->
		leveldata: <input type="text" id="leveldata" placeholder="leveldata" value=
		<?php
		function parse($aliens)
		{
			return str_replace('%3B',';',str_replace('%2C',',',$aliens));
		}
		echo parse($_GET["leveldata"])?>>
		<button type="button" onclick="changeSize()">Start level</button>
		<button type="button" onclick="window.open('https://vanjavk.me/html5/sokoban/?leveldata='+document.getElementById('leveldata').value,'_self')">Get link</button>
		<br>
		<a href="https://vanjavk.me/html5/sokoban/?leveldata=8,8:4,4,4,4,4,4,4,4,4,4,4,3,4,4,4,4,4,4,4,0,4,4,4,4,4,4,4,2,1,2,3,4,4,3,0,2,2,4,4,4,4,4,4,4,0,4,4,4,4,4,4,4,3,4,4,4,4,4,4,4,4,4,4,4">Level 1</a>
		<br>
		<a href="https://vanjavk.me/html5/sokoban/?leveldata=9,9:4,4,4,4,4,4,4,4,4,4,1,0,0,4,4,4,4,4,4,0,2,2,4,4,4,3,4,4,0,2,0,4,4,4,3,4,4,4,4,0,0,0,0,3,4,4,4,4,0,0,4,0,0,4,4,4,0,0,0,4,4,4,4,4,4,0,0,0,4,4,4,4,4,4,4,4,4,4,4,4,4">Level 2</a>
		<br>
		<a href="https://vanjavk.me/html5/sokoban/?leveldata=6,8:4,4,4,4,4,4,4,4,0,0,4,4,4,0,1,2,4,4,4,4,2,0,4,4,4,4,0,2,0,4,4,3,2,0,0,4,4,3,3,2;3,3,4,4,4,4,4,4,4">Level 3</a>
		<br>
		<a href="https://vanjavk.me/html5/sokoban/?leveldata=8,8:4,4,4,4,4,4,4,4,4,4,0,0,4,4,4,4,4,4,1,2,0,0,4,4,4,4,4,0,4,0,4,4,4,3,4,0,4,0,0,4,4,3,2,0,0,4,0,4,4,3,0,0,0,2,0,4,4,4,4,4,4,4,4,4">Level 4</a>
		<br>
		<a href="https://vanjavk.me/html5/sokoban/?leveldata=8,7:4,4,4,4,4,4,4,4,4,4,4,0,0,0,0,4,4,4,4,2,2,2,0,4,4,0,0,2,3,3,0,4,4,1,2,3,3,3,4,4,4,4,4,4,0,0,4,4,4,4,4,4,4,4,4,4">Level 5</a>
		<br><br>
		<a href="https://github.com/vanjavk/Programming/blob/master/Javascript/sokoban">Source code</a>
	</body>
</html>