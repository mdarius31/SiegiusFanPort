package
{
   public class Unit extends FakeMC
   {
       
      
      protected var upNum:uint;
      
      protected var hitBase:Boolean;
      
      public var status:Status;
      
      public var deathFade:uint = 0;
      
      protected var timeLoop:int;
      
      private var lastFuncFrame:uint;
      
      protected var moveFrame:int;
      
      protected var extra:Object;
      
      public var upgrade:UpgradeType;
      
      public var mySide:int;
      
      public var didDeath:Boolean = false;
      
      protected var dmgRan:Number;
      
      private var funcCall:Function;
      
      protected var timer:Number;
      
      protected var inBaseRange:Boolean;
      
      public var deadTimer:uint = 0;
      
      public var depthFix:uint;
      
      public var movMod:Number;
      
      protected var side:uint;
      
      public var dead:Boolean = false;
      
      public var curHp:Number;
      
      protected var dmgNumbers:Array;
      
      protected var rotAmt:int;
      
      protected var dmgMin:Number;
      
      public var flip:String;
      
      protected var timeInit:int;
      
      public var aniMod:Number;
      
      public var maxHp:Number;
      
      protected var state:String;
      
      protected var endSpot:int;
      
      private var funcFrames:Boolean;
      
      protected var timeSpd:uint;
      
      public var stats:UnitStats;
      
      public var enSide:int;
      
      public var attacking:*;
      
      public var teAr:Array;
      
      public var enAr:Array;
      
      private var frameCounter:uint;
      
      private var calledFunc:Boolean;
      
      protected var reverse:Boolean;
      
      protected var game:*;
      
      public var movSpd:Number;
      
      protected var rotDgr:Number;
      
      public function Unit(param1:*, param2:uint, param3:Number, param4:Number, param5:String, param6:String, param7:uint, param8:Object)
      {
         if(true)
         {
            dead = false;
            if(true)
            {
               deadTimer = 0;
               if(true)
               {
                  didDeath = false;
                  if(true)
                  {
                     deathFade = 0;
                     if(true)
                     {
                        super();
                        if(true)
                        {
                           game = param1;
                           if(true)
                           {
                              x = param3;
                              if(true)
                              {
                                 y = param4;
                                 if(true)
                                 {
                                    setSide(param2);
                                    if(true)
                                    {
                                       depthFix = UT.irand(0,1000);
                                       if(true)
                                       {
                                          upNum = param7;
                                          if(true)
                                          {
                                             extra = !!param8 ? param8 : {};
                                             if(true)
                                             {
                                                dmgNumbers = new Array();
                                                if(true)
                                                {
                                                   stats = UnitStats.unit[param5];
                                                   if(true)
                                                   {
                                                      upgrade = UnitStats.upgrades[param6];
                                                      if(true)
                                                      {
                                                         setAnim(stats.id + flip,"walk",0,stats.wlkFps,0,false);
                                                         if(true)
                                                         {
                                                            §§push(§§findproperty(setHp));
                                                            §§push(stats.hp);
                                                            if(true)
                                                            {
                                                               §§push(upgrade);
                                                               if(true)
                                                               {
                                                                  §§pop().setHp(§§pop() * (§§pop().id == "hp" ? upgrade["upMod" + upNum] : 1));
                                                                  if(true)
                                                                  {
                                                                     §§push(§§findproperty(movSpd));
                                                                     §§push(Math.random() * (stats.spd * 0.2));
                                                                     if(true)
                                                                     {
                                                                        §§push(§§pop() + stats.spd * 0.8);
                                                                     }
                                                                     §§pop().movSpd = §§pop();
                                                                     if(true)
                                                                     {
                                                                        if(upgrade.id == "speed")
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              §§push(§§findproperty(movSpd));
                                                                              §§push(movSpd);
                                                                              if(true)
                                                                              {
                                                                                 §§push(§§pop() * upgrade["upMod" + upNum]);
                                                                              }
                                                                              §§pop().movSpd = §§pop();
                                                                           }
                                                                        }
                                                                        endSpot = (!!side ? game.background.bgLeft + 170 : game.background.bgRight - 170) + y * 0.3 * enSide;
                                                                     }
                                                                     dmgMin = stats.atk * 0.8;
                                                                  }
                                                                  dmgRan = stats.atk * 0.4;
                                                                  addr217:
                                                                  §§push(upgrade.id == "atk");
                                                                  if(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           §§pop();
                                                                           addr228:
                                                                           §§push(upgrade.id);
                                                                           §§push("general");
                                                                           if(true)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              if(§§pop() == §§pop())
                                                                              {
                                                                                 addr236:
                                                                                 §§pop();
                                                                                 addr240:
                                                                                 if(upNum == 3)
                                                                                 {
                                                                                    addr241:
                                                                                    dmgMin *= upgrade["upMod" + upNum];
                                                                                    addr250:
                                                                                    dmgRan *= upgrade["upMod" + upNum];
                                                                                    addr259:
                                                                                    §§push(upgrade.id);
                                                                                    §§push("general");
                                                                                 }
                                                                                 §§goto(addr259);
                                                                              }
                                                                              §§goto(addr240);
                                                                           }
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              addr263:
                                                                              if(upNum == 2)
                                                                              {
                                                                                 addr266:
                                                                                 stats.resC = 0.5;
                                                                                 addr269:
                                                                                 stats.resL = 0.5;
                                                                                 addr272:
                                                                                 stats.resM = 0.5;
                                                                                 status = new Status(this,game);
                                                                                 addr300:
                                                                                 aniMod = 1;
                                                                                 addr303:
                                                                                 frameCounter = 0;
                                                                                 return;
                                                                                 addr287:
                                                                                 addr275:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(stats);
                                                                                 §§push(1);
                                                                                 if(true)
                                                                                 {
                                                                                    §§pop().resC = §§pop();
                                                                                    addr281:
                                                                                    stats.resL = 1;
                                                                                    §§push(stats);
                                                                                    §§push(1);
                                                                                 }
                                                                                 §§pop().resM = §§pop();
                                                                                 §§goto(addr287);
                                                                              }
                                                                           }
                                                                           §§goto(addr287);
                                                                        }
                                                                        §§goto(addr236);
                                                                     }
                                                                  }
                                                                  §§goto(addr236);
                                                               }
                                                            }
                                                            §§goto(addr128);
                                                         }
                                                         §§goto(addr217);
                                                      }
                                                      §§goto(addr228);
                                                   }
                                                   §§goto(addr236);
                                                }
                                                §§goto(addr241);
                                             }
                                             §§goto(addr250);
                                          }
                                          §§goto(addr241);
                                       }
                                       §§goto(addr263);
                                    }
                                    §§goto(addr266);
                                 }
                                 §§goto(addr269);
                              }
                              §§goto(addr272);
                           }
                           §§goto(addr275);
                        }
                     }
                     §§goto(addr281);
                  }
                  §§goto(addr266);
               }
               §§goto(addr300);
            }
            §§goto(addr303);
         }
         §§goto(addr266);
      }
      
      protected function doFadeDeath() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Math.ceil(deathFade / (30 * 5));
         if(_loc1_ == 5)
         {
            removeMe();
         }
         else
         {
            game.screen.paintObject(x - stats.offX,y - stats.offY,BH.getBit(name,"death",_loc1_));
         }
      }
      
      protected function checkRange(param1:Unit) : Boolean
      {
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         §§push(stats.rangeX);
         if(true)
         {
            _loc2_ = §§pop();
            §§push(stats.rangeY);
            if(true)
            {
               _loc3_ = §§pop();
               if(upgrade.id == "range")
               {
                  §§push(_loc2_);
                  if(true)
                  {
                     §§push(upgrade);
                     §§push("upMod");
                     if(true)
                     {
                        §§goto(addr73);
                     }
                     §§goto(addr60);
                  }
                  addr73:
                  §§push(§§pop() * §§pop()[§§pop() + upNum]);
                  if(true)
                  {
                     §§push(§§pop());
                     if(true)
                     {
                        _loc2_ = §§pop();
                        §§push(_loc3_);
                        if(true)
                        {
                           addr60:
                           §§push(§§pop() * upgrade["upMod" + upNum]);
                        }
                        _loc3_ = §§pop();
                        addr66:
                        §§push(param1.x - x);
                     }
                     §§push(§§pop() * enSide);
                  }
                  §§push(§§pop());
                  §§push(§§pop());
                  if(true)
                  {
                     _loc4_ = §§pop();
                     addr77:
                     §§push(_loc2_);
                     if(true)
                     {
                        §§goto(addr89);
                     }
                     §§goto(addr85);
                  }
                  addr89:
                  §§push(stats.wdth);
                  if(true)
                  {
                     addr85:
                     §§push(§§pop() + §§pop());
                     §§push(param1.stats.wdth);
                  }
                  §§push(§§pop() < §§pop() + §§pop());
                  §§push(§§pop() < §§pop() + §§pop());
                  if(true)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        addr96:
                        §§push(_loc4_ > 0);
                     }
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     §§pop();
                     §§push(Math.abs(param1.y - y) < _loc3_);
                  }
                  return §§pop();
               }
               §§goto(addr66);
            }
            §§goto(addr77);
         }
         §§goto(addr96);
      }
      
      public function setHp(param1:Number) : void
      {
         if(true)
         {
            curHp = maxHp = param1;
         }
      }
      
      protected function paintNumbers() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:* = null;
         var _loc3_:Array = null;
         var _loc4_:uint = 0;
         if(true)
         {
            if(!SD.showDmg)
            {
               if(true)
               {
                  return;
               }
            }
            _loc1_ = 0;
         }
         while(_loc1_ < dmgNumbers.length)
         {
            _loc2_ = dmgNumbers[_loc1_].dmg + "";
            if(false)
            {
               break;
            }
            _loc3_ = _loc2_.split("");
            if(true)
            {
               _loc4_ = 0;
               if(true)
               {
                  while(_loc4_ < _loc3_.length)
                  {
                     game.screen.paintObject(x - _loc3_.length * 8 + 4 + _loc4_ * 8 + dmgNumbers[_loc1_].x,y - stats.hght - dmgNumbers[_loc1_].y + 5,BH.getBit("num" + dmgNumbers[_loc1_].typ,"idle",uint(_loc3_[_loc4_]) + 1));
                     if(true)
                     {
                        _loc4_++;
                     }
                  }
               }
               _loc1_++;
            }
         }
      }
      
      public function heal(param1:uint) : void
      {
         if(Boolean(extra.maxHeal) && param1 > extra.maxHeal)
         {
            param1 = uint(extra.maxHeal);
         }
         dmgNumbers.push(new DmgNumber(param1,"Heal"));
         curHp += param1;
         if(curHp > maxHp)
         {
            curHp = maxHp;
         }
      }
      
      protected function UnitFrame() : void
      {
         var _loc1_:uint = 0;
         if(true)
         {
            ++frameCounter;
            if(true)
            {
               §§push(deadTimer);
               if(true)
               {
                  if(§§pop())
                  {
                     if(true)
                     {
                        --deadTimer;
                        if(true)
                        {
                           addr58:
                           §§push(§§findproperty(timer));
                           §§push(timer);
                           if(true)
                           {
                              §§push(§§pop() + aniMod);
                           }
                           §§pop().timer = §§pop();
                           if(true)
                           {
                              if(timer >= timeSpd)
                              {
                                 if(true)
                                 {
                                    timer = 0;
                                    if(true)
                                    {
                                       frame += moveFrame;
                                       if(true)
                                       {
                                          addr84:
                                          if(reverse)
                                          {
                                             if(true)
                                             {
                                                if(frame < 1)
                                                {
                                                }
                                                addr104:
                                                if(frame > maxFrames)
                                                {
                                                   addr107:
                                                   frame = maxFrames - 1;
                                                   moveFrame = -1;
                                                }
                                                aniMod = 1;
                                                return;
                                                addr114:
                                             }
                                             frame = 2;
                                             addr101:
                                             moveFrame = 1;
                                             §§goto(addr104);
                                          }
                                          else
                                          {
                                             if(Boolean(funcCall) && funcFrames)
                                             {
                                                addr123:
                                                if(lastFuncFrame != frame)
                                                {
                                                   addr126:
                                                   calledFunc = false;
                                                   addr131:
                                                   _loc1_ = 0;
                                                   addr132:
                                                   while(_loc1_ < stats.atkFrame.length)
                                                   {
                                                      if(frame == stats.atkFrame[_loc1_] && !calledFunc)
                                                      {
                                                         calledFunc = true;
                                                         lastFuncFrame = frame;
                                                         funcCall();
                                                      }
                                                      _loc1_++;
                                                   }
                                                   addr129:
                                                }
                                                §§goto(addr129);
                                             }
                                             else if(Boolean(funcCall))
                                             {
                                                if(frame > maxFrames)
                                                {
                                                   if(!calledFunc)
                                                   {
                                                      calledFunc = true;
                                                      funcCall();
                                                   }
                                                }
                                                else
                                                {
                                                   calledFunc = false;
                                                }
                                             }
                                             if(frame > maxFrames)
                                             {
                                                frame = 1;
                                                timer = -timeLoop;
                                             }
                                          }
                                          §§goto(addr104);
                                       }
                                       §§goto(addr101);
                                    }
                                    §§goto(addr104);
                                 }
                                 §§goto(addr107);
                              }
                              §§goto(addr84);
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr126);
                  }
                  else
                  {
                     §§push(deadTimer);
                     if(true)
                     {
                        if(§§pop() == 1)
                        {
                           if(true)
                           {
                              removeMe();
                              if(true)
                              {
                                 §§goto(addr58);
                              }
                              §§goto(addr114);
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr58);
                     }
                  }
                  §§goto(addr123);
               }
               §§goto(addr131);
            }
            §§goto(addr126);
         }
         §§goto(addr132);
      }
      
      public function attackBase() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         _loc1_ = Math.round(dmgMin + Math.random() * dmgRan);
         _loc2_ = _loc1_;
         §§push(status.atkboost);
         if(true)
         {
            if(§§pop())
            {
               §§push(_loc2_);
               §§push(_loc1_);
               if(true)
               {
                  §§push(§§pop() * 0.1);
               }
               _loc2_ = §§pop() + §§pop();
            }
            if(stats.projTyp)
            {
               game.createProjectile(attacking,stats.projTyp,x,y,x + (stats.rangeX + 50) * enSide,y,stats.projSpd);
            }
            if(Boolean(stats.extra.shake) && game is Game)
            {
               game.shake.setShake(stats.extra.shake[0],stats.extra.shake[1]);
            }
            if(game is Game)
            {
               addr97:
               if(!side)
               {
                  game.enemy.damage(_loc2_,stats.atkTyp);
               }
               else
               {
                  game.hud.damage(_loc2_,stats.atkTyp);
               }
            }
            else
            {
               damage(_loc2_);
            }
            if(stats.extra.atkEffect)
            {
               game.createEffect(x + stats.extra.atkEffect.xoff * enSide,y + stats.extra.atkEffect.yoff,stats.extra.atkEffect.yimg,false,stats.extra.atkEffect.eff,"idle");
            }
            inBaseRange = true;
            playSound(stats.sound);
            return;
         }
         §§goto(addr97);
      }
      
      protected function removeMe() : void
      {
         remove = true;
      }
      
      public function setDeathAni() : void
      {
         var _loc1_:uint = 0;
         if(true)
         {
            if(game is Game)
            {
               if(true)
               {
                  §§push(side);
                  if(true)
                  {
                     if(!§§pop())
                     {
                        if(true)
                        {
                           ++game.hud.unitDeaths;
                           if(true)
                           {
                              addr62:
                              if(game.hud.checkDeadUnit1 == stats.id)
                              {
                                 addr68:
                                 var _loc2_:*;
                                 var _loc3_:* = (_loc2_ = game.hud).checkDeadNum1 + 1;
                                 if(true)
                                 {
                                    _loc2_.checkDeadNum1 = _loc3_;
                                 }
                              }
                              §§goto(addr82);
                           }
                           addr82:
                           if(BH.BITS[name].sub["deathani"].frames == 1)
                           {
                              addr93:
                              §§push(uint(UT.irand(2,14)));
                              if(true)
                              {
                              }
                           }
                           else
                           {
                              §§push(2);
                           }
                           §§goto(addr104);
                        }
                        §§goto(addr93);
                     }
                     else
                     {
                        ++game.hud.unitKills;
                        if(true)
                        {
                           §§goto(addr62);
                        }
                     }
                     §§goto(addr68);
                  }
                  addr104:
                  _loc1_ = §§pop();
                  §§goto(addr112);
               }
               addr112:
               setAnim(name,"deathani",0,_loc1_,0,false,didDeathAni);
               return;
            }
         }
         §§goto(addr68);
      }
      
      private function playSound(param1:String) : void
      {
         var _loc2_:* = NaN;
         if(game is Menu)
         {
            return;
         }
         §§push(Number(game.isOnScreen(x)));
         if(true)
         {
            _loc2_ = §§pop();
            §§push(_loc2_);
         }
         if(!§§pop())
         {
            return;
         }
         SH.playUnitSound(param1,_loc2_);
      }
      
      protected function doDmgNumbers() : void
      {
         var _loc1_:uint = 0;
         if(true)
         {
            _loc1_ = 0;
         }
         while(_loc1_ < dmgNumbers.length)
         {
            ++dmgNumbers[_loc1_].cnt;
            if(false)
            {
               break;
            }
            dmgNumbers[_loc1_].y += (20 - dmgNumbers[_loc1_].y) * 0.1;
            if(true)
            {
               if(dmgNumbers[_loc1_].cnt > 20)
               {
                  if(true)
                  {
                     dmgNumbers.splice(_loc1_,1);
                  }
               }
               _loc1_++;
            }
         }
      }
      
      public function attack(param1:* = null) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(true)
         {
            _loc2_ = !!param1 ? param1 : attacking;
            if(true)
            {
               _loc3_ = Math.round(dmgMin + Math.random() * dmgRan);
               if(true)
               {
                  _loc4_ = _loc3_;
                  if(true)
                  {
                     if(status.atkboost)
                     {
                        if(true)
                        {
                           _loc4_ += _loc3_ * 0.1;
                           if(true)
                           {
                              addr60:
                              _loc2_.damage(_loc4_,stats.atkTyp);
                           }
                           §§push(stats);
                           if(true)
                           {
                              if(§§pop().projTyp)
                              {
                                 addr70:
                                 game.createProjectile(_loc2_,stats.projTyp,x,y,_loc2_.x,_loc2_.y,stats.projSpd);
                                 addr83:
                                 §§push(stats);
                              }
                              §§goto(addr83);
                           }
                           if(§§pop().extra.knockback)
                           {
                              addr87:
                              _loc2_.x += stats.extra.knockback * enSide;
                              switch(stats.effTyp)
                              {
                                 case "fire":
                                    _loc2_.status.flaming = 30 * 4;
                                    break;
                                 case "poison":
                                    _loc2_.status.poison = 30 * 10;
                              }
                              §§push(Boolean(stats.extra.shake));
                              if(true)
                              {
                                 if(§§pop())
                                 {
                                    if(true)
                                    {
                                       §§pop();
                                       §§push(game is Game);
                                       if(true)
                                       {
                                          addr156:
                                          if(§§pop())
                                          {
                                             game.shake.setShake(stats.extra.shake[0],stats.extra.shake[1]);
                                          }
                                          if(stats.extra.atkEffect)
                                          {
                                             game.createEffect(x + stats.extra.atkEffect.xoff * enSide,y + stats.extra.atkEffect.yoff,stats.extra.atkEffect.yimg,false,stats.extra.atkEffect.eff,"idle");
                                          }
                                          §§push(side);
                                          if(true)
                                          {
                                             §§push(§§pop() == 0);
                                             if(true)
                                             {
                                                §§push(§§pop() && Boolean(stats.extra.atkEffect0));
                                             }
                                             if(§§pop())
                                             {
                                                game.createEffect(x + stats.extra.atkEffect0.xoff * enSide,y + stats.extra.atkEffect0.yoff,stats.extra.atkEffect0.yimg,false,stats.extra.atkEffect0.eff,"idle");
                                             }
                                             §§push(side);
                                          }
                                          §§push(§§pop() == 1);
                                       }
                                       if(§§pop())
                                       {
                                       }
                                       §§goto(addr251);
                                    }
                                    §§pop();
                                    addr251:
                                    if(§§pop())
                                    {
                                       game.createEffect(x + stats.extra.atkEffect1.xoff * enSide,y + stats.extra.atkEffect1.yoff,stats.extra.atkEffect1.yimg,false,stats.extra.atkEffect1.eff,"idle");
                                    }
                                    playSound(stats.sound);
                                    return;
                                    §§push(Boolean(stats.extra.atkEffect1));
                                 }
                                 §§goto(addr156);
                              }
                              §§goto(addr251);
                              addr97:
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr70);
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr70);
               }
            }
            §§goto(addr87);
         }
         §§goto(addr20);
      }
      
      public function didDeathAni() : void
      {
         if(true)
         {
            didDeath = true;
         }
      }
      
      public function damage(param1:Number, param2:uint = 0) : void
      {
         var _loc3_:* = NaN;
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(true)
         {
            §§push(1);
            if(true)
            {
               §§push(§§pop());
               if(true)
               {
                  _loc3_ = §§pop();
                  if(true)
                  {
                     §§push(param2);
                     if(true)
                     {
                        §§push(UnitStats.C);
                        if(true)
                        {
                           §§push(§§pop() & §§pop());
                           if(true)
                           {
                              if(§§pop())
                              {
                                 if(true)
                                 {
                                    §§push(stats);
                                    if(true)
                                    {
                                       §§push(§§pop().resC);
                                       if(true)
                                       {
                                          §§push(§§pop());
                                          if(true)
                                          {
                                             _loc3_ = §§pop();
                                             if(true)
                                             {
                                                addr103:
                                                _loc5_ = "";
                                             }
                                             §§push(_loc3_);
                                          }
                                          §§push(1);
                                          if(true)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                addr110:
                                                _loc4_ = "Norm";
                                                if(true)
                                                {
                                                   §§push(SD.blood);
                                                   if(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(true)
                                                         {
                                                            _loc5_ = "blood" + SD.blood;
                                                            if(true)
                                                            {
                                                               addr159:
                                                               if(_loc5_)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     game.createEffect(x - (stats.wdth - Math.random() * 10) * mySide,y + 1,Math.random() * 20 - 10 + stats.hght * -0.5,true,_loc5_);
                                                                     if(true)
                                                                     {
                                                                        addr196:
                                                                        if(SD.blood == 2)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              game.createEffect(x - (stats.wdth - Math.random() * 10) * mySide,y + 1,Math.random() * 20 - 10 + stats.hght * -0.5,true,_loc5_);
                                                                              addr229:
                                                                              param1 = Math.round(param1 * _loc3_);
                                                                           }
                                                                           if(extra.noNum)
                                                                           {
                                                                           }
                                                                           curHp -= param1;
                                                                           addr257:
                                                                           if(curHp <= 0)
                                                                           {
                                                                              addr260:
                                                                              die();
                                                                              §§goto(addr262);
                                                                           }
                                                                           addr262:
                                                                           return;
                                                                           addr245:
                                                                        }
                                                                        §§goto(addr229);
                                                                     }
                                                                     dmgNumbers.push(new DmgNumber(param1,_loc4_));
                                                                  }
                                                                  §§goto(addr245);
                                                               }
                                                               §§goto(addr229);
                                                               addr136:
                                                            }
                                                            §§goto(addr257);
                                                         }
                                                         §§goto(addr260);
                                                      }
                                                      §§goto(addr136);
                                                   }
                                                   §§goto(addr196);
                                                }
                                                §§goto(addr260);
                                             }
                                             else
                                             {
                                                addr138:
                                                if(_loc3_ < 1)
                                                {
                                                   addr140:
                                                   _loc4_ = "Res";
                                                   _loc5_ = "spark";
                                                }
                                                else
                                                {
                                                   addr147:
                                                   if(_loc3_ > 1)
                                                   {
                                                      addr148:
                                                      _loc4_ = "Weak";
                                                      if(SD.blood)
                                                      {
                                                         _loc5_ = "bloodBig" + SD.blood;
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr159);
                                          }
                                          §§goto(addr147);
                                       }
                                       §§goto(addr138);
                                    }
                                    else
                                    {
                                       addr96:
                                       _loc3_ = Number(§§pop().resM);
                                       addr97:
                                       if(status.noMagic)
                                       {
                                          addr102:
                                          _loc3_ = 0;
                                          addr100:
                                       }
                                       §§goto(addr103);
                                       addr94:
                                       addr95:
                                    }
                                    §§goto(addr103);
                                 }
                                 §§goto(addr110);
                              }
                              else
                              {
                                 §§push(param2);
                                 if(true)
                                 {
                                    §§push(§§pop() & UnitStats.L);
                                    if(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(true)
                                          {
                                             §§push(stats.resL);
                                             if(true)
                                             {
                                                §§push(§§pop());
                                                if(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   if(true)
                                                   {
                                                      if(status.noRange)
                                                      {
                                                         if(true)
                                                         {
                                                            addr81:
                                                            §§push(0);
                                                            if(true)
                                                            {
                                                               _loc3_ = §§pop();
                                                               if(true)
                                                               {
                                                                  addr87:
                                                                  §§goto(addr103);
                                                               }
                                                               else
                                                               {
                                                                  addr93:
                                                                  §§goto(addr94);
                                                                  §§push(stats);
                                                               }
                                                               §§goto(addr103);
                                                            }
                                                            §§goto(addr95);
                                                         }
                                                         §§goto(addr97);
                                                      }
                                                      §§goto(addr87);
                                                   }
                                                   §§goto(addr100);
                                                }
                                                §§goto(addr96);
                                             }
                                             §§goto(addr102);
                                          }
                                       }
                                       else
                                       {
                                          addr89:
                                          if(param2 & UnitStats.M)
                                          {
                                             §§goto(addr93);
                                          }
                                       }
                                       §§goto(addr103);
                                    }
                                    §§goto(addr81);
                                 }
                                 §§goto(addr89);
                              }
                           }
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr140);
               }
               §§goto(addr147);
            }
            §§goto(addr102);
         }
         §§goto(addr148);
      }
      
      public function die() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:* = undefined;
         if(dead)
         {
            return;
         }
         playSound("die");
         dead = true;
         deadTimer = 30 * 3;
         setDeathAni();
         if(status.scarab)
         {
            _loc1_ = 0;
            for(; _loc1_ < game.units1.length; _loc1_ = §§pop())
            {
               _loc2_ = game.units1[_loc1_];
               if(!_loc2_.dead)
               {
                  §§push(UT.getDist(x,y,_loc2_.x,_loc2_.y));
                  if(false)
                  {
                     continue;
                  }
                  if(§§pop() < 150)
                  {
                     _loc2_.status.scarab = status.scarab;
                     break;
                  }
               }
               §§push(_loc1_ + 1);
            }
            status.scarab = 0;
         }
      }
      
      protected function setAnim(param1:String, param2:String = "", param3:int = 0, param4:uint = 0, param5:uint = 0, param6:Boolean = false, param7:Function = null, param8:Boolean = false) : void
      {
         name = param1;
         state = param2;
         timeInit = param3;
         timeLoop = param5;
         timer = -timeInit;
         timeSpd = param4;
         reverse = param6;
         funcCall = param7;
         funcFrames = param8;
         moveFrame = 1;
         frame = 1;
         maxFrames = !!state ? uint(BH.BITS[name].sub[state].frames) : 1;
         rotAmt = !!state ? int(BH.BITS[name].sub[state].rotAmt) : 1;
         rotDgr = 360 / rotAmt;
      }
      
      protected function setMoveSpeed(param1:int = 1) : void
      {
         if(true)
         {
            movMod = movSpd * param1;
            if(true)
            {
               §§push(status.onIce);
               if(true)
               {
                  if(§§pop())
                  {
                     if(true)
                     {
                        movMod += 2.8;
                     }
                  }
                  §§push(status.poison);
               }
               if(!§§pop())
               {
               }
               §§goto(addr54);
            }
            §§push(§§findproperty(movMod));
            §§push(movMod);
            if(true)
            {
               §§push(§§pop() * 0.85);
            }
            §§pop().movMod = §§pop();
         }
         addr54:
      }
      
      protected function paintAnimation() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(didDeath)
         {
            doFadeDeath();
            return;
         }
         if(status.curse)
         {
            game.screen.paintObject(x - 30,y - 12,BH.getBit("effBon","curse"));
         }
         if(status.healing)
         {
            game.screen.paintObject(x - 30,y - 12,BH.getBit("effBon","heal"));
         }
         if(status.atkboost)
         {
            game.screen.paintObject(x - 30,y - 12,BH.getBit("effBon","atk"));
         }
         §§push(frameCounter % 8);
         if(true)
         {
            §§push(§§pop() / 2);
            if(true)
            {
               §§push(§§pop() + 1);
               if(true)
               {
                  _loc1_ = §§pop();
                  §§push(frameCounter % 8);
                  if(true)
                  {
                     §§push(§§pop() / 2 + 1);
                  }
                  _loc2_ = §§pop();
                  §§push(frameCounter % 8);
               }
               §§push(§§pop() / 2);
            }
            §§push(§§pop() + 1);
         }
         _loc3_ = §§pop();
         if(status.scarab)
         {
            game.screen.paintObject(x - 70,y - 103,BH.getBit("scarabback","idle",_loc3_));
         }
         if(status.poison)
         {
            game.screen.paintObject(x - 34,y - 103,BH.getBit("poisonback","idle",_loc2_));
         }
         if(status.flaming)
         {
            game.screen.paintObject(x - 34,y - 103,BH.getBit("flameback","idle",_loc1_));
         }
         game.screen.paintObject(x - stats.offX,y - stats.offY,BH.getBit(name,state,frame));
         if(status.flaming)
         {
            game.screen.paintObject(x - 34,y - 103,BH.getBit("flamefront","idle",_loc1_));
         }
         if(status.poison)
         {
            game.screen.paintObject(x - 34,y - 103,BH.getBit("poisonfront","idle",_loc2_));
         }
         if(status.scarab)
         {
            game.screen.paintObject(x - 70,y - 103,BH.getBit("scarabfront","idle",_loc3_));
         }
         _loc4_ = Math.ceil(curHp / maxHp * 20);
         if(extra.invincible)
         {
            _loc4_ = 20;
         }
         if(stats.atkTyp == UnitStats.G && SD.showHpBar)
         {
            game.screen.paintObject(x - 28,y - stats.hght,BH.getBit("health2","idle",_loc4_));
            game.screen.paintObject(x - 28,y - stats.hght - 13,BH.getBit("healthName",stats.race));
         }
         else if(_loc4_ > 0 && _loc4_ < 20 && SD.showHpBar)
         {
            game.screen.paintObject(x - 18,y - stats.hght,BH.getBit("health","idle",_loc4_));
         }
      }
      
      public function setSide(param1:*) : void
      {
         side = param1;
         flip = !side ? "" : "_flip";
         enAr = !side ? game.units1 : game.units0;
         §§push(§§findproperty(teAr));
         if(true)
         {
            §§pop().teAr = !side ? game.units0 : game.units1;
            enSide = !side ? 1 : -1;
            §§push(§§findproperty(mySide));
            if(true)
            {
               §§pop().mySide = !side ? -1 : 1;
               return;
            }
            §§goto(addr69);
         }
         §§goto(addr42);
      }
      
      protected function doStatusEffects() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:Number = NaN;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(true)
         {
            §§push(stats);
            if(true)
            {
               §§push(§§pop().effTyp);
               if(true)
               {
                  if(§§pop())
                  {
                     if(true)
                     {
                        _loc2_ = stats.effSize;
                        if(true)
                        {
                           addr40:
                           addr38:
                           §§push(stats.upgrade.id == "range");
                           if(true)
                           {
                              §§push(§§pop() && upNum > 1);
                           }
                           if(!§§pop())
                           {
                           }
                           addr61:
                           _loc1_ = 0;
                           loop1:
                           while(true)
                           {
                              if(_loc1_ >= teAr.length)
                              {
                                 _loc1_ = 0;
                                 loop2:
                                 while(_loc1_ < enAr.length)
                                 {
                                    if(!enAr[_loc1_].dead)
                                    {
                                       if(UT.getDist(x,y,enAr[_loc1_].x,enAr[_loc1_].y) < _loc2_)
                                       {
                                          §§push(stats.effTyp);
                                          break loop1;
                                       }
                                    }
                                    while(true)
                                    {
                                       _loc1_++;
                                       continue loop2;
                                    }
                                 }
                                 §§goto(addr204);
                              }
                              else
                              {
                                 if(teAr[_loc1_].dead)
                                 {
                                    continue;
                                 }
                                 if(UT.getDist(x,y,teAr[_loc1_].x,teAr[_loc1_].y) >= _loc2_)
                                 {
                                    continue;
                                 }
                                 §§push(stats.effTyp);
                                 if(false)
                                 {
                                    break;
                                 }
                                 switch(§§pop())
                                 {
                                    case "heal":
                                       if(teAr[_loc1_].status.healing < 2)
                                       {
                                          teAr[_loc1_].status.healing = 30 * 3;
                                       }
                                       break;
                                    case "atk":
                                       teAr[_loc1_].status.atkboost = 10;
                                       break;
                                 }
                              }
                           }
                           while(true)
                           {
                              switch(§§pop())
                              {
                                 case "curse":
                                    if(enAr[_loc1_].status.curse < 2)
                                    {
                                       enAr[_loc1_].status.curse = 10;
                                    }
                              }
                              §§goto(addr196);
                           }
                        }
                        _loc2_ *= stats.upgrade["upMod" + upNum];
                     }
                     §§goto(addr61);
                  }
                  addr204:
                  _loc1_ = 0;
                  while(true)
                  {
                     if(_loc1_ >= game.floorEffects.length)
                     {
                        §§goto(addr431);
                     }
                     §§push(Boolean(game.floorEffects[_loc1_].spell.active));
                     §§push(Boolean(game.floorEffects[_loc1_].spell.active));
                     if(false)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        §§pop();
                        §§push(UT.inBox(x,y,game.floorEffects[_loc1_].x - game.floorEffects[_loc1_].spell.width / 2,game.floorEffects[_loc1_].y - game.floorEffects[_loc1_].spell.height / 2,game.floorEffects[_loc1_].spell.width,game.floorEffects[_loc1_].spell.height));
                     }
                     if(!§§pop())
                     {
                        continue;
                     }
                     if(game.floorEffects[_loc1_].spell is Spell_Ice)
                     {
                        §§push(status);
                        §§push(3);
                        if(true)
                        {
                           §§pop().onIce = §§pop();
                           addr287:
                           if(game.floorEffects[_loc1_].spell is Spell_NoMagic)
                           {
                              §§push(status);
                              §§push(3);
                              if(true)
                              {
                                 §§pop().noMagic = §§pop();
                                 addr300:
                                 if(game.floorEffects[_loc1_].spell is Spell_Smoke)
                                 {
                                    status.noRange = 3;
                                 }
                                 if(game.floorEffects[_loc1_].spell is Spell_Syphon)
                                 {
                                    if(UT.getDist(x,y,game.floorEffects[_loc1_].x,game.floorEffects[_loc1_].y) < game.floorEffects[_loc1_].spell.width / 2)
                                    {
                                       if(side == 0)
                                       {
                                          if(!status.syphonHeal)
                                          {
                                             addr350:
                                             status.syphonHeal = 15;
                                          }
                                       }
                                       else if(side == 1)
                                       {
                                          if(!status.syphonHurt)
                                          {
                                             addr360:
                                             status.syphonHurt = 15;
                                          }
                                       }
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr350);
                           }
                           §§goto(addr300);
                        }
                        §§goto(addr360);
                     }
                     §§goto(addr287);
                  }
                  if(§§pop())
                  {
                     §§pop();
                     §§push(frameCounter % _loc4_ == 0);
                  }
                  if(§§pop())
                  {
                     damage(UT.irand(8,12));
                  }
                  addr431:
                  if(game is Game)
                  {
                     _loc3_ = !!side ? uint(game.hud.defenseUp) : uint(game.enemy.defenseUp);
                     _loc3_ = _loc3_ * 2 - 1;
                     _loc4_ = Math.round(30 * (3 / _loc3_));
                     §§push(inBaseRange || hitBase);
                     §§push(inBaseRange || hitBase);
                     break loop0;
                  }
                  return;
               }
               §§goto(addr40);
            }
            §§goto(addr38);
         }
         §§goto(addr40);
      }
   }
}
