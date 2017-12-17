var player;
var objects=new Array();
var rocks;
var n;
var m;

function keyPress(event) 
{
	var char = event.keyCode || event.which;
	var move;
	console.log(char);
	switch(char)
	{
		case 119://w
			move=-n;
			break;
		case 115://s
			move=n;
			break;
		case 100://d
			move=1;
			break;
		case 97://a
			move=-1;
			break;
	}
	if (move!=undefined){
		movePlayer(move);
	}
	printGrid();
}

function movePlayer(move)
{
	if (objects[player+move]=='0')
	{
		if (objects[player]=='1')
		{
			objects[player]='0';
			objects[player+move]='1';
		}
		else if (objects[player]=='1;3')
		{
			objects[player]='3';
			objects[player+move]='1';
		}
	}
	else if (objects[player+move]=='3')
	{
		if (objects[player]=='1')
		{
			objects[player]='0';
			objects[player+move]='1;3';
		}
		else if (objects[player]=='1;3')
		{
			objects[player]='3';
			objects[player+move]='1;3';
		}
	}
	else if (objects[player+move]=='2')
	{
		if (objects[player+move*2]=='0')
		{
			if (objects[player]=='1')
			{
				objects[player]='0';
				objects[player+move]='1';
				objects[player+move*2]='2';
			}
			else if (objects[player]=='1;3') 
			{
				objects[player]='3';
				objects[player+move]='1';
				objects[player+move*2]='2';
			}
		}
		if (objects[player+move*2]=='3')
		{
			if (objects[player]=='1')
			{
				objects[player]='0';
				objects[player+move]='1';
				objects[player+move*2]='2;3';
			}
			else if (objects[player]=='1;3') 
			{
				objects[player]='3';
				objects[player+move]='1';
				objects[player+move*2]='2;3';
			}
		}
	}
	else if (objects[player+move]=='2;3')
	{
		if (objects[player+move*2]=='0')
		{
			if (objects[player]=='1')
			{
				objects[player]='0';
				objects[player+move]='1;3';
				objects[player+move*2]='2';
			}
			else if (objects[player]=='1;3') 
			{
				objects[player]='3';
				objects[player+move]='1;3';
				objects[player+move*2]='2';
			}
		}
		if (objects[player+move*2]=='3')
		{
			if (objects[player]=='1')
			{
				objects[player]='0';
				objects[player+move]='1;3';
				objects[player+move*2]='2;3';
			}
			else if (objects[player]=='1;3') 
			{
				objects[player]='3';
				objects[player+move]='1;3';
				objects[player+move*2]='2;3';
			}
		}
	}
}

function changeSize()
{
	leveldata=document.getElementById("leveldata").value;
	nmld=leveldata.split(':');
	n=parseInt(nmld[0].split(',')[0]);
	m=parseInt(nmld[0].split(',')[1]);
	console.log(n);
	objects=nmld[1].split(',');
	//0-empty
	//1-player
	//1;3-player on dest
	//2-rock
	//2;3-rock on dest
	//3-dest
	//4-wall

	printGrid();
}

function printGrid()
{
	var screen="";
	rocks=0;
	for (i = 0; i < m*n; i++)
	{
		switch(objects[i]){
			case '0':
				screen+="[ ]"
				break;
			case '1':
				player=i;
				screen+="[☺]"
				break;
			case '1;3':
				player=i;
				screen+="[☻]"
				break;
			case '2':
				screen+="[●]"
				rocks+=1;
				break;
			case '2;3':
				screen+="[❶]"
				break;
			case '3':
				screen+="[○]"
				break;
			case '4':
				screen+="[█]"
				break;
		}
		if (i%n==n-1)
		{
			screen+="<br>";
		}
		
	}
	if (rocks==0)
	{
		document.getElementById("screen").style="color:green";
	}
	else
	{
		document.getElementById("screen").style="color:black";
	}
	document.getElementById("screen").innerHTML=screen;
}

function startGame()
{
	changeSize();
}





