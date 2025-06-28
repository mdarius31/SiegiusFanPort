package
{
   public class Spell_Syphon extends FakeMC
   {
      
      private var eff0:EffectControlled;
      
      public var active:Boolean;
      
      public var game:*;
      
      public var stats:SpellType;
      
      private var upgrade:UpgradeType;
      
      public var height:Number;
      
      public var width:Number;
      
      private var frameCounter:uint;
      
      private var side:uint;
      
      public var upNum:uint;
      
      private var eff1:EffectControlled;
      
      private var eff2:EffectControlled;
      
      private var eff4:EffectControlled;
      
      private var eff3:EffectControlled;
      
      public function Spell_Syphon(param1:*, param2:uint, param3:Number, param4:Number, param5:String, param6:String, param7:uint)
      {
         var _loc8_:Object = null;
         if(true)
         {
            super();
            if(true)
            {
               game = param1;
               if(true)
               {
                  side = param2;
                  if(true)
                  {
                     x = param3;
                     if(true)
                     {
                        y = param4;
                        if(true)
                        {
                           stats = UnitStats.spell[param5];
                        }
                        upgrade = UnitStats.upgrades[param6];
                     }
                     upNum = param7;
                  }
                  frameCounter = 0;
               }
               eff0 = game.createControlledEffect(x,y,0,false,"gliphSyphon","fall",1,doIdle,true);
            }
            eff0.spell = this;
         }
         _loc8_ = BH.getBitWithStats(eff0.eff,eff0.state,1);
         width = _loc8_.width;
         height = _loc8_.height;
      }
      
      public function EnterFrame() : void
      {
         if(remove)
         {
            return;
         }
         if(active)
         {
            var _loc1_:* = §§findproperty(frameCounter);
            var _loc2_:* = _loc1_.frameCounter + 1;
            _loc1_.frameCounter = _loc2_;
            if(frameCounter == 5 * 30)
            {
               active = false;
               eff0.changeEffect(false,"gliphSyphon","fade",1,doEnd);
            }
         }
      }
      
      public function doEnd() : void
      {
         eff0.changeEffect(false,"gliphSyphon","nothing",1);
         remove = true;
      }
      
      public function doIdle() : void
      {
         eff0.changeEffect(false,"gliphSyphon","idle",1);
         active = true;
      }
   }
}

if(true)
{
   Spell_Syphon = §§newclass(Spell_Syphon,FakeMC);
}

