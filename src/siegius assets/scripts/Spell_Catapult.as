
{
   if(true)
   {
      Spell_Catapult = §§newclass(Spell_Catapult,FakeMC);
   }
}

package
{
   public class Spell_Catapult extends FakeMC
   {
       
      
      private var obs:Array;
      
      public var game:*;
      
      public var stats:SpellType;
      
      private var upgrade:UpgradeType;
      
      private var dmgRan:Number;
      
      public var depthFix:uint;
      
      private var side:uint;
      
      public var upNum:uint;
      
      private var dmgMin:Number;
      
      public function Spell_Catapult(param1:*, param2:uint, param3:Number, param4:Number, param5:String, param6:String, param7:uint)
      {
         var _loc8_:uint = 0;
         var _loc9_:* = NaN;
         var _loc10_:uint = 0;
         super();
         game = param1;
         side = param2;
         x = param3;
         y = param4;
         depthFix = UT.irand(0,1000);
         stats = UnitStats.spell[param5];
         upgrade = UnitStats.upgrades[param6];
         upNum = param7;
         dmgMin = stats.atk * 0.8;
         dmgRan = stats.atk * 0.4;
         §§push(upgrade.id);
         if(true)
         {
            if(§§pop() == "atk")
            {
               dmgMin *= upgrade["upMod" + upNum];
               §§push(§§findproperty(dmgRan));
               §§push(dmgRan);
               if(true)
               {
                  §§push(§§pop() * upgrade["upMod" + upNum]);
               }
               §§pop().dmgRan = §§pop();
            }
            _loc8_ = 3;
            §§push(5000);
            if(true)
            {
               _loc9_ = §§pop();
               §§goto(addr107);
            }
            §§goto(addr128);
         }
         addr107:
         if(upgrade.id == "units")
         {
            addr128:
            §§push(_loc8_ * upgrade["upMod" + upNum]);
            if(true)
            {
               _loc8_ = §§pop();
               §§push(_loc9_ * upgrade["upMod" + upNum]);
            }
            _loc9_ = §§pop();
         }
         obs = new Array();
         _loc10_ = 0;
         while(_loc10_ < _loc8_)
         {
            obs.push({
               "x":x + Math.random() * stats.rangeX - stats.rangeX * 0.5,
               "y":y + Math.random() * stats.rangeY - stats.rangeY * 0.5,
               "imgX":x,
               "imgY":-1000 + Math.random() * -_loc9_
            });
            if(false)
            {
               break;
            }
            _loc10_++;
         }
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:uint = 0;
         if(true)
         {
            if(!obs.length)
            {
               if(true)
               {
                  remove = true;
                  return;
               }
            }
            _loc1_ = 0;
         }
         loop0:
         for(; _loc1_ < obs.length; _loc1_++)
         {
            if(obs[_loc1_].imgY < obs[_loc1_].y - 50)
            {
               §§push(!game.cmpPause);
               if(true)
               {
                  if(§§pop())
                  {
                     if(true)
                     {
                        §§pop();
                        §§push(!game.pause);
                     }
                     else
                     {
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 _loc2_++;
                                 addr158:
                                 while(_loc2_ < game.units1.length)
                                 {
                                    if(game.units1[_loc2_].dead)
                                    {
                                       continue loop5;
                                    }
                                    §§push(game.units1[_loc2_] is Unit_Miner);
                                    continue loop4;
                                 }
                              }
                              addr154:
                           }
                           else
                           {
                              §§push(UT.getDist(obs[_loc1_].x,obs[_loc1_].y,game.units1[_loc2_].x,game.units1[_loc2_].y));
                              §§push(100);
                              if(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    game.units1[_loc2_].status.flaming = 30 * 4;
                                    game.units1[_loc2_].damage(Math.random() * dmgRan + dmgMin,stats.atkTyp);
                                 }
                                 §§goto(addr154);
                              }
                              else
                              {
                                 loop2:
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       game.units0[_loc2_].status.flaming = 30 * 4;
                                       game.units0[_loc2_].damage(Math.random() * dmgRan + dmgMin,stats.atkTyp);
                                    }
                                    while(true)
                                    {
                                       _loc2_++;
                                       addr239:
                                       loop7:
                                       while(true)
                                       {
                                          if(_loc2_ < game.units0.length)
                                          {
                                             if(game.units0[_loc2_].dead)
                                             {
                                                continue;
                                             }
                                             addr189:
                                             §§push(game.units0[_loc2_] is Unit_Miner);
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   continue loop7;
                                                }
                                                continue loop2;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           var _loc3_:* = UT.irand(1,3);
                           if(true)
                           {
                              if(1 === _loc3_)
                              {
                                 addr300:
                                 switch(true ? 0 : 1)
                                 {
                                    case 0:
                                       playSound(obs[_loc1_].x,S_CataExplo1);
                                       break;
                                    case 1:
                                       playSound(obs[_loc1_].x,S_CataExplo2);
                                       break;
                                    case 2:
                                       playSound(obs[_loc1_].x,S_CataExplo3);
                                 }
                                 game.createEffect(obs[_loc1_].x,obs[_loc1_].y + 10,-80,false,"potExplosion");
                                 obs.splice(_loc1_,1);
                                 game.shake.setShake(2,5);
                                 continue loop0;
                              }
                              if(2 === _loc3_)
                              {
                                 §§goto(addr291);
                              }
                              else
                              {
                                 §§push(3 === _loc3_ ? 2 : 3);
                              }
                              §§goto(addr300);
                              §§goto(addr291);
                           }
                           §§goto(addr296);
                        }
                     }
                  }
                  if(§§pop())
                  {
                     obs[_loc1_].imgY += 50;
                  }
                  game.screen.paintObject(obs[_loc1_].x - 23,obs[_loc1_].imgY - 100,BH.getBit("catapultRock"));
                  continue;
               }
               §§goto(addr189);
            }
            else if(side == 0)
            {
               _loc2_ = 0;
               §§goto(addr158);
            }
            else
            {
               _loc2_ = 0;
            }
            §§goto(addr239);
         }
      }
      
      public function playSound(param1:Number, param2:*) : void
      {
         var _loc3_:* = NaN;
         §§push(Number(game.isOnScreen(param1)));
         if(true)
         {
            _loc3_ = §§pop();
            §§push(_loc3_);
         }
         if(!§§pop())
         {
            return;
         }
         SH.playUnitSound(null,_loc3_,param2);
      }
   }
}
