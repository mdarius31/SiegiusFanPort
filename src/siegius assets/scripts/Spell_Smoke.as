package
{
   public class Spell_Smoke extends FakeMC
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
      
      public function Spell_Smoke(param1:*, param2:uint, param3:Number, param4:Number, param5:String, param6:String, param7:uint)
      {
         var _loc8_:Number = NaN;
         var _loc9_:Object = null;
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
         eff0 = game.createControlledEffect(x,y,0,false,"gliphNosmoke","fall",1,doIdle,true);
         _loc8_ = UT.rand(30,60);
         eff1 = game.createControlledEffect(x - _loc8_,y - _loc8_,-74,false,"smokeBomb","fall",1);
         _loc8_ = UT.rand(30,60);
         eff2 = game.createControlledEffect(x - _loc8_,y + _loc8_,-74,false,"smokeBomb","fall",1);
         _loc8_ = UT.rand(30,60);
         eff3 = game.createControlledEffect(x + _loc8_,y - _loc8_,-74,false,"smokeBomb","fall",1);
         _loc8_ = UT.rand(30,60);
         eff4 = game.createControlledEffect(x + _loc8_,y + _loc8_,-74,false,"smokeBomb","fall",1);
         eff0.spell = this;
         _loc9_ = BH.getBitWithStats(eff0.eff,eff0.state,1);
         if(true)
         {
            width = _loc9_.width;
            if(true)
            {
               height = _loc9_.height;
            }
            playSound(x,S_Smoke);
         }
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
               eff4.changeEffect(false,"smokeBomb","fade",1);
            }
            else if(active)
            {
               if(true)
               {
                  var _loc1_:*;
                  var _loc2_:* = (_loc1_ = §§findproperty(frameCounter)).frameCounter + 1;
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
                        eff0.changeEffect(false,"gliphNosmoke","fade",1,doEnd);
                     }
                     §§goto(addr92);
                  }
                  eff1.changeEffect(false,"smokeBomb","fade",1);
               }
               eff2.changeEffect(false,"smokeBomb","fade",1);
               eff3.changeEffect(false,"smokeBomb","fade",1);
               §§goto(addr86);
            }
         }
         addr92:
      }
      
      public function playSound(param1:Number, param2:*) : void
      {
         var _loc3_:Number = NaN;
         _loc3_ = Number(game.isOnScreen(param1));
         if(!_loc3_)
         {
            return;
         }
         SH.playUnitSound(null,_loc3_,param2);
      }
      
      public function doEnd() : void
      {
         if(true)
         {
            §§push(eff0);
            §§push(false);
            if(true)
            {
               §§pop().changeEffect(§§pop(),"gliphNosmoke","nothing",1);
               if(true)
               {
                  §§push(eff1);
                  if(true)
                  {
                     §§pop().changeEffect(false,"smokeBomb","nothing",1);
                     if(true)
                     {
                        eff2.changeEffect(false,"smokeBomb","nothing",1);
                        if(true)
                        {
                           §§push(eff3);
                           if(true)
                           {
                              §§push(false);
                              if(true)
                              {
                                 §§pop().changeEffect(§§pop(),"smokeBomb","nothing",1);
                                 if(true)
                                 {
                                    eff4.changeEffect(false,"smokeBomb","nothing",1);
                                    if(true)
                                    {
                                       addr68:
                                       eff0.remove = true;
                                    }
                                    addr70:
                                    eff1.remove = true;
                                 }
                                 eff2.remove = true;
                                 addr83:
                                 §§push(eff3);
                                 §§push(true);
                              }
                              §§pop().remove = §§pop();
                              §§goto(addr85);
                           }
                        }
                        §§goto(addr83);
                     }
                     addr85:
                     eff4.remove = true;
                     §§goto(addr88);
                  }
                  §§goto(addr70);
               }
               addr88:
               remove = true;
               return;
            }
            §§goto(addr68);
         }
         §§goto(addr85);
      }
      
      public function doIdle() : void
      {
         eff0.changeEffect(false,"gliphNosmoke","idle",1);
         eff1.changeEffect(false,"smokeBomb","idle",1);
         eff2.changeEffect(false,"smokeBomb","idle",1);
         eff3.changeEffect(false,"smokeBomb","idle",1);
         eff4.changeEffect(false,"smokeBomb","idle",1);
         active = true;
      }
   }
}
