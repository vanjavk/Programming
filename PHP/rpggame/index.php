<?php
session_start();


function setRandomEnemy(){

    $_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']=$_SESSION['enemies'][$_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['enemies'][array_rand($_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['enemies'])]];

}

if(!isset($_SESSION['hp'])) {
    $_SESSION['hp']=25;
}

if(!isset($_SESSION['enemies'])) {
    $_SESSION['enemies']=json_decode(file_get_contents("enemies.json"), true);

}

if(!isset($_SESSION['xy']))
{
    $_SESSION['xy']=array(0,0);
}

if(!isset($_SESSION['locations'])) {
    $_SESSION['locations']=json_decode(file_get_contents("map.json"), true);
//$_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]["name"];
}

if(!isset($_SESSION['gold'])) {
    $_SESSION['gold']=0;
}

if(!isset($_SESSION['xp'])) {
    $_SESSION['xp']=100;
}

function calculateLevel($xp)
{
    $level=0;
    $startxp=100;
    $increase=0.1;
    while ($xp>=$startxp+$level*$increase*$startxp)
    {
        $xp-=$startxp+$level*$increase*$startxp;
        $level++;
    }
    $hp=10*$level;

    return array($level,$xp,$hp);
}

$levelxp = calculateLevel($_SESSION['xp']);

if(isset($_POST['name'])) {
    $_SESSION['name']=$_POST['name'];
}
if(isset($_POST['heal'])) {
    $_SESSION['hp']=15+$levelxp[2];
}
/*
class location {
    public $name;
    public $xy;
    public $description;
    public $enemies;
    public $img;
    public $info;

    public function __construct($name,$xy,$description,$enemies,$img,$info)
    {
        $this['name'] = $name;
        $this->xy = $xy;
        $this['description'] = $description;
        $this['enemies'] = $enemies;
        $this['img'] = $img;
        $this['info'] = $info;
    }

}

class enemy {
    public $name;
    public $description;
    public $img;
    public $lvl;
    public $hp;
    public $minDmg;
    public $maxDmg;
    public $critChance;
    public $missChance;

    public function __construct()
    {
        $this['name'] = "Bear";
        $this['hp'] = 20;
        $this['description'] = "A mighty bear.";
        $this['minDmg'] = 0;
        $this['maxDmg'] = 2;
        $this['critChance'] = 0.03;
        $this['missChance'] = 0.20;
        $this['img'] = "img/bear.jpg";
    }
}
class enemyBoar {
    public $name;
    public $hp;
    public $description;
    public $minDmg;
    public $maxDmg;
    public $critChance;
    public $missChance;
    public $img;

    public function __construct()
    {
        $this['name'] = "Bear";
        $this['hp'] = 12;
        $this['description'] = "A wild boar.";
        $this['minDmg'] = 0;
        $this['maxDmg'] = 2;
        $this['critChance'] = 0.1;
        $this['missChance'] = 0.25;
        $this['img'] = "img/bear.jpg";
    }
}
class enemyWolf {
    public $name;
    public $hp;
    public $description;
    public $minDmg;
    public $maxDmg;
    public $critChance;
    public $missChance;
    public $img;

    public function __construct()
    {
        $this['name'] = "Wolf";
        $this['hp'] = 8;
        $this['description'] = "A wolf with sharp teeth.";
        $this['minDmg'] = 0;
        $this['maxDmg'] = 3;
        $this['critChance'] = 0.25;
        $this['missChance'] = 0.15;
        $this['img'] = "img/wolf.jpg";
    }
}
class enemyReaper {
    public $name;
    public $hp;
    public $description;
    public $minDmg;
    public $maxDmg;
    public $critChance;
    public $missChance;
    public $img;

    public function __construct()
    {
        $this['name'] = "Harvest reaper";
        $this['hp'] = 55;
        $this['description'] = "Stay off my field you pest.";
        $this['minDmg'] = 3;
        $this['maxDmg'] = 7;
        $this['critChance'] = 0.15;
        $this['missChance'] = 0.15;
        $this['img'] = "img/reaper.jpg";
    }
}
class enemyVulture {	
    public $name;
    public $hp;
    public $description;
    public $minDmg;
    public $maxDmg;
    public $critChance;
    public $missChance;
    public $img;

    public function __construct()
    {
        $this['name'] = "Vulture fleshripper";
        $this['hp'] = 35;
        $this['description'] = "Mmmmm... Flesh of fallen angels.";
        $this['minDmg'] = 5;
        $this['maxDmg'] = 10;
        $this['critChance'] = 0.25;
        $this['missChance'] = 0.15;
        $this['img'] = "img/vulture.jpg";
    }
}
*/
//array(0,0)


