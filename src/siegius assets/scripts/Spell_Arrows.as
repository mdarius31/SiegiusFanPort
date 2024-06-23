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
         var _loc12_:uint = 0;
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
                                                   addr103:
                                                   §§push(_loc8_);
                                                   if(true)
                                                   {
                                                      §§push(upgrade);
                                                      if(true)
                                                      {
                                                         §§push("upMod");
                                                         if(true)
                                                         {
                                                            §§push(uint(§§pop() * §§pop()[§§pop() + upNum]));
                                                            if(true)
                                                            {
                                                               _loc8_ = §§pop();
                                                               addr120:
                                                               §§push(stats);
                                                               if(true)
                                                               {
                                                                  §§push(§§pop().rangeY);
                                                                  if(true)
                                                                  {
                                                                     _loc9_ = §§pop();
                                                                     addr136:
                                                                     §§push(stats.rangeX);
                                                                  }
                                                                  _loc10_ = §§pop();
                                                                  addr139:
                                                                  _loc11_ = 1;
                                                                  if(upgrade.id == "range")
                                                                  {
                                                                     addr154:
                                                                     _loc8_ *= upgrade["upMod" + upNum];
                                                                     §§push(_loc11_);
                                                                     §§push(upgrade);
                                                                     if(true)
                                                                     {
                                                                        §§push("upMod");
                                                                        §§push(upNum);
                                                                        if(true)
                                                                        {
                                                                           _loc11_ = §§pop() * §§pop()[§§pop() + §§pop()];
                                                                           addr168:
                                                                           _loc9_ *= upgrade["upMod" + upNum];
                                                                           addr179:
                                                                           §§push(_loc10_);
                                                                           §§push(upgrade);
                                                                           §§push("upMod");
                                                                           §§push(upNum);
                                                                        }
                                                                        _loc10_ = §§pop() * §§pop()[§§pop() + §§pop()];
                                                                        addr186:
                                                                        obs = new Array();
                                                                        addr192:
                                                                        _loc12_ = 0;
                                                                        addr193:
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
                                                                                 else
                                                                                 {
                                                                                    addr220:
                                                                                    _loc13_ = §§pop();
                                                                                 }
                                                                                 obs.push({
                                                                                    "x":x,
                                                                                    "y":y + Math.random() * _loc9_ - _loc9_ * 0.5,
                                                                                    "imgX":_loc13_,
                                                                                    "imgY":-800 + Math.random() * (-3000 * _loc11_)
                                                                                 });
                                                                                 §§push(_loc12_ + 1);
                                                                              }
                                                                              continue;
                                                                           }
                                                                           §§push(x + _loc10_ * 0.65 + 150);
                                                                           §§goto(addr220);
                                                                        }
                                                                        return;
                                                                        addr190:
                                                                     }
                                                                     §§goto(addr179);
                                                                     addr147:
                                                                     addr149:
                                                                     addr148:
                                                                     addr146:
                                                                  }
                                                                  §§goto(addr186);
                                                               }
                                                               §§goto(addr136);
                                                            }
                                                            §§goto(addr147);
                                                         }
                                                         §§goto(addr149);
                                                      }
                                                      §§goto(addr148);
                                                   }
                                                   §§goto(addr154);
                                                }
                                                §§goto(addr120);
                                             }
                                             §§goto(addr192);
                                          }
                                          §§goto(addr103);
                                       }
                                       §§goto(addr120);
                                    }
                                    §§goto(addr136);
                                 }
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr154);
                     }
                  }
                  §§goto(addr168);
               }
               §§goto(addr186);
            }
            §§goto(addr190);
         }
         §§goto(addr193);
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
                  if(obs[_loc1_].imgY >= obs[_loc1_].y - 50)
                  {
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
                                             addr217:
                                             game.createEffect(obs[_loc1_].imgX + 8,obs[_loc1_].y + 1,-20,false,"arrowFall");
                                             if(true)
                                             {
                                                obs.splice(_loc1_,1);
                                                if(true)
                                                {
                                                   §§goto(addr243);
                                                }
                                                else
                                                {
                                                   addr257:
                                                   §§goto(addr425);
                                                }
                                             }
                                             §§goto(addr270);
                                          }
                                          §§goto(addr276);
                                       }
                                       §§goto(addr280);
                                    }
                                    §§goto(addr290);
                                 }
                                 §§goto(addr217);
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
                                    §§goto(addr318);
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
                                                   §§goto(addr182);
                                                }
                                                §§goto(addr322);
                                             }
                                             §§goto(addr330);
                                          }
                                          §§goto(addr182);
                                       }
                                       §§goto(addr369);
                                    }
                                    break;
                                 }
                                 if(true)
                                 {
                                    §§goto(addr182);
                                 }
                                 §§goto(addr338);
                                 §§goto(addr182);
                              }
                              §§goto(addr370);
                           }
                        }
                        §§goto(addr368);
                     }
                     break;
                  }
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
                              addr56:
                              if(!game.pause)
                              {
                                 if(true)
                                 {
                                    obs[_loc1_].imgY += 50;
                                    if(true)
                                    {
                                       obs[_loc1_].imgX += 8;
                                       if(true)
                                       {
                                          addr83:
                                          game.screen.paintObject(obs[_loc1_].imgX - 13,obs[_loc1_].imgY - 80,BH.getBit("spellArrow"));
                                          if(true)
                                          {
                                             addr243:
                                             _loc1_++;
                                             if(true)
                                             {
                                                continue;
                                             }
                                             addr429:
                                             return;
                                             addr253:
                                          }
                                          else
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
                                                   addr368:
                                                   §§push(UT.getDist(obs[_loc1_].imgX,obs[_loc1_].y,game.units0[_loc2_].x,game.units0[_loc2_].y));
                                                   §§push(15);
                                                   §§push(game.units0[_loc2_].stats.wdth * 1.7);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr369:
                                                      while(true)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            continue loop4;
                                                         }
                                                         while(true)
                                                         {
                                                            game.units0[_loc2_].damage(Math.random() * dmgRan + dmgMin,stats.atkTyp);
                                                            continue loop4;
                                                         }
                                                      }
                                                   }
                                                   addr368:
                                                }
                                             }
                                             addr387:
                                          }
                                          §§goto(addr429);
                                       }
                                       while(true)
                                       {
                                          game.createEffect(obs[_loc1_].imgX + 8,obs[_loc1_].y + 1,-20,false,"arrowFall2");
                                       }
                                    }
                                    while(true)
                                    {
                                       obs.splice(_loc1_,1);
                                    }
                                 }
                                 while(true)
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       _loc1_++;
                                       addr425:
                                       while(true)
                                       {
                                          if(_loc1_ >= obs.length)
                                          {
                                             break loop3;
                                          }
                                          if(obs[_loc1_].imgY < obs[_loc1_].y - 50)
                                          {
                                             while(true)
                                             {
                                                §§push(!game.cmpPause);
                                                §§push(!game.cmpPause);
                                                addr274:
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
                                                         continue loop3;
                                                      }
                                                   }
                                                }
                                             }
                                             addr270:
                                          }
                                          else
                                          {
                                             _loc2_ = 0;
                                             while(true)
                                             {
                                                §§goto(addr387);
                                             }
                                             addr322:
                                          }
                                          continue loop3;
                                       }
                                    }
                                    §§goto(addr429);
                                 }
                              }
                              §§goto(addr83);
                           }
                           §§goto(addr425);
                        }
                        §§goto(addr56);
                     }
                     §§goto(addr274);
                  }
                  §§goto(addr429);
                  §§goto(addr368);
               }
               §§goto(addr253);
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
         §§goto(addr257);
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
               if(true)
               {
                  addr30:
                  if(!_loc3_)
                  {
                     return;
                  }
               }
               SH.playUnitSound(null,_loc3_,param2);
               §§goto(addr37);
            }
            §§goto(addr30);
         }
         addr37:
      }
   }
}
