package
{
   public class UnitStats
   {
      
      public static var unit:Object;
      
      public static var spell:Object;
      
      public static var upgrades:Object;
      
      public static var list:Array;
      
      public static var C:uint = 1;
      
      public static var L:uint = 2;
      
      public static var M:uint = 4;
      
      public static var E:uint = 8;
      
      public static var $:uint = 16;
      
      public static var G:uint = 32;
      
      public var effSize:uint;
      
      public var wdth:uint;
      
      public var projSpd:uint;
      
      public var name:String;
      
      public var desc:String;
      
      public var atk:uint;
      
      public var id:String;
      
      public var upgrade:UpgradeType;
      
      public var sound:*;
      
      public var hp:uint;
      
      public var resC:Number;
      
      public var spd:Number;
      
      public var extra:Object;
      
      public var resL:Number;
      
      public var atkFps:uint;
      
      public var resM:Number;
      
      public var atkFrame:Array;
      
      public var type:String;
      
      public var rangeX:uint;
      
      public var rangeY:uint;
      
      public var desc2:String;
      
      public var cdFps:uint;
      
      public var offX:Number;
      
      public var offY:Number;
      
      public var hght:uint;
      
      public var cost:uint;
      
      public var amt:uint;
      
      public var race:String;
      
      public var atkTyp:uint;
      
      public var upgradeb:UpgradeType;
      
      public var wlkFps:uint;
      
      public var effTyp:String;
      
      public var cooldown:Number;
      
      public var projTyp:String;
      
      public var upExp2:uint;
      
      public var upExp3:uint;
      
      public var upbExp2:uint;
      
      public var upbExp3:uint;
      
      public function UnitStats()
      {
         super();
      }
      
      private static function addUnit(param1:String, param2:String, param3:String, param4:uint, param5:uint, param6:uint, param7:Array, param8:uint, param9:uint, param10:uint, param11:Number, param12:uint, param13:uint, param14:uint, param15:uint, param16:uint, param17:Number, param18:Number, param19:Number, param20:uint, param21:Number, param22:uint, param23:uint, param24:String, param25:uint, param26:uint, param27:String, param28:String, param29:uint, param30:String, param31:uint, param32:*, param33:Object, param34:String, param35:String) : void
      {
         var _loc36_:UnitStats = null;
         _loc36_ = new UnitStats();
         _loc36_.id = param1 + "_" + param2;
         _loc36_.race = param1;
         _loc36_.type = param2;
         _loc36_.name = param3;
         _loc36_.wlkFps = param4;
         _loc36_.atkFps = param5;
         _loc36_.cdFps = param6;
         _loc36_.atkFrame = param7;
         _loc36_.atkTyp = param8;
         _loc36_.hp = param9;
         _loc36_.atk = param10;
         _loc36_.spd = param11;
         _loc36_.amt = param12;
         _loc36_.wdth = param13;
         _loc36_.hght = param14;
         _loc36_.rangeX = param15;
         _loc36_.rangeY = param16;
         _loc36_.resC = param17;
         _loc36_.resL = param18;
         _loc36_.resM = param19;
         _loc36_.cost = param20;
         _loc36_.cooldown = param21;
         _loc36_.upExp2 = param22;
         _loc36_.upExp3 = param23;
         _loc36_.upgrade = upgrades[param24];
         _loc36_.upbExp2 = param25;
         _loc36_.upbExp3 = param26;
         _loc36_.upgradeb = upgrades[param27];
         _loc36_.effTyp = param28;
         _loc36_.effSize = param29;
         _loc36_.projTyp = param30;
         _loc36_.projSpd = param31;
         _loc36_.sound = param32;
         _loc36_.extra = param33;
         _loc36_.desc = param34;
         _loc36_.desc2 = param35;
         if(_loc36_.atkTyp & E)
         {
            _loc36_.rangeX = _loc36_.effSize * 0.75;
            _loc36_.rangeY = 30;
         }
         unit[_loc36_.id] = _loc36_;
         list.push(_loc36_);
      }
      
      private static function addSpell(param1:String, param2:String, param3:uint, param4:uint, param5:Number, param6:uint, param7:uint, param8:uint, param9:Number, param10:uint, param11:uint, param12:String, param13:uint, param14:uint, param15:String, param16:*, param17:String, param18:*) : void
      {
         spell[param1] = new SpellType(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,upgrades[param12],param13,param14,upgrades[param15],param16,param17,param18);
      }
      
      private static function addUpgrade(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number, param7:Number, param8:String) : void
      {
         upgrades[param1] = new UpgradeType(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public static function Init() : void
      {
         list = new Array();
         unit = new Object();
         upgrades = new Object();
         spell = new Object();
         addUpgrade("units","units","Amount Increase",2,3,2,3,"Spawns &x more");
         addUpgrade("hp","hp","Health Increase",1.5,2,1.2,1.5,"+@% Hp");
         addUpgrade("atk","atk","Attack Increase",1.5,2,1.2,1.5,"+@% Attack");
         addUpgrade("range","range","Range Increase",2,3,1.5,2,"+@% Range");
         addUpgrade("speed","speed","Speed Increase",1.2,1.4,1.5,2,"+@% Speed");
         addUpgrade("mine","mine","Mining Efficiency",2,3,1.2,1.5,"+@% Gold Mined");
         addUpgrade("time","time","Longer Duration",1.5,2,2,3,"+@% Duration");
         addUpgrade("cost","cost","Cost Decrease",0.75,0.5,1,1,"@% Cost");
         addUpgrade("blank","blank","_________________",1,1,1,1,"blank");
         addUpgrade("defup","defup","___DefenseHeal___",3,1.5,1,1,"blank");
         addUpgrade("general","general","___GeneralUpgr___",1.75,2.25,2,2,"blank");
         addSpell("s_arrows","Arrow Shower",L,10,0,400,100,70,10,30,45,"range",40,60,"units",Spell_Arrows,"Instantly launches a shower of arrows in a horizontal line on the battlefield.","Ranged Arrows\nCan hit multiple times");
         addSpell("s_rock","Explosive Boulder",C,30,0,350,50,100,15,40,60,"atk",30,45,"range",Spell_BigRock,"After a slight delay, drops a giant boulder onto the battlefield that pushes enemies back and then explodes.","Melee Rock\nPushes back enemies");
         addSpell("s_catapult","Seige Catapult",M,20,0,200,150,130,20,60,90,"atk",70,105,"units",Spell_Catapult,"After a slight delay, launches flaming pots that explode and set all nearby enemies on fire.","Magic Explosive\nSets enemies on Fire");
         addSpell("s_ice","Ice Slide",E,0,6,340,80,40,6,30,45,"time",30,45,"cost",Spell_Ice,"Instantly freezes a horizontal line on the battlefield, forcing opposing units together.","Speeds up units\nSlides units Together");
         addSpell("s_smoke","Smoke Screen",E,0,6,150,150,55,8,50,75,"time",50,75,"cost",Spell_Smoke,"After a slight delay, launches a pot that puts up a smoke screen that neutralizes ranged damage to allies.","Nullifies Ranged Damage in area");
         addSpell("s_nomagic","Neutral Zone",E,0,6,150,150,70,10,40,60,"time",40,60,"cost",Spell_NoMagic,"After a slight delay, drops a barrier on the battlefield that neutralizes magic damage to allies.","Nullifies Magic Damage in area");
         addSpell("s_defense","Defensive Abilities",E,0,0,0,0,300,25,0,0,"defup",0,0,"defup",Spell_Defense,"","Repair base\nAdd archer defense");
         addUnit("rome","miner","Peasant",2,3,28,[4],$,10,0,3,1,15,70,0,0,1.6,1.6,1.6,40,2,10,15,"mine",10,15,"speed",null,0,null,0,"mine",{},"No armor or attack power, but provides a secondary source of income.","Mines Gold\nImmune to Spells");
         addUnit("rome","sword","Legionary",3,3,16,[4],C,55,15,2.2,2,15,70,30,20,1,1,1,55,3,30,45,"units",20,30,"hp",null,0,null,0,"cut",{},"The primary infantry unit for the Roman Legion.","Melee Swordsman\nBasic Unit");
         addUnit("rome","shield","Defender",4,3,23,[3],C,90,6,1.8,1,15,70,20,20,0.7,0.2,0.8,75,5,30,45,"units",20,30,"hp",null,0,null,0,"blunt",{},"The primary defensive unit for the Roman Legion.","Melee Defensive\nResistant to Range");
         addUnit("rome","bow","Archer",3,3,18,[4],L,27,7,2.5,2,15,75,300,40,1.5,1,1,50,4,40,60,"range",20,30,"atk",null,0,"rome_arrow",55,"whip",{},"The primary ranged unit for the Roman Legion.","Ranged Arrows\nWeak against Melee");
         addUnit("rome","firebow","Fire Archer",3,3,21,[4],M,45,10,2.5,2,15,75,270,40,1.5,1,1,80,7,50,75,"range",30,45,"hp","fire",0,"rome_firearrow",55,"whip",{},"Medium armor and arrows that set enemies on fire, dealing damage over time.","Magic Arrows\nSets enemies on Fire\nWeak against Melee");
         addUnit("rome","spear","Centurian",3,3,26,[3],L,120,18,2,1,15,75,220,40,1,0.6,1,135,12,60,90,"units",40,60,"hp",null,0,"rome_spear",45,"whip",{},"Heavy armor with a large shield and powerful ranged spear attacks.","Heavy Ranged Defensive\nResistant to Range");
         addUnit("rome","flag","Healer",5,0,0,[4],E,50,0,1.4,1,15,80,0,0,1.4,1.4,1.4,80,8,30,45,"range",20,30,"speed","heal",100,null,0,"none",{},"Boosts morale in allies, healing from a distance.","Heals nearby Allies\nWeak against Everything");
         addUnit("rome","horse","Cavalry",2,3,33,[4],C,350,20,3.5,1,50,120,45,40,1,1.5,1.5,170,16,50,75,"hp",40,60,"speed",null,0,null,0,"horse",{
            "noSkel":true,
            "pierce":true
         },"Fast, with heavy armor and a spear attack that hits multiple enemies.","Heavy Melee\nHits all enemies in Range");
         addUnit("rome","general","Ceasar",2,3,0,[3],G,9999,10,7,1,60,120,120,40,1,1,1,200,30,0,0,"general",0,0,"general","fire",0,null,0,"fire",{
            "noSkel":true,
            "pierce":true,
            "atkEffect0":{
               "eff":"generalFire0",
               "xoff":60 + 60,
               "yoff":1,
               "yimg":-30
            },
            "atkEffect1":{
               "eff":"generalFire1",
               "xoff":60 + 60,
               "yoff":1,
               "yimg":-30
            }
         },"","Heavy Damage\nShares Base Health\nTakes 3x Damage");
         addUnit("gaul","miner","Peon",2,3,28,[4],$,10,0,3,1,15,70,0,0,1.6,1.6,1.6,40,2,10,20,"speed",10,20,"mine",null,0,null,0,"mine",{},"No armor or attack power, but provides a secondary source of income.","Mines Gold\nImmune to Spells");
         addUnit("gaul","axe","Raider",3,3,20,[4],C,65,19,2.1,1,15,70,35,20,1,1,1,65,3,30,45,"atk",20,30,"hp",null,0,null,0,"cut",{},"The primary infantry unit for the Gallic Tribes.","Melee Axeman\nBasic Unit");
         addUnit("gaul","bow","Archer",3,3,20,[4],L,45,12,2.4,1,15,80,230,40,1.5,1,1,50,4,30,45,"units",20,30,"hp",null,0,"gaul_arrow",55,"whip",{},"The primary ranged unit for the Gallic Tribes.","Ranged Arrows\nWeak against Melee");
         addUnit("gaul","berserk","Berserker",4,3,0,[4,8],C,150,7,1.9,1,20,78,20,20,1.2,1.4,1.2,90,5,20,30,"speed",30,45,"atk",null,0,null,0,"cut",{},"Medium armor and fast, powerful melee attacks.","Strong Melee\nWeak against Range");
         addUnit("gaul","flag","Shaman",5,0,0,[4],E,50,0,1.4,1,15,80,0,0,1.4,1.4,1.4,100,8,20,30,"speed",30,45,"range","atk",100,null,0,"none",{},"Boosts valor in allies, raising attack damage from a distance.","Boosts allies Damage\nWeak against Everything");
         addUnit("gaul","boar","Boar Rider",3,3,33,[4],C,280,35,3,1,60,120,45,40,1,1.6,1.2,180,15,30,45,"speed",50,75,"hp",null,0,null,0,"blunt",{"noSkel":true},"Heavy armor and a powerful hammer attack that hits multiple enemies.","Heavy Melee\nWeak against Ranged");
         addUnit("gaul","mace","Mace Rider",3,3,0,[3],L,190,14,3,1,60,120,150,30,1.2,1.4,1,160,13,30,45,"speed",50,75,"atk",null,0,null,0,"cut",{
            "noSkel":true,
            "pierce":true
         },"Medium armor and a mace attack that damages all enemies in its path.","Heavy Ranged\nHits enemies in a Line");
         addUnit("gaul","giant","Behemoth",5,4,33,[4],C,500,50,1,1,50,120,45,40,1.3,1.3,1.3,250,20,70,105,"units",60,90,"hp",null,0,null,0,"whop",{
            "noSkel":true,
            "shake":[1,3],
            "pierce":true
         },"A devastating melee attack that hits multiple enemies and massive armor.","Walking Tank\nHits all enemies in Range");
         addUnit("gaul","general","Vercing",3,3,0,[5],G,9999,24,8,1,60,120,80,50,1,1,1,200,30,0,0,"general",0,0,"general",null,0,null,0,"ice",{
            "noSkel":true,
            "atkEffect":{
               "eff":"generalIce",
               "xoff":0,
               "yoff":1,
               "yimg":-40
            }
         },"","Heavy Damage\nShares Base Health\nTakes 3x Damage");
         addUnit("gaul","horse","Legionary",2,3,33,[4],C,300,18,3.5,1,50,120,45,40,1,1.5,1.5,70,16,20,30,"hp",20,30,"range",null,0,null,0,"horse",{
            "noSkel":true,
            "pierce":true
         },"Mounted unit, capable of getting to the battle quickly, and hitting many units at once.","");
         addUnit("merc","bmage","Battle Mage",4,3,15,[3],M,2000,45,1.5,1,15,75,350,900,0.5,0.5,0.5,130,5,20,30,"units",20,30,"hp",null,0,"egyp_magicbolt",60,"mage",{"maxHeal":75},"The lightly armored archer is main source of ranged attacks.","");
         addUnit("boar","small","Baby Boar",3,3,30,[4],C,55,8,3.5,1,30,60,35,20,1,1,1,0,4,20,30,"atk",20,30,"hp",null,0,null,0,"blunt",{},"Smallest and weakest of the Boar hoard.","Weak Melee\nFast movement");
         addUnit("boar","med","Grown Boar",3,3,30,[4],C,85,12,3.2,1,40,70,40,25,1,1,1,0,9,30,45,"atk",30,45,"hp",null,0,null,0,"blunt",{},"A good balance between attack power and movement speed.","Average Melee\nBalanced");
         addUnit("boar","big","Warrior Boar",4,3,30,[4],C,150,16,2.8,1,50,80,45,30,1,1,1,0,18,50,75,"atk",50,75,"hp",null,0,null,0,"blunt",{},"Battle hardened boar, slow, but powerful.","Strong Melee\nSlow movement");
         addUnit("boar","general","Boaretheus",2,3,0,[4],G,9999,32,7,1,60,120,60,50,1,1,1,0,30,0,0,"general",0,0,"general",null,0,null,0,"blunt",{"noSkel":true},"","Heavy Damage\nShares Base Health\nTakes 3x Damage");
         addUnit("juice","juice","Juice-Tin",2,3,0,[4],G,9999,25,3.5,1,15,70,80,25,1,1,1,0,30,0,0,"general",0,0,"general",null,0,null,0,"blunt",{
            "noSkel":true,
            "pierce":true
         },"","Heavy Damage\nShares Base Health\nTakes 3x Damage");
         addUnit("sleva","sleva","Mike Sleva",2,3,33,[4],G,9999,40,3.5,1,15,70,35,20,1,1,1,0,30,0,0,"general",0,0,"general",null,0,null,0,"cut",{"noSkel":true},"","Heavy Damage\nShares Base Health\nTakes 3x Damage");
      }
   }
}

if(true)
{
   UnitStats = §§newclass(UnitStats,Object);
}

