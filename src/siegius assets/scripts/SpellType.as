package
{
   public class SpellType
   {
       
      
      public var upbExp2:uint;
      
      public var upbExp3:uint;
      
      public var upgradeb:UpgradeType;
      
      public var desc2:String;
      
      public var name:String;
      
      public var cost:uint;
      
      public var desc:String;
      
      public var atkTyp:uint;
      
      public var duration:Number;
      
      public var atk:uint;
      
      public var id:String;
      
      public var upgrade:UpgradeType;
      
      public var cls:*;
      
      public var cooldown:Number;
      
      public var upExp3:uint;
      
      public var upExp2:uint;
      
      public var rangeX:uint;
      
      public var rangeY:uint;
      
      public function SpellType(param1:String, param2:String, param3:uint, param4:uint, param5:Number, param6:uint, param7:uint, param8:uint, param9:Number, param10:uint, param11:uint, param12:UpgradeType, param13:uint, param14:uint, param15:UpgradeType, param16:*, param17:String, param18:String)
      {
         super();
         id = param1;
         name = param2;
         atkTyp = param3;
         atk = param4;
         duration = param5;
         rangeX = param6;
         rangeY = param7;
         cost = param8;
         cooldown = param9;
         upExp2 = param10;
         upExp3 = param11;
         upgrade = param12;
         upbExp2 = param13;
         upbExp3 = param14;
         upgradeb = param15;
         cls = param16;
         desc = param17;
         desc2 = param18;
      }
   }
}