/*
if(!isset($_SESSION['locations'])) {
$_SESSION['locations']=array("0,0"=>new location("Goldshire inn",array(0,0),"Relax and dance in our inn.",array(),"img/goldshire.jpg","Melika Isenstrider greets you!"),

    "1,0"=>new location("Elwynn Forest",array(1,0),"Monsters lurk here.",array(new enemyBoar(), new enemyWolf(), new enemyBoar(), new enemyWolf(), new enemyBear(), new enemyBoar(), new enemyWolf(), new enemyBoar(), new enemyWolf(), new enemyBear()),"img/elwynn.jpg","You hear a strange sound."),

    "-1,0"=>new location("Westfall",array(-1,0),"Farmers are fightning wild animals.",array(new enemyVulture(), new enemyReaper(), new enemyVulture(), new enemyReaper(), new enemyReaper(), new enemyVulture(), new enemyReaper(), new enemyVulture(), new enemyReaper()),"img/westfall.jpg","You hear a strange mechanical sound."),
    
    "-1,-1"=>new location("Sentinel hill",array(-1,-1),"Everyone is peacefully enjoying sunny weather.",array(),"img/sentinelhill.jpg","You hear a welcoming sound."));
}
*/


function splitString1($string)
{
	$x=substr($string, 0, 10);
	while (strlen($x)!=10){
		$x.=".";
	}
	return $x;
}
function splitString2($string)
{
	$x=substr($string, 10, 10);
	while (strlen($x)!=10){
		$x.=".";
	}
	return $x;
}
function calculateXP($lvl)
{
    return max(50+$lvl*10-calculateLevel($_SESSION['xp'])[0]*10,0);
}
function attackEnemy($maxDmg,$minDmg,$critChance,$missChance){
    $attackdmg=0;
    $msg="miss";
    if (mt_rand()/mt_getrandmax()>$missChance){
        $attackdmg=random_int($minDmg,$maxDmg);
        $msg="hit";
        if (mt_rand()/mt_getrandmax()<$critChance){
            $attackdmg*=1.5;
            $msg="crit";
        }
    }
    return array($attackdmg,$msg);
}
function attack($level){
    return round($level+rand(0,5)/10*$level,2);
}
function combat($attack)
{
    $attackdmg= attack($GLOBALS["levelxp"][0]);
    
    $attackdmge=attackEnemy($_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']['maxDmg'],$_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']['minDmg'],$_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']['critChance'],$_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']['missChance']);
    $_SESSION['hp']-=$attackdmge[0];
    if ($attack)
    {
        $_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']['hp']-=$attackdmg;
        $_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['info'].="<p style='color:#1aa51d;'>You hit " . $_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']['name'] . " for " . $attackdmg . ". Current hp: ". $_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']['hp'] ."</p>";
    }else{
       $_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['info'].="<p style='color:#bcab2d;'>You tried to flee, but failed.</p>";
    }

    if ($attackdmge[1]==="hit")
    {
        $_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['info'].="<p style='color:#f4424b;'>" . $_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']['name'] . " hit you for " . $attackdmge[0] . ". Your hp: ". $_SESSION["hp"] ."</p>";

    }elseif ($attackdmge[1]==="miss") {
        $_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['info'].="<p style='color:#9e9e9e;'>" . $_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']['name'] . " missed you. Your hp: ". $_SESSION["hp"] ."</p>";
    }elseif ($attackdmge[1]==="crit") {
        $_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['info'].="<p style='color:#af0c14;'>" . $_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']['name'] . " critically hit you for " . $attackdmge[0] . ". Your hp: ". $_SESSION["hp"] ."</p>";
    }


    if ($_SESSION['hp']<=0)
    {
        echo "<script>window.alert('You died!');</script>";
        header("Location: reset.php");
        die();
    }

    if ($_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']['hp']<=0)
    {
        $xp=calculateXP($_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']['lvl']);
        $_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['info'].="<p style='color:#000000;'>" . $_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']['name'] . " died. You earned ". $xp ." xp!</p>";
        //array_shift($_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['enemies']);
        setRandomEnemy();
        $_SESSION['xp']+=$xp;

    }

}
if(isset($_POST['attack'])) 
{
    combat(true);
}
function post($string){
    return "<a onclick='document.getElementById(".$string.").click();' href='#'>";
}
function leaveCombat(){
    if (sizeof($_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['enemies'])>0)
    {
      if (mt_rand()/mt_getrandmax()<0.35)
      {
        return false;
      } else {
        combat(false);
        return true;
      }
    }

}
if(isset($_POST['right'])) {
    if (isset($_SESSION['locations'][($_SESSION['xy'][0]+1).",".$_SESSION['xy'][1]]))
    {
        (function(){
        if (leaveCombat()){ return; }
        $_SESSION['xy'][0]+=1;
        })();
    }
}
if(isset($_POST['left'])) {
    if (isset($_SESSION['locations'][($_SESSION['xy'][0]-1).",".$_SESSION['xy'][1]]))
    {
        (function(){
        if (leaveCombat()){ return; }
        $_SESSION['xy'][0]-=1;
        })();
    }
}
if(isset($_POST['up'])) {
    if (isset($_SESSION['locations'][$_SESSION['xy'][0].",".($_SESSION['xy'][1]+1)]))
    {
        (function(){
        if (leaveCombat()){ return; }
        $_SESSION['xy'][1]+=1;
        })();
    }
}
if(isset($_POST['down'])) {
    if (isset($_SESSION['locations'][$_SESSION['xy'][0].",".($_SESSION['xy'][1]-1)]))
    {
        (function(){
        if (leaveCombat()){ return; }
        $_SESSION['xy'][1]-=1;
        })();
    }
}

if(!isset($_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy'])) 
{
    if (sizeof($_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['enemies'])>0)
    {
        if ($_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']<=0)
        {
            setRandomEnemy();

        }
    }
}
//echo $_SESSION['xy'][0].",".$_SESSION['xy'][1];
//echo $_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['description'];
?>

<!DOCTYPE html>

<html>
	<head>
		<script
  		src="https://code.jquery.com/jquery-3.3.1.min.js"
  		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
 		crossorigin="anonymous"></script>
		<link rel="stylesheet" type="text/css" href="/css/default.css">
        <link rel="stylesheet" type="text/css" href="css/default.css">
		<meta charset="UTF-8">
		<title>RPG game</title>
	</head>
	<body>
		<script>
			var left="left";
			var right="right";
			var up="up";
			var down="down";
    	    var W = [119,87];
    	    var A = [97,65];
    	    var S = [115,83];
    	    var D = [100,68];
            document.onkeydown = function(event){
            if(D.includes(event.which) || D.includes(event.keyCode))    //d
                document.getElementById(right).click();
            else if(S.includes(event.which) || S.includes(event.keyCode))   //s    //d
                document.getElementById(down).click();
            else if(A.includes(event.which) || A.includes(event.keyCode)) //a    //d
                document.getElementById(left).click();
            else if(W.includes(event.which) || W.includes(event.keyCode))     //d
                document.getElementById(up).click();
            }
		</script>
		<div class="container">
            <div class="topleft">

                <a href="https://github.com/vanjavk/Programming/tree/master/php/rpggame">Source code</a>
                <a href="map.json">Map data</a>
                <a href="enemies.json">Enemy data</a><br>
<?php
    echo "Hitpoints: " . $_SESSION['hp'] . "<br>";
    echo "Gold: " . $_SESSION['gold'] . "<br>";
    echo "XP: " . $levelxp[1] . "<br>";
    echo "Level: " . $levelxp[0] . "<br>";
    echo "Location: " . $_SESSION['xy'][0] . ", " . $_SESSION['xy'][1] . "<br>";
    echo "<a href='reset.php'>RESET ALL DATA</a><br>";
    if (isset($_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']['hp'])){
        if ($_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']['hp']>0)
        {
            echo "<br>Enemy name: ".$_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']['name']."<br>";
            echo "Enemy description: ".$_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']['description']."<br>";
            echo "Enemy lvl: ".$_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']['lvl']."<br>";
            echo "Enemy hitpoints: ".$_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']['hp']."<br>";
            echo "Enemy max damage: ".$_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']['maxDmg']."<br>";
            echo "Enemy min damage: ".$_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']['minDmg']."<br>";
            echo "Enemy crit chance: ".$_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']['critChance']."<br>";
            echo "Enemy miss chance: ".$_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']['missChance']."<br>";
        }
    }
 //else {
//    echo "Hey! Tell us your name: <form method='post' action=''><input type='text' name='name'><input type='submit'></form>" . PHP_EOL;

//}
?>


            </div>
            <div class="top"><div id="info">
<?php




echo $_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['info'];
?>

            </div></div>
            <script>$("#info").scrollTop($("#info")[0].scrollHeight);</script>
            <div class="topright">
                <div class="topright1">
<?php
//echo $_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]];
echo "<h1>".$_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['name'] . "</h1><br>";
echo $_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['description'] . "<br>";
echo "<img src='".$_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['img']."' style='max-width:100%;max-height:80%;'>" . "<br>";
?>
                </div>
                <div class="topright2">
                    
<?php
//echo $_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]];
echo "<h1>".$_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']['name'] . "</h1><br>";
echo $_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']['description'] . "<br>";
echo "<img src='".$_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['currentenemy']['img']."' style='max-width:100%;max-height:80%;'>" . "<br>";
?>
                </div>
            </div>
            <div class="botleft"><h1>botleft Page</h1></div>
            <div class="bot"><div class="bot1">
<?php
if (sizeof($_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['enemies'])>0){
    echo "<form method='post' action=''>
    <input name='attack' type='submit' value='attack'>
    </form>";
} else
{
    echo "<form method='post' action=''>
    <input name='heal' type='submit' value='heal'>
    </form>";  
}



?>
            </div><div class="bot2">



            </div>
        	</div>
            <div class="botright">

<?php echo splitString1($_SESSION['locations'][($_SESSION['xy'][0]-1).",".($_SESSION['xy'][1]+1)]['name']);?>|<?php echo post("up").splitString1($_SESSION['locations'][$_SESSION['xy'][0].",".($_SESSION['xy'][1]+1)]['name']);?></a>|<?php echo splitString1($_SESSION['locations'][($_SESSION['xy'][0]+1).",".($_SESSION['xy'][1]+1)]['name']);?><br>
<?php echo splitString2($_SESSION['locations'][($_SESSION['xy'][0]-1).",".($_SESSION['xy'][1]+1)]['name']);?>|<?php echo post("up").splitString2($_SESSION['locations'][$_SESSION['xy'][0].",".($_SESSION['xy'][1]+1)]['name']);?></a>|<?php echo splitString2($_SESSION['locations'][($_SESSION['xy'][0]+1).",".($_SESSION['xy'][1]+1)]['name']);?><br>
--------------------------------<br>
<?php echo post("left").splitString1($_SESSION['locations'][($_SESSION['xy'][0]-1).",".$_SESSION['xy'][1]]['name']);?></a>|<?php echo splitString1($_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['name']);?>|<?php echo post("right").splitString1($_SESSION['locations'][($_SESSION['xy'][0]+1).",".$_SESSION['xy'][1]]['name']);?></a><br>
<?php echo post("left").splitString2($_SESSION['locations'][($_SESSION['xy'][0]-1).",".$_SESSION['xy'][1]]['name']);?></a>|<?php echo splitString2($_SESSION['locations'][$_SESSION['xy'][0].",".$_SESSION['xy'][1]]['name']);?>|<?php echo post("right").splitString2($_SESSION['locations'][($_SESSION['xy'][0]+1).",".$_SESSION['xy'][1]]['name']);?></a><br>
--------------------------------<br>
<?php echo splitString1($_SESSION['locations'][($_SESSION['xy'][0]-1).",".($_SESSION['xy'][1]-1)]['name']);?>|<?php echo post("down").splitString1($_SESSION['locations'][$_SESSION['xy'][0].",".($_SESSION['xy'][1]-1)]['name']);?></a>|<?php echo splitString1($_SESSION['locations'][($_SESSION['xy'][0]+1).",".($_SESSION['xy'][1]-1)]['name']);?><br>
<?php echo splitString2($_SESSION['locations'][($_SESSION['xy'][0]-1).",".($_SESSION['xy'][1]-1)]['name']);?>|<?php echo post("down").splitString2($_SESSION['locations'][$_SESSION['xy'][0].",".($_SESSION['xy'][1]-1)]['name']);?></a>|<?php echo splitString2($_SESSION['locations'][($_SESSION['xy'][0]+1).",".($_SESSION['xy'][1]-1)]['name']);?><br>

            </div>
		</div>
		<div style="visibility: hidden">
		<form name="post" action="" method="post">
		<input id="left" name="left" type='submit'>
		<input id="right" name="right" type='submit'>
		<input id="up" name="up" type='submit'>
		<input id="down" name="down" type='submit'>
		</div>
		</form>
	</body>

</html>

