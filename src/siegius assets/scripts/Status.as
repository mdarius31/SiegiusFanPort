
{
   if(true)
   {
      Status = §§newclass(Status,Object);
   }
}

package
{
   public class Status
   {
       
      
      private var unit:*;
      
      public var syphonHeal:uint = 0;
      
      public var atkboost:uint = 0;
      
      public var curse:uint = 0;
      
      public var poison:uint = 0;
      
      public var scarab:uint = 0;
      
      public var onIce:uint = 0;
      
      public var flaming:uint = 0;
      
      private var game:*;
      
      public var noMagic:uint = 0;
      
      public var healing:uint = 0;
      
      public var syphonHurt:uint = 0;
      
      public var noRange:uint = 0;
      
      public function Status(param1:*, param2:*)
      {
         if(true)
         {
            healing = 0;
            if(true)
            {
               curse = 0;
               if(true)
               {
                  atkboost = 0;
                  if(true)
                  {
                     flaming = 0;
                     if(true)
                     {
                        poison = 0;
                        if(true)
                        {
                           scarab = 0;
                           if(true)
                           {
                              onIce = 0;
                              noMagic = 0;
                           }
                           noRange = 0;
                        }
                        syphonHeal = 0;
                     }
                     syphonHurt = 0;
                  }
                  super();
               }
               unit = param1;
            }
            game = param2;
         }
      }
      
      public function MouseUp() : void
      {
      }
      
      public function MouseDown() : void
      {
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:* = undefined;
         if(true)
         {
            §§push(atkboost);
            if(true)
            {
               if(§§pop())
               {
                  if(true)
                  {
                     var _loc3_:*;
                     var _loc4_:* = (_loc3_ = §§findproperty(atkboost)).atkboost - 1;
                     if(true)
                     {
                        _loc3_.atkboost = _loc4_;
                     }
                     if(true)
                     {
                        addr38:
                        §§push(healing);
                        if(true)
                        {
                           if(§§pop())
                           {
                              if(true)
                              {
                                 --healing;
                                 if(true)
                                 {
                                    addr57:
                                    §§push(curse);
                                    if(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(true)
                                          {
                                             --curse;
                                             if(true)
                                             {
                                                addr76:
                                                §§push(flaming);
                                                if(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(true)
                                                      {
                                                         --flaming;
                                                         if(true)
                                                         {
                                                            addr95:
                                                            §§push(poison);
                                                            if(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(true)
                                                                  {
                                                                     _loc4_ = (_loc3_ = §§findproperty(poison)).poison - 1;
                                                                     if(true)
                                                                     {
                                                                        _loc3_.poison = _loc4_;
                                                                     }
                                                                     if(true)
                                                                     {
                                                                        addr116:
                                                                        §§push(scarab);
                                                                        if(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 --scarab;
                                                                                 if(true)
                                                                                 {
                                                                                    §§goto(addr135);
                                                                                 }
                                                                              }
                                                                              §§goto(addr264);
                                                                           }
                                                                           addr135:
                                                                           §§push(onIce);
                                                                           if(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    _loc4_ = (_loc3_ = §§findproperty(onIce)).onIce - 1;
                                                                                    if(true)
                                                                                    {
                                                                                       _loc3_.onIce = _loc4_;
                                                                                    }
                                                                                    if(true)
                                                                                    {
                                                                                       §§goto(addr156);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr251);
                                                                              }
                                                                              addr156:
                                                                              §§push(noMagic);
                                                                              if(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       _loc4_ = (_loc3_ = §§findproperty(noMagic)).noMagic - 1;
                                                                                       if(true)
                                                                                       {
                                                                                          _loc3_.noMagic = _loc4_;
                                                                                       }
                                                                                       if(true)
                                                                                       {
                                                                                          addr177:
                                                                                          §§push(noRange);
                                                                                          if(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   --noRange;
                                                                                                   if(true)
                                                                                                   {
                                                                                                      addr203:
                                                                                                      §§push(syphonHeal);
                                                                                                      if(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(true)
                                                                                                            {
                                                                                                               --syphonHeal;
                                                                                                            }
                                                                                                         }
                                                                                                         §§push(syphonHurt);
                                                                                                         if(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr224:
                                                                                                               --syphonHurt;
                                                                                                               addr235:
                                                                                                               §§push(syphonHeal);
                                                                                                            }
                                                                                                            §§goto(addr235);
                                                                                                         }
                                                                                                         §§push(2);
                                                                                                         if(true)
                                                                                                         {
                                                                                                            if(§§pop() == §§pop())
                                                                                                            {
                                                                                                               addr240:
                                                                                                               unit.heal(unit.maxHp * 0.05);
                                                                                                               addr246:
                                                                                                               §§push(syphonHurt);
                                                                                                               §§push(2);
                                                                                                               if(true)
                                                                                                               {
                                                                                                                  if(§§pop() == §§pop())
                                                                                                                  {
                                                                                                                     addr251:
                                                                                                                     unit.damage(unit.maxHp * 0.05,UnitStats.M);
                                                                                                                     addr259:
                                                                                                                     §§push(healing);
                                                                                                                     §§push(2);
                                                                                                                     if(true)
                                                                                                                     {
                                                                                                                        if(§§pop() == §§pop())
                                                                                                                        {
                                                                                                                           addr264:
                                                                                                                           unit.heal(unit.maxHp * 0.15);
                                                                                                                        }
                                                                                                                        §§goto(addr270);
                                                                                                                     }
                                                                                                                     §§goto(addr290);
                                                                                                                  }
                                                                                                                  §§goto(addr259);
                                                                                                               }
                                                                                                               §§goto(addr308);
                                                                                                            }
                                                                                                            §§goto(addr246);
                                                                                                         }
                                                                                                         §§goto(addr326);
                                                                                                      }
                                                                                                      §§goto(addr246);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr224);
                                                                                             }
                                                                                             §§goto(addr203);
                                                                                          }
                                                                                          §§goto(addr259);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr240);
                                                                                 }
                                                                                 §§goto(addr177);
                                                                              }
                                                                              addr270:
                                                                              if(curse == 2)
                                                                              {
                                                                                 addr273:
                                                                                 unit.damage(UT.irand(1,2),UnitStats.M);
                                                                                 §§goto(addr281);
                                                                              }
                                                                              addr281:
                                                                              §§goto(addr282);
                                                                           }
                                                                           addr282:
                                                                           §§push(Boolean(flaming));
                                                                           §§push(Boolean(flaming));
                                                                           if(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 §§pop();
                                                                                 addr290:
                                                                                 §§push(!(flaming % 10));
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 addr293:
                                                                                 unit.damage(UT.irand(1,2),UnitStats.M);
                                                                                 addr301:
                                                                                 if(Boolean(poison) && !(poison % 60))
                                                                                 {
                                                                                    addr311:
                                                                                    unit.damage(UT.irand(6,8),UnitStats.M);
                                                                                    addr319:
                                                                                    §§push(Boolean(scarab));
                                                                                    §§push(Boolean(scarab));
                                                                                 }
                                                                                 §§goto(addr319);
                                                                              }
                                                                              §§goto(addr301);
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              §§pop();
                                                                              addr326:
                                                                              §§push(!(scarab % 20));
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              addr331:
                                                                              _loc1_ = 0;
                                                                              while(_loc1_ < game.units1.length)
                                                                              {
                                                                                 _loc2_ = game.units1[_loc1_];
                                                                                 if(UT.getDist(unit.x,unit.y,_loc2_.x,_loc2_.y) < 60)
                                                                                 {
                                                                                    _loc2_.damage(UT.irand(13,15),UnitStats.M);
                                                                                 }
                                                                                 _loc1_++;
                                                                              }
                                                                              addr329:
                                                                           }
                                                                           return;
                                                                        }
                                                                        §§goto(addr290);
                                                                     }
                                                                  }
                                                                  §§goto(addr273);
                                                               }
                                                               §§goto(addr116);
                                                            }
                                                            §§goto(addr301);
                                                         }
                                                         §§goto(addr290);
                                                      }
                                                      §§goto(addr293);
                                                   }
                                                   §§goto(addr95);
                                                }
                                                §§goto(addr308);
                                             }
                                             §§goto(addr293);
                                          }
                                          §§goto(addr308);
                                       }
                                       §§goto(addr76);
                                    }
                                    §§goto(addr319);
                                 }
                              }
                              §§goto(addr311);
                           }
                           §§goto(addr57);
                        }
                     }
                     §§goto(addr326);
                  }
                  §§goto(addr329);
               }
               §§goto(addr38);
            }
         }
         §§goto(addr331);
      }
   }
}
