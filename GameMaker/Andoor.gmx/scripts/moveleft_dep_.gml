myobjects=global.myobjects
leveltmp=global.leveltmp
playerpos=global.playerpos
///
if leveltmp[playerpos-1]==1{
playerpos=playerpos-1
self.x=self.x-30
} else if(leveltmp[playerpos-1]==5){
with(myobjects[playerpos-1]){instance_destroy()}
leveltmp[playerpos-1]=1
playerpos=playerpos-1
self.x=self.x-30
}
///
global.myobjects=myobjects
global.leveltmp=leveltmp
global.playerpos=playerpos
