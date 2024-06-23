package
{
   public class Spell_Ice extends FakeMC
   {
       
      
      public var active:Boolean;
      
      public var game:*;
      
      public var stats:SpellType;
      
      private var upgrade:UpgradeType;
      
      public var height:Number;
      
      public var width:Number;
      
      private var frameCounter:uint;
      
      public var depthFix:uint;
      
      private var side:uint;
      
      private var eff:EffectControlled;
      
      public var upNum:uint;
      
      public function Spell_Ice(param1:*, param2:uint, param3:Number, param4:Number, param5:String, param6:String, param7:uint)
      {
         var _loc8_:Object = null;
         super();
         game = param1;
         side = param2;
         x = param3;
         y = param4;
         depthFix = UT.irand(0,1000);
         stats = UnitStats.spell[param5];
         upgrade = UnitStats.upgrades[param6];
         upNum = param7;
         frameCounter = 0;
         eff = game.createControlledEffect(x,y,0,false,"iceFloor","create",1,doIdle,true);
         eff.spell = this;
         _loc8_ = BH.getBitWithStats(eff.eff,eff.state,1);
         width = _loc8_.width;
         height = _loc8_.height;
         game.createEffect(x,y + 10,-80,false,"iceBlast");
         playSound(x,S_Ice);
      }
      
      public function EnterFrame() : void
      {
         if(remove)
         {
            return;
         }
         if(active)
         {
            var _loc1_:*;
            var _loc2_:* = (_loc1_ = §§findproperty(frameCounter)).frameCounter + 1;
            if(true)
            {
               _loc1_.frameCounter = _loc2_;
            }
            if(frameCounter == 5 * 30)
            {
               active = false;
               eff.changeEffect(false,"iceFloor","fade",1,doEnd);
            }
         }
      }
      
      public function playSound(param1:Number, param2:*) : void
      {
         var _loc3_:Number = NaN;
         if(true)
         {
            _loc3_ = Number(game.isOnScreen(param1));
            if(true)
            {
               if(!_loc3_)
               {
                  return;
               }
            }
            SH.playUnitSound(null,_loc3_,param2);
         }
      }
      
      public function doEnd() : void
      {
         eff.changeEffect(false,"iceFloor","nothing");
         eff.remove = true;
         remove = true;
      }
      
      public function doIdle() : void
      {
         eff.changeEffect(false,"iceFloor","idle");
         active = true;
      }
   }
}
