var t;
var x=5,y=4;
var m,n;
var screen="";
var a=0.15;
var v=0;
var fps=60;
var arej=[];
var udaljenost = 0.5*fps;
var maxsize=10;
var razmak=0;


function startGame()
{
	changeSize();
}

function keyPress(event) 
{
	var char = event.keyCode || event.which;
	console.log(char);
	switch(char)
	{
		case 119://w
			v=-12;
			break;
		case 87://w
			v=-12;
			break;
		case 38://w
			v=-12;
			break;
		case 32://w
			v=-12;
			break;

	}
}

function changeSize()
{
	clearInterval(t);
	n=60;
	arej.length=n;
	m=25;
	t=setInterval(printGrid,1000/fps);
	printGrid();
}

function printGrid()
{
	razmak+=0.5;

	if (razmak%udaljenost==0)
		{
			arej.shift();
			var dodaj;
			if (Math.round(Math.random())==0)
			{
				dodaj=Math.floor(Math.random() * maxsize)+1
			}else
			{
				dodaj=-(Math.floor(Math.random() * maxsize)+1)
			}

			arej.push(dodaj)
			
		}else if (Math.floor(razmak)==razmak)
		{
			arej.shift();
			arej.push(0);

		}

		

	screen="";
	v+=a;
	y+=v/fps;
	if (y>m || y<0)
	{
		document.getElementById("screen").style="color:red";
		location.reload();
		clearInterval(t);
	}
	for (i = 0; i < m*n; i++)
	{
		var death=false;

		if (i%n==x && Math.floor(i/n)==Math.floor(y))
		{
			screen+="☻";
			death=true;
		}

		if (arej[i%n]!=0)
		{
			if (arej[i%n]>0)
			{
				if (Math.floor(i/n)<=arej[i%n])
				{
					screen+="█";
					if (death==true)
					{
						document.getElementById("screen").style="color:red";
						location.reload();
						clearInterval(t);
					}
				}
				else if (death==false)
				{
					screen+=".";
				}
			}else
			{

				if (Math.floor(i/n)>=m+arej[i%n])
				{
					screen+="█";
					if (death==true)
					{
						document.getElementById("screen").style="color:red";
						location.reload();
						clearInterval(t);
					}

				}
				else if (death==false)
				{
					screen+=".";
				}
			}
		}
		else if (death==false)
		{
			screen+=".";
		}
		if (i%n==n-1)
		{
			screen+="<br>";
		}

	}
	document.getElementById("screen").innerHTML=screen;
}