package
{
   public class Spell_NoMagic extends FakeMC
   {
      
      private var eff0:EffectControlled;
      
      public var active:Boolean;
      
      public var game:*;
      
      public var stats:SpellType;
      
      private var upgrade:UpgradeType;
      
      public var height:Number;
      
      public var width:Number;
      
      private var frameCounter:uint;
      
      public var depthFix:uint;
      
      private var side:uint;
      
      public var upNum:uint;
      
      private var eff1:EffectControlled;
      
      private var eff2:EffectControlled;
      
      private var eff4:EffectControlled;
      
      private var eff3:EffectControlled;
      
      public function Spell_NoMagic(param1:*, param2:uint, param3:Number, param4:Number, param5:String, param6:String, param7:uint)
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
         eff0 = game.createControlledEffect(x,y,0,false,"gliphNomagic","fall",1,doIdle,true);
         eff1 = game.createControlledEffect(x - 75,y - 75,-74,false,"staffNomagic","fall",1);
         eff2 = game.createControlledEffect(x - 75,y + 75,-74,false,"staffNomagic","fall",1);
         eff3 = game.createControlledEffect(x + 75,y - 75,-74,false,"staffNomagic","fall",1);
         eff4 = game.createControlledEffect(x + 75,y + 75,-74,false,"staffNomagic","fall",1);
         eff0.spell = this;
         _loc8_ = BH.getBitWithStats(eff0.eff,eff0.state,1);
         width = _loc8_.width;
         height = _loc8_.height;
         playSound(x,S_NoMagic);
      }
      
      public function EnterFrame() : void
      {
         if(true)
         {
            if(remove)
            {
               if(true)
               {
                  return;
               }
               addr86:
               eff4.changeEffect(false,"staffNomagic","fade",1);
            }
            else if(active)
            {
               if(true)
               {
                  var _loc1_:* = §§findproperty(frameCounter);
                  var _loc2_:* = _loc1_.frameCounter + 1;
                  if(true)
                  {
                     _loc1_.frameCounter = _loc2_;
                  }
                  if(true)
                  {
                     if(frameCounter == 5 * 30)
                     {
                        if(true)
                        {
                           active = false;
                        }
                        eff0.changeEffect(false,"gliphNomagic","fade",1,doEnd);
                     }
                  }
                  eff1.changeEffect(false,"staffNomagic","fade",1);
               }
               eff2.changeEffect(false,"staffNomagic","fade",1);
               eff3.changeEffect(false,"staffNomagic","fade",1);
               §§goto(addr86);
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
         §§push(eff0);
         §§push(false);
         if(true)
         {
            §§pop().changeEffect(§§pop(),"gliphNomagic","nothing",1);
            §§goto(addr55);
         }
         §§pop().remove = §§pop();
         addr55:
         §§push(eff1);
         §§push(false);
         if(true)
         {
            §§pop().changeEffect(§§pop(),"staffNomagic","nothing",1);
            eff2.changeEffect(false,"staffNomagic","nothing",1);
            eff3.changeEffect(false,"staffNomagic","nothing",1);
            eff4.changeEffect(false,"staffNomagic","nothing",1);
            §§push(eff0);
            §§push(true);
         }
         §§pop().remove = §§pop();
         eff2.remove = true;
         eff3.remove = true;
         eff4.remove = true;
         remove = true;
         eff1;
         true;
      }
      
      public function doIdle() : void
      {
         eff0.changeEffect(false,"gliphNomagic","idle",1);
         eff1.changeEffect(false,"staffNomagic","idle",1);
         eff2.changeEffect(false,"staffNomagic","idle",1);
         eff3.changeEffect(false,"staffNomagic","idle",1);
         eff4.changeEffect(false,"staffNomagic","idle",1);
         active = true;
      }
   }
}

if(true)
{
   Spell_NoMagic = §§newclass(Spell_NoMagic,FakeMC);
}

