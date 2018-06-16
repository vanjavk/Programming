myobjects=global.myobjects
leveltmp=global.leveltmp
playerpos=global.playerpos
///
if leveltmp[playerpos-21]==1{
playerpos=playerpos-21
self.y=self.y-30
} else if(leveltmp[playerpos-21]==5){
with(myobjects[playerpos-21]){instance_destroy()}
leveltmp[playerpos-21]=1
playerpos=playerpos-21
self.y=self.y-30
}
///
global.myobjects=myobjects
global.leveltmp=leveltmp
global.playerpos=playerpos
