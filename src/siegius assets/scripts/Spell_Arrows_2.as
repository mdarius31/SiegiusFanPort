package
{
   public class Spell_Arrows extends FakeMC
   {
      
      private var obs:Array;
      
      private var playedSound:Boolean;
      
      public var game:*;
      
      public var stats:SpellType;
      
      private var upgrade:UpgradeType;
      
      private var dmgRan:Number;
      
      public var depthFix:uint;
      
      private var side:uint;
      
      public var upNum:uint;
      
      private var dmgMin:Number;
      
      public function Spell_Arrows(param1:*, param2:uint, param3:Number, param4:Number, param5:String, param6:String, param7:uint)
      {
         var _loc8_:* = 0;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:* = 0;
         var _loc13_:* = NaN;
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
                           depthFix = UT.irand(0,1000);
                           if(true)
                           {
                              stats = UnitStats.spell[param5];
                              if(true)
                              {
                                 upgrade = UnitStats.upgrades[param6];
                                 if(true)
                                 {
                                    upNum = param7;
                                    if(true)
                                    {
                                       dmgMin = stats.atk * 0.8;
                                       if(true)
                                       {
                                          dmgRan = stats.atk * 0.4;
                                          if(true)
                                          {
                                             §§push(20);
                                             if(true)
                                             {
                                                _loc8_ = §§pop();
                                                if(upgrade.id == "units")
                                                {
                                                }
                                             }
                                             addr192:
                                             _loc12_ = §§pop();
                                          }
                                          §§push(_loc8_);
                                          if(true)
                                          {
                                             §§push(upgrade);
                                             if(true)
                                             {
                                                addr149:
                                                §§push("upMod");
                                                if(true)
                                                {
                                                   §§push(uint(§§pop() * §§pop()[§§pop() + upNum]));
                                                   if(true)
                                                   {
                                                      _loc8_ = §§pop();
                                                   }
                                                   addr147:
                                                   §§push(upgrade);
                                                }
                                                §§push(uint(§§pop() * §§pop()[§§pop() + upNum]));
                                             }
                                             §§goto(addr149);
                                             §§push("upMod");
                                          }
                                          _loc8_ = §§pop();
                                       }
                                       §§push(stats);
                                       if(true)
                                       {
                                          §§push(§§pop().rangeY);
                                          if(true)
                                          {
                                             _loc9_ = §§pop();
                                          }
                                          addr137:
                                          _loc10_ = §§pop();
                                       }
                                       addr136:
                                       §§goto(addr137);
                                       §§push(§§pop().rangeX);
                                    }
                                    §§goto(addr136);
                                    §§push(stats);
                                 }
                                 _loc11_ = 1;
                              }
                              if(upgrade.id == "range")
                              {
                              }
                           }
                           §§goto(addr147);
                           §§push(_loc8_);
                        }
                        §§push(_loc11_);
                        §§push(upgrade);
                        if(true)
                        {
                           §§push("upMod");
                           §§push(upNum);
                           if(true)
                           {
                              _loc11_ = §§pop() * §§pop()[§§pop() + §§pop()];
                           }
                           addr181:
                           _loc10_ = §§pop() * §§pop()[§§pop() + §§pop()];
                        }
                        addr179:
                        §§goto(addr181);
                        §§push("upMod");
                        §§push(upNum);
                     }
                     _loc9_ *= upgrade["upMod" + upNum];
                  }
                  §§goto(addr179);
                  §§push(_loc10_);
                  §§push(upgrade);
               }
               obs = new Array();
            }
            §§goto(addr192);
            §§push(0);
         }
         for(; _loc12_ < _loc8_; _loc12_ = §§pop())
         {
            if(side == 0)
            {
               §§push(x - _loc10_ * 0.65);
               if(true)
               {
                  §§push(§§pop() - 150);
                  if(true)
                  {
                     _loc13_ = §§pop();
                  }
                  obs.push({
                     "x":x,
                     "y":y + Math.random() * _loc9_ - _loc9_ * 0.5,
                     "imgX":_loc13_,
                     "imgY":-800 + Math.random() * (-3000 * _loc11_)
                  });
                  addr221:
                  §§push(_loc12_ + 1);
               }
               continue;
            }
            §§push(x + _loc10_ * 0.65 + 150);
            _loc13_ = §§pop();
            §§goto(addr221);
         }
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:uint = 0;
         if(!obs.length)
         {
            remove = true;
            return;
         }
         if(side == 0)
         {
            _loc1_ = 0;
            loop0:
            while(true)
            {
               if(_loc1_ < obs.length)
               {
                  if(obs[_loc1_].imgY < obs[_loc1_].y - 50)
                  {
                     if(true)
                     {
                        §§push(!game.cmpPause);
                        §§push(!game.cmpPause);
                        if(true)
                        {
                           if(§§pop())
                           {
                              §§pop();
                              if(true)
                              {
                                 §§push(!game.pause);
                              }
                              loop5:
                              while(true)
                              {
                                 if(_loc1_ < obs.length)
                                 {
                                    if(obs[_loc1_].imgY < obs[_loc1_].y - 50)
                                    {
                                       while(true)
                                       {
                                          §§push(!game.cmpPause);
                                          §§push(!game.cmpPause);
                                       }
                                       addr270:
                                    }
                                    else
                                    {
                                       _loc2_ = 0;
                                       while(true)
                                       {
                                          addr387:
                                          loop4:
                                          for(; _loc2_ < game.units0.length; break loop0)
                                          {
                                             if(game.units0[_loc2_].dead)
                                             {
                                                while(true)
                                                {
                                                   continue loop4;
                                                }
                                                addr330:
                                             }
                                             else if(game.units0[_loc2_] is Unit_Miner)
                                             {
                                                while(true)
                                                {
                                                   continue loop4;
                                                }
                                                addr338:
                                             }
                                             else
                                             {
                                                §§push(UT.getDist(obs[_loc1_].imgX,obs[_loc1_].y,game.units0[_loc2_].x,game.units0[_loc2_].y));
                                                §§push(15);
                                                §§push(game.units0[_loc2_].stats.wdth * 1.7);
                                             }
                                          }
                                          addr392:
                                          while(true)
                                          {
                                             game.createEffect(obs[_loc1_].imgX + 8,obs[_loc1_].y + 1,-20,false,"arrowFall2");
                                             addr409:
                                             while(true)
                                             {
                                                obs.splice(_loc1_,1);
                                                addr420:
                                                while(true)
                                                {
                                                }
                                             }
                                          }
                                       }
                                       addr322:
                                    }
                                    while(true)
                                    {
                                       _loc1_++;
                                       continue loop5;
                                    }
                                    addr421:
                                 }
                              }
                              addr425:
                           }
                           if(§§pop())
                           {
                              if(true)
                              {
                                 obs[_loc1_].imgY += 50;
                                 if(true)
                                 {
                                    obs[_loc1_].imgX += 8;
                                    if(true)
                                    {
                                    }
                                    §§goto(addr392);
                                 }
                                 §§goto(addr409);
                              }
                              §§goto(addr420);
                           }
                           game.screen.paintObject(obs[_loc1_].imgX - 13,obs[_loc1_].imgY - 80,BH.getBit("spellArrow"));
                           if(true)
                           {
                              addr243:
                              _loc1_++;
                              if(true)
                              {
                                 continue;
                              }
                           }
                           else
                           {
                              §§goto(addr387);
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§pop();
                              while(true)
                              {
                                 §§push(!game.pause);
                              }
                              addr276:
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    obs[_loc1_].imgY += 50;
                                    addr290:
                                    while(true)
                                    {
                                       obs[_loc1_].imgX -= 8;
                                    }
                                 }
                                 addr280:
                              }
                              addr300:
                              while(true)
                              {
                                 game.screen.paintObject(obs[_loc1_].imgX - 13,obs[_loc1_].imgY - 80,BH.getBit("spellArrow2"));
                                 addr318:
                                 while(true)
                                 {
                                    §§goto(addr421);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr429);
                  }
                  _loc2_ = 0;
                  if(true)
                  {
                     while(true)
                     {
                        if(_loc2_ >= game.units1.length)
                        {
                           if(true)
                           {
                              if(!playedSound)
                              {
                                 if(true)
                                 {
                                    playedSound = true;
                                    if(true)
                                    {
                                       playSound(x,S_Arrows);
                                       if(true)
                                       {
                                       }
                                       §§goto(addr276);
                                    }
                                    §§goto(addr280);
                                 }
                                 §§goto(addr290);
                              }
                              game.createEffect(obs[_loc1_].imgX + 8,obs[_loc1_].y + 1,-20,false,"arrowFall");
                              if(true)
                              {
                                 obs.splice(_loc1_,1);
                                 if(true)
                                 {
                                    §§goto(addr243);
                                 }
                                 §§goto(addr429);
                              }
                              §§goto(addr270);
                           }
                           §§goto(addr300);
                        }
                        else
                        {
                           if(game.units1[_loc2_].dead)
                           {
                              if(true)
                              {
                                 addr182:
                                 _loc2_++;
                                 if(true)
                                 {
                                    continue;
                                 }
                              }
                           }
                           else
                           {
                              if(!(game.units1[_loc2_] is Unit_Miner))
                              {
                                 §§push(UT.getDist(obs[_loc1_].imgX,obs[_loc1_].y,game.units1[_loc2_].x,game.units1[_loc2_].y));
                                 §§push(15);
                                 §§push(game.units1[_loc2_].stats.wdth * 1.7);
                                 if(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(true)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(true)
                                          {
                                             game.units1[_loc2_].damage(Math.random() * dmgRan + dmgMin,stats.atkTyp);
                                             if(true)
                                             {
                                             }
                                             §§goto(addr322);
                                          }
                                          §§goto(addr330);
                                       }
                                    }
                                    while(§§pop() >= §§pop())
                                    {
                                    }
                                    break loop0;
                                    addr369:
                                 }
                                 break;
                              }
                              if(true)
                              {
                              }
                              §§goto(addr338);
                              §§goto(addr182);
                           }
                           while(true)
                           {
                              game.units0[_loc2_].damage(Math.random() * dmgRan + dmgMin,stats.atkTyp);
                              break loop0;
                           }
                        }
                        §§goto(addr318);
                     }
                  }
                  break;
                  while(true)
                  {
                     §§goto(addr369);
                  }
               }
               addr429:
               return;
            }
            while(true)
            {
               _loc2_++;
               §§goto(addr387);
            }
         }
         else
         {
            _loc1_ = 0;
         }
         §§goto(addr425);
      }
      
      public function playSound(param1:Number, param2:*) : void
      {
         var _loc3_:* = NaN;
         if(true)
         {
            §§push(Number(game.isOnScreen(param1)));
            if(true)
            {
               _loc3_ = §§pop();
               addr32:
               if(true)
               {
                  §§push(_loc3_);
               }
               SH.playUnitSound(null,_loc3_,param2);
            }
            if(!§§pop())
            {
               return;
            }
            §§goto(addr32);
         }
      }
   }
}

