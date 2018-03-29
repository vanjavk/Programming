console.log("hello world");

var express = require('express');
var app = express();
var serv = require('http').Server(app);
var md5 = require('js-md5');
const uuidv4 = require('uuid/v4');


app.get('/',function(req, res)
{
	res.sendFile(__dirname + '/client/index.html');
});
app.use('/client',express.static(__dirname+'/client'));

serv.listen(2000);
console.log("Server started.");

var SOCKET_LIST = {};
var io = require('socket.io')(serv,{});
var maxTick = 60;

Player = function(param)
{
    var self = Entity(param);
    self.number = "" + Math.floor(10 * Math.random());
    self.username = param.username;
    self.pressingRight = false;
    self.pressingLeft = false;
    self.pressingUp = false;
    self.pressingDown = false;
    self.pressingAttack = false;
    self.mouseAngle = 0;
    self.maxSpd = 10;
    self.hp = 10;
    self.hpMax = 10;
    self.score = 0;
    self.inventory = new Inventory(param.progress.items,param.socket,true);
    
    
}

io.sockets.on('connection', function(socket)
{
    socket.on('disconnect',function(){
        console.log(socket.PUUID+" disconnected.")
        delete SOCKET_LIST[socket.PUUID];
    });
    var waittime=1000/144;
    var address = socket.handshake.address;
	//console.log('socket connection');
    //console.log('New connection from ' + address.address + ':' + address.port);
    //console.log(socket.request.connection.remoteAddress);
    var clientIpAddress = socket.request.connection.remoteAddress.substring(7);
    var PUUID = uuidv4();
    socket.PUUID = PUUID;
    SOCKET_LIST[socket.id] = socket;
    socket.x = 0;
    socket.y = 0;
    socket.W = false;
    socket.A = false;
    socket.S = false;
    socket.D = false;
    socket.waitDate = 0;

    console.log('New person joined('+clientIpAddress+'): '+PUUID);

    

    socket.emit('handshake',{
    name:PUUID
    });
    //sendEveryone(clientID + ' joined.');
    socket.on('keyPress',function(data){
        if(data.inputId === 'left')
            socket.A = data.state;
        else if(data.inputId === 'right')
            socket.D = data.state;
        else if(data.inputId === 'up')
            socket.W = data.state;
        else if(data.inputId === 'down')
            socket.S = data.state;

    });


	socket.on('chat',function(data)
	{ 
        var chat = {};
        chat.UUID=uuidv4();
        chat.PUUID=socket.PUUID;
        chat.text=data.text;
        chat.date=Date.now();

		console.log(chat.PUUID,chat.text);
        sendEveryone(chat);
          
    });

})

function sendEveryone(chat){
    for(var i in SOCKET_LIST){
        var socket = SOCKET_LIST[i];

        socket.emit('chat',{
        data:JSON.stringify(chat)
            });
    }
}
function movePlayers(){
    for(var i in SOCKET_LIST){
        var socket = SOCKET_LIST[i];

        var movex = socket.D - socket.A;
        var movey = socket.S - socket.W;

        var spd = Math.sqrt(movex*movex+movey*movey);
        socket.x+=movex*spd;
        socket.y+=movey*spd;
    }
}
function updatePlayers(){
    for(var i in SOCKET_LIST){
        var socket = SOCKET_LIST[i];
        var gameData = new Array;
        gameData.push()
    }


}
function tickrate(time2){
    var tickrate = 0;
    if (time2<1000/maxTick)
    {
        tickrate=maxTick
    } else
    {
        tickrate=(1000/maxTick-time2)*maxTick
    }
    console.log(tickrate)
        
    }

    function sleep(ms)
    {
        return new Promise(resolve => setTimeout(resolve, ms));
    }
setInterval(function(){
    //var time1 = Date.now();
    movePlayers();
    updatePlayers();
    //var time2 = time1 - Date.now();
    //tickrate(time2);
    //await sleep(1000/maxTick-time2)
    //gameTick();
},1000/60);





