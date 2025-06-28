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
         var _loc1_:* = 0;
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
                     var _loc3_:* = §§findproperty(atkboost);
                     var _loc4_:* = _loc3_.atkboost - 1;
                     if(true)
                     {
                        _loc3_.atkboost = _loc4_;
                     }
                     if(true)
                     {
                     }
                     §§goto(addr324);
                  }
                  §§push(0);
               }
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
                        }
                        addr311:
                        unit.damage(UT.irand(6,8),UnitStats.M);
                     }
                     §§goto(addr319);
                  }
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
                           }
                           §§goto(addr310);
                        }
                        addr308:
                        addr310:
                        if(Boolean(poison))
                        {
                           §§goto(addr311);
                        }
                        addr319:
                        §§push(Boolean(scarab));
                        if(Boolean(scarab))
                        {
                           §§pop();
                           addr324:
                           §§goto(addr328);
                        }
                        addr328:
                        addr326:
                        addr325:
                        if(scarab % 20)
                        {
                        }
                        return;
                        §§push(!(poison % 60));
                     }
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
                              }
                              addr288:
                              if(flaming % 10)
                              {
                              }
                              §§goto(addr310);
                           }
                           unit.damage(UT.irand(1,2),UnitStats.M);
                           §§goto(addr310);
                        }
                        §§push(poison);
                        if(true)
                        {
                           if(§§pop())
                           {
                              if(true)
                              {
                                 _loc3_ = §§findproperty(poison);
                                 _loc4_ = _loc3_.poison - 1;
                                 if(true)
                                 {
                                    _loc3_.poison = _loc4_;
                                 }
                                 if(true)
                                 {
                                 }
                                 addr273:
                                 unit.damage(UT.irand(1,2),UnitStats.M);
                              }
                              addr281:
                              §§push(Boolean(flaming));
                              §§push(Boolean(flaming));
                              if(true)
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                 }
                                 §§goto(addr288);
                              }
                              §§goto(addr319);
                           }
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
                                    }
                                    addr264:
                                    unit.heal(unit.maxHp * 0.15);
                                 }
                                 addr270:
                                 if(curse == 2)
                                 {
                                    §§goto(addr273);
                                 }
                                 §§goto(addr281);
                              }
                              §§push(onIce);
                              if(true)
                              {
                                 if(§§pop())
                                 {
                                    if(true)
                                    {
                                       _loc3_ = §§findproperty(onIce);
                                       _loc4_ = _loc3_.onIce - 1;
                                       if(true)
                                       {
                                          _loc3_.onIce = _loc4_;
                                       }
                                       if(true)
                                       {
                                       }
                                       addr251:
                                       unit.damage(unit.maxHp * 0.05,UnitStats.M);
                                    }
                                    addr259:
                                    §§push(healing);
                                    §§push(2);
                                    if(true)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          §§goto(addr264);
                                       }
                                       §§goto(addr270);
                                    }
                                    §§goto(addr288);
                                 }
                                 §§push(noMagic);
                                 if(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(true)
                                       {
                                          _loc3_ = §§findproperty(noMagic);
                                          _loc4_ = _loc3_.noMagic - 1;
                                          if(true)
                                          {
                                             _loc3_.noMagic = _loc4_;
                                          }
                                          if(true)
                                          {
                                          }
                                          addr240:
                                          unit.heal(unit.maxHp * 0.05);
                                       }
                                       addr246:
                                       §§push(syphonHurt);
                                       §§push(2);
                                       if(true)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             §§goto(addr251);
                                          }
                                          §§goto(addr259);
                                       }
                                       §§goto(addr308);
                                    }
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
                                             }
                                             addr224:
                                             --syphonHurt;
                                          }
                                          addr235:
                                          §§push(syphonHeal);
                                          §§push(2);
                                          if(true)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                §§goto(addr240);
                                             }
                                             §§goto(addr246);
                                          }
                                          §§goto(addr326);
                                       }
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
                                                §§goto(addr224);
                                             }
                                          }
                                          §§goto(addr235);
                                       }
                                       §§goto(addr246);
                                    }
                                    §§goto(addr259);
                                 }
                                 §§goto(addr270);
                              }
                              §§goto(addr281);
                           }
                           §§goto(addr288);
                        }
                        §§goto(addr310);
                     }
                     §§goto(addr308);
                  }
                  §§goto(addr319);
               }
               §§goto(addr325);
            }
            _loc1_ = §§pop();
         }
         while(_loc1_ < game.units1.length)
         {
            _loc2_ = game.units1[_loc1_];
            if(UT.getDist(unit.x,unit.y,_loc2_.x,_loc2_.y) < 60)
            {
               _loc2_.damage(UT.irand(13,15),UnitStats.M);
            }
            _loc1_++;
         }
         §§goto(addr324);
      }
   }
}

if(true)
{
   Status = §§newclass(Status,Object);
}

