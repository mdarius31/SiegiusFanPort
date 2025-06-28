package
{
   public class Spell_Defense extends FakeMC
   {
      
      public var upNum:uint;
      
      public var depthFix:uint;
      
      private var side:uint;
      
      public var game:*;
      
      public var stats:SpellType;
      
      private var upgrade:UpgradeType;
      
      public function Spell_Defense(param1:*, param2:uint, param3:Number, param4:Number, param5:String, param6:String, param7:uint)
      {
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
                     }
                     depthFix = UT.irand(0,1000);
                  }
                  stats = UnitStats.spell[param5];
               }
               upgrade = UnitStats.upgrades[param6];
            }
            upNum = param7;
         }
         var _loc8_:uint = upNum;
         §§push(1);
         §§push(_loc8_);
         if(true)
         {
            §§goto(addr141);
         }
         addr141:
         switch(§§pop() === §§pop() ? 0 : (2 === _loc8_ ? 1 : (§§push(3), _loc8_)))
         {
            case 0:
               if(side == 0)
               {
                  playSound(S_Heal);
                  game.hud.heal(0.25);
               }
               else
               {
                  game.enemy.heal(0.25);
               }
               break;
            case 1:
               if(side == 0)
               {
                  playSound(S_Heal);
                  game.hud.heal(0.75);
               }
               else
               {
                  game.enemy.heal(0.75);
               }
               break;
            case 2:
               if(side == 0)
               {
                  playSound(S_GetArch);
                  game.hud.addArcher();
               }
               else
               {
                  game.enemy.addArcher();
               }
         }
         remove = true;
         §§pop() === §§pop() ? 2 : 3;
      }
      
      public function EnterFrame() : void
      {
      }
      
      public function playSound(param1:*) : void
      {
         SH.playUnitSound(null,0,param1);
      }
   }
}

if(true)
{
   Spell_Defense = §§newclass(Spell_Defense,FakeMC);
}

