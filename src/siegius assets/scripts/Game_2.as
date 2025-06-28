package
{
   import Playtomic.*;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.filters.BlurFilter;
   
   public class Game extends MovieClip
   {
      
      public static var OLDTIMEY:Boolean = false;
      
      if(true)
      {
         OLDTIMEY = false;
      }
      
      public var shake:Shake;
      
      private var pauseScreen:PauseScreen;
      
      public var nextClip:*;
      
      public var background:Background;
      
      public var hud:Hud;
      
      private var mRadDown:Boolean;
      
      public var fastfoward:Boolean;
      
      public var cmpPause:Boolean;
      
      public var floorEffects:Array;
      
      public var screenshot:Boolean;
      
      public var cBox:ColourBox;
      
      public var screen:Screen;
      
      public var base0:Base;
      
      public var base1:Base;
      
      public var enemy:HudEnemy;
      
      public var cmp:CampaignSetup;
      
      public var oldtimey:Boolean;
      
      public var baseb0:Base;
      
      public var units0:Array;
      
      public var baseb1:Base;
      
      public var units1:Array;
      
      public var projectiles:Array;
      
      public var main:Main;
      
      private var fc:uint = 0;
      
      private var scrollSpd:uint;
      
      public var pause:Boolean;
      
      public function Game(param1:Main, param2:Object)
      {
         var _loc3_:String = null;
         if(true)
         {
            fc = 0;
            if(true)
            {
               super();
               if(true)
               {
                  main = param1;
                  if(true)
                  {
                     if(param2.midStart)
                     {
                        if(true)
                        {
                           y = 500;
                           if(true)
                           {
                           }
                           addr297:
                           pauseScreen = new PauseScreen(this);
                        }
                        addChild(pauseScreen);
                     }
                     cmp = new CampaignSetup(this);
                     if(true)
                     {
                        _loc3_ = GameStats.getCampaignStats(SD.race,SD.picStage).enemy;
                        if(true)
                        {
                           cBox = new ColourBox();
                           if(true)
                           {
                              addChild(cBox);
                              if(true)
                              {
                                 shake = new Shake();
                                 if(true)
                                 {
                                    addChild(shake);
                                    if(true)
                                    {
                                       background = new Background(this);
                                       if(true)
                                       {
                                          shake.addChild(background);
                                          if(true)
                                          {
                                             background.gotoAndStop(GameStats.getCampaignStats(SD.race,SD.picStage).stage);
                                             if(true)
                                             {
                                                if(GameStats.getCampaignStats(SD.race,SD.picStage).oldtimey)
                                                {
                                                   if(true)
                                                   {
                                                      oldtimey = true;
                                                      if(true)
                                                      {
                                                      }
                                                      addr246:
                                                      hud = new Hud(this);
                                                   }
                                                   enemy = new HudEnemy(this);
                                                }
                                                §§push(Game);
                                                §§push(oldtimey);
                                                if(true)
                                                {
                                                   §§push(!!§§pop());
                                                }
                                                §§pop().OLDTIMEY = §§pop();
                                                if(true)
                                                {
                                                   baseb0 = new Base();
                                                   if(true)
                                                   {
                                                      baseb1 = new Base();
                                                      if(true)
                                                      {
                                                         §§push(baseb1);
                                                         if(true)
                                                         {
                                                            §§pop().scaleX = -1;
                                                            if(true)
                                                            {
                                                               baseb0.cacheAsBitmap = true;
                                                               if(true)
                                                               {
                                                                  baseb1.cacheAsBitmap = true;
                                                                  if(true)
                                                                  {
                                                                     baseb0.gotoAndStop(SD.race + 2);
                                                                     addr222:
                                                                     if(true)
                                                                     {
                                                                        §§push(baseb1);
                                                                     }
                                                                     base1.gotoAndStop(_loc3_);
                                                                  }
                                                                  shake.addChild(base0);
                                                               }
                                                               shake.addChild(base1);
                                                            }
                                                            units0 = new Array();
                                                         }
                                                         §§pop().gotoAndStop(_loc3_ + 2);
                                                         if(true)
                                                         {
                                                            shake.addChild(baseb0);
                                                            if(true)
                                                            {
                                                               shake.addChild(baseb1);
                                                               if(true)
                                                               {
                                                                  screen = new Screen(this);
                                                                  if(true)
                                                                  {
                                                                     shake.addChild(screen);
                                                                     if(true)
                                                                     {
                                                                        base0 = new Base();
                                                                     }
                                                                     base1 = new Base();
                                                                  }
                                                                  §§push(base1);
                                                                  if(true)
                                                                  {
                                                                     §§pop().scaleX = -1;
                                                                  }
                                                                  §§goto(addr222);
                                                               }
                                                               base0.cacheAsBitmap = true;
                                                            }
                                                            base1.cacheAsBitmap = true;
                                                         }
                                                         base0.gotoAndStop(SD.race);
                                                         §§goto(addr222);
                                                      }
                                                      units1 = new Array();
                                                   }
                                                   projectiles = new Array();
                                                }
                                                floorEffects = new Array();
                                                §§goto(addr246);
                                             }
                                             addChild(hud);
                                          }
                                          hud.mc_face1.gotoAndStop(SD.race);
                                       }
                                       hud.txt_name1.text = GameStats.getRaceStats(SD.race).char;
                                    }
                                    hud.mc_face2.gotoAndStop(_loc3_);
                                 }
                                 hud.txt_name2.text = GameStats.getRaceStats(_loc3_).char;
                              }
                              addChild(cmp);
                           }
                           if(oldtimey)
                           {
                           }
                           §§goto(addr297);
                        }
                        §§push(cmp);
                        if(true)
                        {
                           §§pop().oldtimey.stop();
                        }
                        addr318:
                        §§pop().finalInit();
                     }
                     cmp.oldtimey.visible = false;
                     §§goto(addr297);
                  }
                  pauseScreen.visible = false;
               }
               screen.setTint();
            }
            §§goto(addr318);
            §§push(cmp);
         }
      }
      
      public function victory() : void
      {
         if(true)
         {
            pause = true;
            if(true)
            {
               SH.fadeToMusic(S_Menu);
               if(true)
               {
                  pauseScreen.victory();
                  if(true)
                  {
                     SD.hadVictory = true;
                     addr88:
                     if(true)
                     {
                        Log.CustomMetric("Matches Won: " + SD.race + " - " + SD.picStage,"Matches",false);
                        if(true)
                        {
                           Log.CustomMetric("Total Matches Won: " + SD.race,"Matches",false);
                        }
                        §§push(SD.picStage);
                        §§push(5);
                        if(true)
                        {
                           addr97:
                           if(§§pop() == §§pop())
                           {
                           }
                        }
                        addr81:
                        §§goto(addr97);
                        §§push(§§pop() == §§pop());
                     }
                     §§push(SD.race);
                     §§push("boar");
                     if(true)
                     {
                        §§goto(addr97);
                        §§push(§§pop() == §§pop());
                     }
                     §§goto(addr97);
                     §§push(§§pop() != §§pop());
                  }
                  §§goto(addr81);
                  §§push(SD.picStage);
                  §§push(10);
               }
               §§goto(addr88);
               §§push(SD.race);
               §§push("boar");
            }
            Log.CustomMetric("Campaign Completed: " + SD.race,"Campaign",false);
         }
      }
      
      public function MouseUp() : void
      {
         mRadDown = false;
         hud.MouseUp();
      }
      
      public function createProjectile(param1:Unit, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         if(true)
         {
            projectiles.push(new Projectile(this,param1,param2,param3,param4,param5,param6,param7));
         }
      }
      
      public function pauseOn() : void
      {
         if(true)
         {
            pause = true;
            if(true)
            {
               SH.setMusicVolume(0.2);
            }
            pauseScreen.pauseOn();
         }
      }
      
      public function isOnScreen(param1:Number) : Number
      {
         var _loc2_:* = NaN;
         var _loc3_:* = undefined;
         var _loc4_:Number = NaN;
         §§push(background.bgLeft);
         if(true)
         {
            §§push(background);
            if(true)
            {
               addr38:
               §§push(§§pop().offset);
               if(true)
               {
                  §§push(§§pop() + §§pop());
                  if(true)
                  {
                     §§push(§§pop() * -1);
                     if(true)
                     {
                        §§push(§§pop());
                     }
                     _loc2_ = §§pop();
                     §§push(param1);
                  }
                  §§push(background);
               }
               §§push(§§pop() - §§pop());
            }
            §§goto(addr38);
            §§push(§§pop().bgLeft);
         }
         _loc3_ = §§pop();
         §§push(_loc3_ > _loc2_ - 100);
         if(_loc3_ > _loc2_ - 100)
         {
            §§pop();
            §§goto(addr88);
         }
         if(§§pop())
         {
            if(true)
            {
               _loc4_ = _loc3_ - (_loc2_ + 350);
               if(_loc4_ == 0)
               {
               }
               §§goto(addr88);
            }
            _loc4_ = 0.5;
            addr88:
            if(true)
            {
               §§push(_loc3_ < _loc2_ + 700 + 100);
            }
            return _loc4_;
         }
         return 0;
      }
      
      public function KeyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:* = param1.keyCode;
         §§push(38);
         if(true)
         {
            if(§§pop() === _loc2_)
            {
               §§push(0);
               if(false)
               {
                  addr184:
               }
            }
            else
            {
               §§push(87);
               if(true)
               {
                  if(§§pop() === _loc2_)
                  {
                     §§push(1);
                     if(false)
                     {
                        addr179:
                     }
                  }
                  else
                  {
                     §§push(40);
                     if(true)
                     {
                        if(§§pop() === _loc2_)
                        {
                           §§push(2);
                           if(false)
                           {
                              addr174:
                           }
                        }
                        else
                        {
                           §§push(83);
                           if(true)
                           {
                              if(§§pop() === _loc2_)
                              {
                                 §§push(3);
                                 if(false)
                                 {
                                    addr169:
                                 }
                              }
                              else
                              {
                                 §§push(37);
                                 if(true)
                                 {
                                    §§push(§§pop() === _loc2_ ? 4 : 65);
                                 }
                                 if(§§pop() === _loc2_)
                                 {
                                    §§goto(addr169);
                                    §§push(5);
                                 }
                                 else
                                 {
                                    §§push(39);
                                 }
                              }
                           }
                           if(§§pop() === _loc2_)
                           {
                              §§goto(addr174);
                              §§push(6);
                           }
                           else
                           {
                              §§push(68);
                           }
                        }
                     }
                     if(§§pop() === _loc2_)
                     {
                        §§goto(addr179);
                        §§push(7);
                     }
                     else
                     {
                        §§push(32);
                     }
                  }
               }
               if(§§pop() === _loc2_)
               {
                  §§goto(addr184);
                  §§push(8);
               }
               else
               {
                  §§push(9);
               }
            }
         }
         switch(§§pop())
         {
            case 0:
            case 1:
               if(!(K.keys & K.UP))
               {
                  if(true)
                  {
                     K.keys |= K.UP;
                     if(true)
                     {
                     }
                     addr286:
                     hud.KeyDown(param1);
                  }
                  break;
               }
               addr191:
               §§push(Main.SKIPS);
               if(true)
               {
                  if(§§pop())
                  {
                     switch(param1.keyCode)
                     {
                        case 57:
                           if(main.fps.y)
                           {
                              §§push(main.fps);
                              §§push(0);
                              if(true)
                              {
                                 §§pop().y = §§pop();
                                 addr208:
                              }
                              addr213:
                           }
                           else
                           {
                              §§push(main.fps);
                              §§push(-100);
                           }
                           §§pop().y = §§pop();
                           §§goto(addr213);
                        case 48:
                           §§push(pause);
                           if(true)
                           {
                              §§push(!§§pop());
                              if(true)
                              {
                                 if(§§pop())
                                 {
                                    if(true)
                                    {
                                       §§pop();
                                       addr272:
                                       §§push(cmpPause);
                                       if(true)
                                       {
                                          §§push(!§§pop());
                                       }
                                       §§push(!§§pop());
                                    }
                                    if(§§pop())
                                    {
                                    }
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    addr231:
                                    cmp.prepareNewPhase();
                                 }
                                 addr233:
                              }
                              §§pop();
                              addr283:
                              §§push(pause);
                           }
                           §§push(!§§pop());
                           break;
                        case 189:
                           defeat();
                           addr237:
                           break;
                        case 187:
                           victory();
                           addr241:
                     }
                  }
                  addr271:
                  §§goto(addr272);
                  §§push(cmpPause);
               }
               if(§§pop())
               {
                  §§goto(addr286);
               }
               break;
            case 2:
            case 3:
               if(!(K.keys & K.DOWN))
               {
                  if(true)
                  {
                     K.keys |= K.DOWN;
                     if(true)
                     {
                     }
                     §§goto(addr271);
                  }
                  §§goto(addr283);
               }
               §§goto(addr191);
            case 4:
            case 5:
               if(!(K.keys & K.LEFT))
               {
                  if(true)
                  {
                     K.keys |= K.LEFT;
                     if(true)
                     {
                     }
                     §§goto(addr237);
                  }
                  §§goto(addr241);
               }
               §§goto(addr191);
            case 6:
            case 7:
               if(!(K.keys & K.RIGHT))
               {
                  if(true)
                  {
                     K.keys |= K.RIGHT;
                     if(true)
                     {
                     }
                     §§goto(addr231);
                  }
                  §§goto(addr233);
               }
               §§goto(addr191);
            case 8:
               if(!(K.keys & K.SPACE))
               {
                  if(true)
                  {
                     K.keys |= K.SPACE;
                     if(true)
                     {
                        fastfoward = true;
                        if(true)
                        {
                        }
                        §§goto(addr208);
                     }
                     §§goto(addr213);
                  }
                  §§goto(addr272);
               }
               §§goto(addr191);
            default:
               §§goto(addr191);
         }
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:Number = NaN;
         ++fc;
         if(nextClip)
         {
            y += (800 - y) * 0.08;
            if(y > 590)
            {
               main.startClass(nextClip);
            }
         }
         else if(y > 0)
         {
            y += (0 - y) * 0.08;
         }
         §§push(pause);
         if(true)
         {
            §§push(§§pop());
            if(true)
            {
               §§push(§§pop());
               if(true)
               {
                  if(§§pop())
                  {
                     if(true)
                     {
                        §§pop();
                        addr265:
                        §§push(screenshot);
                        if(true)
                        {
                           §§push(!§§pop());
                           if(true)
                           {
                           }
                           addr263:
                           §§push(§§pop());
                        }
                        §§pop();
                        §§push(fastfoward);
                     }
                     §§push(§§pop());
                  }
                  §§push(§§pop());
                  if(true)
                  {
                     if(§§pop())
                     {
                        if(true)
                        {
                           §§pop();
                           §§push(!nextClip);
                           if(true)
                           {
                           }
                           addr186:
                           if(§§pop())
                           {
                              addr194:
                              _loc1_ = (mouseX - 620) / 3 + 2;
                              §§push(background);
                              §§push(background);
                              if(true)
                              {
                                 addr208:
                                 §§pop().newOffset = §§pop().newOffset - _loc1_;
                                 addr210:
                                 scrollSpd = 25;
                                 addr253:
                                 addr254:
                                 §§push(K.keys);
                                 §§push(K.UP);
                                 if(true)
                                 {
                                    §§push(§§pop() & §§pop());
                                 }
                                 if(§§pop() & §§pop())
                                 {
                                    addr259:
                                    background.newOffset -= scrollSpd;
                                 }
                                 §§push(oldtimey);
                              }
                              §§push(§§pop().newOffset);
                              §§push(scrollSpd);
                              if(true)
                              {
                                 §§pop().newOffset = §§pop() + §§pop();
                                 addr249:
                                 §§goto(addr253);
                                 §§push(K.keys);
                                 §§push(K.RIGHT);
                              }
                              §§goto(addr259);
                           }
                           else
                           {
                              §§push(700);
                              if(true)
                              {
                                 §§goto(addr194);
                                 §§push(§§pop());
                              }
                           }
                           if(§§pop())
                           {
                              scrollSpd = 40;
                           }
                           addr240:
                           §§push(K.keys);
                           §§push(K.DOWN);
                           if(true)
                           {
                              addr231:
                              if(§§pop() & §§pop())
                              {
                                 scrollSpd = 10;
                              }
                              §§push(K.keys);
                              §§push(K.LEFT);
                           }
                           if(§§pop() & §§pop())
                           {
                              §§goto(addr194);
                              §§push(background);
                              §§push(background);
                           }
                           §§goto(addr249);
                        }
                        §§goto(addr263);
                        §§push(§§pop());
                     }
                     if(§§pop())
                     {
                        §§push(screen);
                        if(true)
                        {
                           §§pop().filters = [new BlurFilter(5,5,1)];
                           §§push(hud);
                           if(true)
                           {
                              §§pop().filters = [new BlurFilter(5,5,1)];
                              pauseScreen.EnterFrame();
                           }
                           §§goto(addr253);
                        }
                        addr110:
                        §§pop().filters = [];
                        §§push(SD.cursorMove);
                        if(true)
                        {
                           addr129:
                           §§push(§§pop());
                           if(true)
                           {
                              if(§§pop())
                              {
                                 if(true)
                                 {
                                    §§pop();
                                    §§push(mouseY > 50);
                                 }
                              }
                              §§push(§§pop());
                           }
                           §§pop();
                           §§push(mouseY < 310);
                        }
                        if(§§pop())
                        {
                           §§push(0);
                           if(true)
                           {
                              _loc1_ = §§pop();
                              if(mouseX < 80)
                              {
                                 §§push(80);
                                 if(true)
                                 {
                                    if(mouseX > 0)
                                    {
                                       if(true)
                                       {
                                          §§push(mouseX);
                                       }
                                       §§goto(addr231);
                                    }
                                    else
                                    {
                                       §§push(0);
                                    }
                                    _loc1_ = (§§pop() - §§pop()) / 3 + 2;
                                    §§push(background);
                                    §§push(background);
                                    if(true)
                                    {
                                       §§push(§§pop().newOffset);
                                       §§push(_loc1_);
                                       if(true)
                                       {
                                          §§pop().newOffset = §§pop() + §§pop();
                                       }
                                       §§goto(addr208);
                                    }
                                    §§goto(addr259);
                                 }
                                 §§goto(addr240);
                              }
                              if(mouseX > 620)
                              {
                                 §§goto(addr186);
                                 §§push(mouseX < 700);
                              }
                           }
                           §§goto(addr254);
                        }
                        §§goto(addr210);
                     }
                     else
                     {
                        §§push(screen);
                     }
                     §§pop().filters = [];
                     §§goto(addr110);
                     §§push(hud);
                  }
                  if(§§pop())
                  {
                     §§goto(addr129);
                  }
                  §§goto(addr110);
               }
               if(!§§pop())
               {
                  §§goto(addr265);
               }
            }
            §§goto(addr289);
         }
         if(§§pop())
         {
            cmp.oldtimey.gotoAndStop(UT.irand(1,cmp.oldtimey.totalFrames));
         }
         OtherEnterFrames();
         addr289:
         if(§§pop())
         {
            §§push(oldtimey);
         }
         OtherEnterFrames();
      }
      
      public function pauseOff() : void
      {
         pause = false;
         SH.setMusicVolume(1);
         pauseScreen.pauseOff();
      }
      
      public function defeat() : void
      {
         pause = true;
         SH.fadeToMusic(S_Lose);
         pauseScreen.defeat();
         §§push(Log);
         §§push("Matches Lost: " + SD.race);
         if(true)
         {
            §§push(§§pop() + " - " + SD.picStage);
         }
         §§pop().CustomMetric(§§pop(),"Matches",false);
         Log.CustomMetric("Total Matches Lost: " + SD.race,"Matches",false);
      }
      
      public function createEffect(param1:Number, param2:Number, param3:Number, param4:Boolean, param5:String, param6:String = "idle", param7:uint = 1) : void
      {
         if(true)
         {
            projectiles.push(new Effect(this,param1,param2,param3,param4,param5,param6,param7));
         }
      }
      
      public function OtherEnterFrames() : void
      {
         var _loc1_:Array = null;
         var _loc2_:uint = 0;
         if(true)
         {
            if(!pause)
            {
               if(true)
               {
                  cmp.EnterFrame();
               }
               addr25:
               screen.drawGround();
            }
            background.EnterFrame();
            §§goto(addr25);
         }
         _loc1_ = units0.concat(units1,projectiles);
         _loc1_.sortOn(["y","depthFix"],Array.NUMERIC);
         _loc2_ = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= floorEffects.length)
            {
               §§push(0);
               if(true)
               {
                  _loc2_ = §§pop();
                  loop1:
                  while(true)
                  {
                     if(_loc2_ < _loc1_.length)
                     {
                        _loc1_[_loc2_].EnterFrame();
                        §§push(_loc2_ + 1);
                        if(false)
                        {
                           break;
                        }
                        _loc2_ = §§pop();
                        continue;
                     }
                     §§push(0);
                     if(true)
                     {
                        _loc2_ = §§pop();
                        loop2:
                        while(true)
                        {
                           if(_loc2_ < units0.length)
                           {
                              if(units0[_loc2_].remove)
                              {
                                 units0.splice(_loc2_,1);
                              }
                              §§push(_loc2_ + 1);
                              if(false)
                              {
                                 break;
                              }
                              _loc2_ = §§pop();
                              continue;
                           }
                           _loc2_ = 0;
                           while(_loc2_ < units1.length)
                           {
                              if(units1[_loc2_].remove)
                              {
                                 units1.splice(_loc2_,1);
                              }
                              §§push(_loc2_ + 1);
                              break loop2;
                           }
                           §§push(0);
                        }
                        while(true)
                        {
                           _loc2_ = §§pop();
                           §§goto(addr131);
                        }
                     }
                     _loc2_ = §§pop();
                     while(_loc2_ < projectiles.length)
                     {
                        if(projectiles[_loc2_].remove)
                        {
                           projectiles.splice(_loc2_,1);
                        }
                        §§push(_loc2_ + 1);
                        break loop1;
                     }
                     §§push(0);
                  }
                  while(true)
                  {
                     _loc2_ = §§pop();
                     §§goto(addr153);
                  }
               }
               _loc2_ = §§pop();
               while(_loc2_ < floorEffects.length)
               {
                  if(floorEffects[_loc2_].remove)
                  {
                     floorEffects.splice(_loc2_,1);
                  }
                  §§push(_loc2_ + 1);
                  break loop0;
               }
               base0.x = background.bgLeft + background.offset;
               base1.x = background.bgRight + background.offset;
               baseb0.x = background.bgLeft + background.offset;
               §§push(baseb1);
               §§push(background.bgRight);
               if(true)
               {
                  §§push(§§pop() + background.offset);
               }
               §§pop().x = §§pop();
               if(!cmpPause && !pause)
               {
                  hud.EnterFrame();
                  shake.EnterFrame();
               }
               setRadar();
               return;
               addr175:
            }
            floorEffects[_loc2_].EnterFrame();
            §§push(_loc2_ + 1);
            if(false)
            {
               break;
            }
            _loc2_ = §§pop();
         }
         while(true)
         {
            _loc2_ = §§pop();
            §§goto(addr175);
         }
      }
      
      public function KeyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:* = param1.keyCode;
         if(true)
         {
            if(38 === _loc2_)
            {
               §§goto(addr171);
            }
            else
            {
               if(87 === _loc2_)
               {
                  if(true)
                  {
                     §§push(1);
                  }
                  §§goto(addr171);
               }
               else
               {
                  if(40 === _loc2_)
                  {
                     if(true)
                     {
                        §§push(2);
                     }
                     §§goto(addr171);
                  }
                  else
                  {
                     if(83 === _loc2_)
                     {
                        if(true)
                        {
                           §§push(3);
                        }
                     }
                     else if(37 !== _loc2_)
                     {
                        if(65 !== _loc2_)
                        {
                           if(39 !== _loc2_)
                           {
                              if(68 !== _loc2_)
                              {
                                 if(32 !== _loc2_)
                                 {
                                    §§push(9);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr171);
                     return;
                     §§push(4);
                  }
                  §§goto(addr171);
                  §§push(5);
               }
               §§goto(addr171);
               §§push(6);
            }
            §§goto(addr171);
            §§push(7);
         }
         §§goto(addr171);
         §§push(8);
      }
      
      public function createUnit(param1:uint, param2:Number, param3:Number, param4:String, param5:String = "blank", param6:uint = 1, param7:Object = null) : void
      {
         var _upNum:uint;
         var _extra:Object;
         var _id:String;
         var _upgrade:String;
         var un:* = undefined;
         var _side:uint = param1;
         var _x:Number = param2;
         var _y:Number = param3;
         §§push(§§newactivation());
         §§push(param4);
         if(true)
         {
            §§pop().§§slot[4] = §§pop();
            §§push(§§newactivation());
            §§push(param5);
         }
         §§pop().§§slot[5] = §§pop();
         _upNum = param6;
         _extra = param7;
         if(!_x)
         {
            _x = !_side ? background.bgLeft : background.bgRight;
         }
         if(!_y)
         {
            _y = Math.random() * (background.placeBot - 7 - (background.placeTop + 7)) + (background.placeTop + 7);
         }
         try
         {
            §§push(UnitStats.unit[_id].atkTyp & UnitStats.E);
            if(true)
            {
               if(§§pop())
               {
                  un = new Unit_Effecter(this,_side,_x,_y,_id,_upgrade,_upNum,_extra);
               }
               else if(UnitStats.unit[_id].atkTyp & UnitStats.$)
               {
                  un = new Unit_Miner(this,_side,_x,_y,_id,_upgrade,_upNum,_extra);
               }
               else
               {
                  §§push(UnitStats.unit[_id].atkTyp & UnitStats.G);
               }
               addr201:
               if(!_side)
               {
                  units0.push(un);
               }
               else
               {
                  units1.push(un);
               }
            }
            if(§§pop())
            {
               un = new Unit_General(this,_side,_x,_y,_id,_upgrade,_upNum,_extra);
            }
            else
            {
               un = new Unit_Attacker(this,_side,_x,_y,_id,_upgrade,_upNum,_extra);
            }
            §§goto(addr201);
         }
         catch(e:Error)
         {
            if(true)
            {
               trace("Game:","Could not create",_id);
            }
         }
      }
      
      public function MouseDown() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         if(!pause)
         {
            cmp.MouseDown();
         }
         §§push(!cmpPause);
         §§push(!cmpPause);
         if(true)
         {
            if(§§pop())
            {
               §§pop();
               §§push(!pause);
            }
            if(§§pop())
            {
               hud.MouseDown();
            }
            if(pause)
            {
               pauseScreen.MouseDown();
            }
            §§push(!cmpPause && !pause);
            §§push(!cmpPause && !pause);
         }
         if(!§§pop())
         {
            §§pop();
            §§push(screenshot);
         }
         if(§§pop())
         {
            _loc1_ = 250;
            _loc2_ = 700 * 0.5 - _loc1_ * 0.5;
            if(UT.inBox(mouseX,mouseY,_loc2_,5,_loc1_,35))
            {
               mRadDown = true;
            }
         }
      }
      
      public function createSpell(param1:uint, param2:Number, param3:Number, param4:String, param5:String = "blank", param6:uint = 1) : void
      {
         projectiles.push(new UnitStats.spell[param4].cls(this,param1,param2,param3,param4,param5,param6));
      }
      
      public function createControlledEffect(param1:Number, param2:Number, param3:Number, param4:Boolean, param5:String, param6:String = "idle", param7:uint = 1, param8:Function = null, param9:Boolean = false) : EffectControlled
      {
         var _loc10_:EffectControlled = null;
         _loc10_ = new EffectControlled(this,param1,param2,param3,param4,param5,param6,param7,param8);
         if(true)
         {
            if(param9)
            {
               if(true)
               {
                  floorEffects.push(_loc10_);
               }
            }
            else
            {
               projectiles.push(_loc10_);
            }
         }
         return _loc10_;
      }
      
      private function setRadar() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:uint = 0;
         var _loc7_:* = 0;
         var _loc8_:uint = 0;
         var _loc9_:uint = 0;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         §§push(250);
         if(true)
         {
            _loc1_ = §§pop();
            _loc2_ = 35 - 5;
            §§push(700);
         }
         _loc3_ = §§pop() * 0.5 - _loc1_ * 0.5;
         _loc4_ = _loc1_ / background.bgWidth;
         §§push(700 / background.bgWidth);
         if(true)
         {
            §§push(§§pop() * _loc1_);
         }
         _loc5_ = §§pop();
         _loc6_ = 120;
         §§push(350);
         §§push(350);
         if(true)
         {
            _loc7_ = §§pop();
            §§push(_loc6_);
         }
         §§push(§§pop() - §§pop());
         if(true)
         {
            _loc8_ = §§pop();
            addr206:
            §§push(mRadDown);
            if(true)
            {
               §§push(§§pop());
               if(true)
               {
                  §§push(§§pop());
                  if(true)
                  {
                     if(§§pop())
                     {
                        addr108:
                        if(true)
                        {
                           §§pop();
                           §§push(cmpPause);
                           if(true)
                           {
                              §§push(!§§pop());
                           }
                        }
                        §§pop();
                        §§push(pause);
                     }
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     §§goto(addr108);
                  }
               }
               §§push(!§§pop());
            }
            if(§§pop())
            {
               §§push(mouseX);
               if(true)
               {
                  _loc10_ = §§pop();
                  §§push(_loc1_);
                  if(true)
                  {
                     §§push(§§pop() - _loc5_);
                     if(true)
                     {
                        §§push(§§pop());
                        if(true)
                        {
                           _loc11_ = §§pop();
                           §§push(_loc10_);
                           if(true)
                           {
                              §§push(_loc3_);
                              if(true)
                              {
                                 §§push(§§pop() + _loc5_ * 0.5);
                                 if(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       §§push(_loc3_);
                                       if(true)
                                       {
                                          addr178:
                                          §§push(_loc5_ * 0.5);
                                          if(true)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(true)
                                             {
                                                _loc10_ = §§pop();
                                             }
                                             addr155:
                                             §§push(_loc3_);
                                             if(true)
                                             {
                                                addr171:
                                                §§push(§§pop() + _loc5_ * 0.5);
                                                if(true)
                                                {
                                                   addr176:
                                                   if(§§pop() > §§pop() + _loc11_)
                                                   {
                                                      §§push(_loc3_);
                                                   }
                                                   §§push(_loc10_);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§push(§§pop() + _loc5_ * 0.5);
                                       }
                                       §§goto(addr171);
                                       §§push(_loc5_ * 0.5);
                                    }
                                    §§goto(addr155);
                                    §§push(_loc10_);
                                 }
                                 §§push(§§pop() + _loc11_ * 0.5);
                              }
                              §§push(§§pop() - §§pop());
                           }
                           §§goto(addr155);
                           §§push(_loc11_);
                        }
                        §§push(§§pop());
                     }
                     _loc10_ = §§pop();
                     §§goto(addr176);
                  }
                  §§goto(addr178);
                  §§push(_loc3_);
               }
               §§push(§§pop());
            }
            §§push(screen);
            §§push(_loc3_);
            if(true)
            {
               addr215:
               §§push(2);
               if(true)
               {
                  §§push(§§pop() - §§pop());
               }
               §§pop().paintObjectAt(§§pop(),§§pop() - 2,BH.getBit("radar"));
               _loc9_ = 0;
               loop0:
               while(true)
               {
                  if(_loc9_ < units0.length)
                  {
                     if(!units0[_loc9_].dead)
                     {
                        §§push(screen);
                        §§push(0);
                        if(true)
                        {
                           §§push(Boolean(units0[_loc9_].attacking) || units0[_loc9_].curHp != units0[_loc9_].maxHp);
                           §§push(_loc3_);
                           §§push(units0[_loc9_].x - background.bgLeft);
                           if(true)
                           {
                              §§push(background);
                              if(true)
                              {
                                 §§push(§§pop() / §§pop().bgWidth);
                                 if(true)
                                 {
                                    §§push(§§pop() * _loc1_);
                                    if(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       §§push(6);
                                       §§push(units0[_loc9_].y - _loc6_);
                                       if(true)
                                       {
                                          §§push(§§pop() / _loc8_);
                                          if(true)
                                          {
                                             §§push(§§pop() * _loc2_);
                                             if(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(true)
                                                {
                                                   §§pop().setPixelAt(§§pop(),§§pop(),§§pop(),§§pop(),units0[_loc9_]);
                                                   continue;
                                                }
                                                addr328:
                                                while(true)
                                                {
                                                   §§push(background);
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop() / _loc8_);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop() * _loc2_);
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop() * _loc1_);
                                    }
                                    addr331:
                                 }
                                 while(true)
                                 {
                                    §§goto(addr341);
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr331);
                              }
                           }
                           while(true)
                           {
                              §§pop().setPixelAt(§§pop(),§§pop(),§§pop(),§§pop(),units1[_loc9_]);
                           }
                        }
                        break;
                     }
                     continue;
                  }
                  _loc9_ = 0;
                  while(true)
                  {
                     if(_loc9_ >= units1.length)
                     {
                        screen.paintBoxAt(_loc3_ - (background.bgLeft + background.offset) * _loc4_,5,_loc5_,35);
                        return;
                        addr358:
                     }
                     if(!units1[_loc9_].dead)
                     {
                        §§push(screen);
                        break loop0;
                     }
                  }
                  while(true)
                  {
                     _loc9_++;
                     §§goto(addr354);
                     addr354:
                  }
                  §§goto(addr358);
                  _loc9_++;
               }
               while(true)
               {
                  §§goto(addr328);
               }
            }
            §§goto(addr215);
            §§push(5);
         }
         _loc12_ = §§pop();
         background.newOffset = _loc12_ / _loc11_ * 2 * background.bgLeft;
         §§goto(addr206);
      }
   }
}

if(true)
{
   Game = §§newclass(Game,MovieClip);
}

