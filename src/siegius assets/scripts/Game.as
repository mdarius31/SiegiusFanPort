
{
   if(true)
   {
      Game = §§newclass(Game,MovieClip);
   }
}

package
{
   import Playtomic.*;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.filters.BlurFilter;
   
   public class Game extends MovieClip
   {
      
      public static var OLDTIMEY:Boolean = false;
      
      {
         if(true)
         {
            OLDTIMEY = false;
         }
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
                              addr38:
                              cmp = new CampaignSetup(this);
                              if(true)
                              {
                                 _loc3_ = String(GameStats.getCampaignStats(SD.race,SD.picStage).enemy);
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
                                                                  addr116:
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
                                                                                       if(true)
                                                                                       {
                                                                                          addr170:
                                                                                          baseb1.gotoAndStop(_loc3_ + 2);
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
                                                                                                      addr211:
                                                                                                      base0.cacheAsBitmap = true;
                                                                                                      addr214:
                                                                                                      base1.cacheAsBitmap = true;
                                                                                                      addr217:
                                                                                                      base0.gotoAndStop(SD.race);
                                                                                                      §§push(base1);
                                                                                                   }
                                                                                                   §§pop().gotoAndStop(_loc3_);
                                                                                                   addr224:
                                                                                                   shake.addChild(base0);
                                                                                                   addr227:
                                                                                                   shake.addChild(base1);
                                                                                                   addr230:
                                                                                                   units0 = new Array();
                                                                                                   addr234:
                                                                                                   units1 = new Array();
                                                                                                   addr238:
                                                                                                   projectiles = new Array();
                                                                                                   addr242:
                                                                                                   floorEffects = new Array();
                                                                                                   addr246:
                                                                                                   hud = new Hud(this);
                                                                                                   addr251:
                                                                                                   enemy = new HudEnemy(this);
                                                                                                   addr256:
                                                                                                   addChild(hud);
                                                                                                   addr259:
                                                                                                   hud.mc_face1.gotoAndStop(SD.race);
                                                                                                   addr264:
                                                                                                   hud.txt_name1.text = GameStats.getRaceStats(SD.race).char;
                                                                                                   addr272:
                                                                                                   hud.mc_face2.gotoAndStop(_loc3_);
                                                                                                   addr276:
                                                                                                   hud.txt_name2.text = GameStats.getRaceStats(_loc3_).char;
                                                                                                   addr283:
                                                                                                   addChild(cmp);
                                                                                                   if(!oldtimey)
                                                                                                   {
                                                                                                      §§goto(addr288);
                                                                                                   }
                                                                                                   §§goto(addr297);
                                                                                                }
                                                                                                §§goto(addr211);
                                                                                             }
                                                                                             §§goto(addr214);
                                                                                          }
                                                                                          §§goto(addr217);
                                                                                       }
                                                                                       §§goto(addr211);
                                                                                    }
                                                                                    §§goto(addr224);
                                                                                 }
                                                                                 §§goto(addr227);
                                                                              }
                                                                              §§goto(addr230);
                                                                           }
                                                                           §§goto(addr170);
                                                                        }
                                                                        §§goto(addr234);
                                                                     }
                                                                     §§goto(addr238);
                                                                  }
                                                                  §§goto(addr242);
                                                               }
                                                               §§goto(addr246);
                                                            }
                                                            §§goto(addr251);
                                                         }
                                                         §§goto(addr116);
                                                      }
                                                      §§goto(addr256);
                                                   }
                                                   §§goto(addr259);
                                                }
                                                §§goto(addr264);
                                             }
                                             §§goto(addr272);
                                          }
                                          §§goto(addr276);
                                       }
                                       §§goto(addr283);
                                    }
                                    §§goto(addr224);
                                 }
                                 §§goto(addr288);
                              }
                           }
                           §§goto(addr293);
                        }
                        §§goto(addr302);
                     }
                     §§goto(addr38);
                  }
                  §§goto(addr312);
               }
               §§goto(addr315);
            }
            §§goto(addr293);
         }
         addr288:
         §§push(cmp);
         if(true)
         {
            §§pop().oldtimey.stop();
            addr293:
            cmp.oldtimey.visible = false;
            addr297:
            pauseScreen = new PauseScreen(this);
            addChild(pauseScreen);
            addr312:
            pauseScreen.visible = false;
            addr315:
            screen.setTint();
            §§push(cmp);
            addr302:
         }
         §§pop().finalInit();
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
                           §§push(§§pop() == §§pop());
                           if(§§pop() == §§pop())
                           {
                              §§pop();
                              addr69:
                              §§push(SD.race);
                              §§push("boar");
                              if(true)
                              {
                                 §§goto(addr75);
                              }
                              §§goto(addr88);
                           }
                           addr75:
                           if(§§pop() == §§pop() || SD.picStage == 10 && SD.race != "boar")
                           {
                              addr98:
                              Log.CustomMetric("Campaign Completed: " + SD.race,"Campaign",false);
                              §§goto(addr106);
                           }
                           addr106:
                           return;
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr81);
               }
               §§goto(addr88);
            }
         }
         §§goto(addr98);
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
               addr46:
               §§push(§§pop().offset);
               if(true)
               {
                  addr37:
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
                  §§push(background.bgLeft);
               }
               _loc3_ = §§pop() - §§pop();
               §§push(_loc3_ > _loc2_ - 100);
               if(_loc3_ > _loc2_ - 100)
               {
                  §§pop();
                  if(true)
                  {
                     addr65:
                     if(_loc3_ < _loc2_ + 700 + 100)
                     {
                        if(true)
                        {
                           if((_loc4_ = _loc3_ - (_loc2_ + 350)) == 0)
                           {
                           }
                           §§goto(addr88);
                        }
                        _loc4_ = 0.5;
                     }
                     else
                     {
                        return 0;
                     }
                  }
                  addr88:
                  return _loc4_;
               }
               §§goto(addr65);
            }
            §§goto(addr37);
         }
         §§goto(addr46);
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
                                    if(§§pop() === _loc2_)
                                    {
                                       addr187:
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
                                                                     else
                                                                     {
                                                                        addr212:
                                                                        §§pop().y = §§pop();
                                                                     }
                                                                     addr271:
                                                                     §§push(!cmpPause);
                                                                     if(!cmpPause)
                                                                     {
                                                                        addr282:
                                                                        §§pop();
                                                                        §§push(!pause);
                                                                     }
                                                                     break;
                                                                     addr213:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(main.fps);
                                                                     §§push(-100);
                                                                  }
                                                                  §§goto(addr212);
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
                                                                              addr226:
                                                                              §§push(cmpPause);
                                                                              if(true)
                                                                              {
                                                                                 addr230:
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    addr231:
                                                                                    cmp.prepareNewPhase();
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr271);
                                                                        }
                                                                        §§goto(addr230);
                                                                     }
                                                                  }
                                                                  §§goto(addr282);
                                                               case 189:
                                                                  defeat();
                                                                  addr237:
                                                                  break;
                                                               case 187:
                                                                  victory();
                                                                  addr241:
                                                            }
                                                            addr285:
                                                            if(§§pop())
                                                            {
                                                               addr286:
                                                               hud.KeyDown(param1);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr271);
                                                      }
                                                      §§goto(addr285);
                                                      addr28:
                                                   }
                                                   §§goto(addr286);
                                                }
                                                break;
                                             }
                                             §§goto(addr28);
                                          case 2:
                                          case 3:
                                             if(!(K.keys & K.DOWN))
                                             {
                                                if(true)
                                                {
                                                   K.keys |= K.DOWN;
                                                   if(true)
                                                   {
                                                      addr47:
                                                      §§goto(addr191);
                                                   }
                                                   §§goto(addr271);
                                                }
                                                §§goto(addr282);
                                             }
                                             §§goto(addr47);
                                          case 4:
                                          case 5:
                                             if(!(K.keys & K.LEFT))
                                             {
                                                if(true)
                                                {
                                                   K.keys |= K.LEFT;
                                                   if(true)
                                                   {
                                                      addr66:
                                                      §§goto(addr191);
                                                   }
                                                   §§goto(addr237);
                                                }
                                                §§goto(addr241);
                                             }
                                             §§goto(addr66);
                                          case 6:
                                          case 7:
                                             if(!(K.keys & K.RIGHT))
                                             {
                                                if(true)
                                                {
                                                   K.keys |= K.RIGHT;
                                                   if(true)
                                                   {
                                                      addr85:
                                                      §§goto(addr191);
                                                   }
                                                   §§goto(addr231);
                                                }
                                                §§goto(addr230);
                                             }
                                             §§goto(addr85);
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
                                                         addr109:
                                                         §§goto(addr191);
                                                      }
                                                      §§goto(addr208);
                                                   }
                                                   §§goto(addr213);
                                                }
                                                §§goto(addr226);
                                             }
                                             §§goto(addr109);
                                          default:
                                             §§goto(addr191);
                                       }
                                       return;
                                       §§push(4);
                                    }
                                    else
                                    {
                                       §§push(65);
                                    }
                                    §§goto(addr187);
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
                              §§goto(addr187);
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
                        §§goto(addr187);
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
                  §§goto(addr187);
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
         §§goto(addr187);
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
                        §§push(screenshot);
                        if(true)
                        {
                           §§push(!§§pop());
                           if(true)
                           {
                              addr71:
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
                                          addr82:
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
                                                else
                                                {
                                                   addr110:
                                                   §§pop().filters = [];
                                                   §§push(SD.cursorMove);
                                                   if(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(true)
                                                      {
                                                         addr128:
                                                         if(§§pop())
                                                         {
                                                            if(true)
                                                            {
                                                               §§pop();
                                                               §§push(mouseY > 50);
                                                            }
                                                         }
                                                         if(§§pop())
                                                         {
                                                         }
                                                         addr133:
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
                                                                           addr163:
                                                                           _loc1_ = (§§pop() - mouseX) / 3 + 2;
                                                                           §§push(background);
                                                                           §§push(background);
                                                                           if(true)
                                                                           {
                                                                              §§push(§§pop().newOffset);
                                                                              §§push(_loc1_);
                                                                              if(true)
                                                                              {
                                                                                 §§pop().newOffset = §§pop() + §§pop();
                                                                                 §§goto(addr180);
                                                                              }
                                                                              §§goto(addr208);
                                                                           }
                                                                           §§goto(addr257);
                                                                        }
                                                                        §§goto(addr231);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(0);
                                                                     }
                                                                     §§goto(addr163);
                                                                  }
                                                                  §§goto(addr220);
                                                               }
                                                               addr180:
                                                               if(mouseX > 620)
                                                               {
                                                                  addr186:
                                                                  if(mouseX < 700)
                                                                  {
                                                                     addr194:
                                                                     _loc1_ = (mouseX - 620) / 3 + 2;
                                                                     §§push(background);
                                                                     §§push(background);
                                                                     if(true)
                                                                     {
                                                                        addr208:
                                                                        §§pop().newOffset = §§pop().newOffset - _loc1_;
                                                                        §§goto(addr210);
                                                                     }
                                                                     §§goto(addr243);
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
                                                                  §§goto(addr220);
                                                               }
                                                               addr210:
                                                               scrollSpd = 25;
                                                               §§push(K.keys);
                                                               §§push(K.UP);
                                                               if(true)
                                                               {
                                                                  addr220:
                                                                  if(§§pop() & §§pop())
                                                                  {
                                                                     scrollSpd = 40;
                                                                  }
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
                                                                     addr243:
                                                                     §§push(background);
                                                                     §§push(background.newOffset);
                                                                     §§push(scrollSpd);
                                                                     if(true)
                                                                     {
                                                                        §§pop().newOffset = §§pop() + §§pop();
                                                                        §§goto(addr261);
                                                                     }
                                                                     §§pop().newOffset = §§pop() - §§pop();
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr261);
                                                         }
                                                         §§goto(addr208);
                                                      }
                                                      §§pop();
                                                      §§push(mouseY < 310);
                                                   }
                                                   §§goto(addr133);
                                                }
                                                §§goto(addr261);
                                             }
                                             else
                                             {
                                                addr107:
                                                §§pop().filters = [];
                                                §§push(hud);
                                             }
                                             §§goto(addr110);
                                          }
                                          else
                                          {
                                             §§push(screen);
                                          }
                                          §§goto(addr107);
                                       }
                                       §§goto(addr186);
                                    }
                                    §§goto(addr261);
                                 }
                                 §§goto(addr82);
                              }
                              §§goto(addr128);
                           }
                           addr261:
                           if(K.keys & K.RIGHT)
                           {
                              addr257:
                              §§push(background);
                              §§push(background.newOffset);
                              §§push(scrollSpd);
                           }
                           §§push(oldtimey);
                           if(!oldtimey)
                           {
                              addr265:
                              §§pop();
                              §§goto(addr268);
                           }
                           addr268:
                           §§goto(addr267);
                        }
                        §§goto(addr265);
                     }
                     addr267:
                     if(fastfoward)
                     {
                        addr270:
                        if(oldtimey)
                        {
                           cmp.oldtimey.gotoAndStop(UT.irand(1,cmp.oldtimey.totalFrames));
                        }
                        OtherEnterFrames();
                     }
                     OtherEnterFrames();
                     return;
                  }
                  §§goto(addr71);
               }
               §§goto(addr261);
            }
            §§goto(addr265);
         }
         §§goto(addr270);
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
                  addr23:
                  background.EnterFrame();
               }
               screen.drawGround();
               addr27:
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
            §§goto(addr23);
         }
         §§goto(addr27);
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
                  addr171:
                  switch(true ? 0 : 7)
                  {
                     case 0:
                     case 1:
                        if(K.keys & K.UP)
                        {
                           if(true)
                           {
                              K.keys ^= K.UP;
                              if(false)
                              {
                                 addr101:
                                 break;
                              }
                           }
                        }
                        break;
                     case 2:
                     case 3:
                        if(K.keys & K.DOWN)
                        {
                           if(true)
                           {
                              K.keys ^= K.DOWN;
                              if(false)
                              {
                                 addr79:
                                 break;
                              }
                           }
                           else
                           {
                              addr94:
                              K.keys ^= K.SPACE;
                              §§goto(addr101);
                           }
                        }
                        break;
                     case 4:
                     case 5:
                        if(K.keys & K.LEFT)
                        {
                           if(true)
                           {
                              K.keys ^= K.LEFT;
                           }
                           else
                           {
                              addr72:
                              K.keys ^= K.RIGHT;
                              §§goto(addr79);
                           }
                        }
                        break;
                     case 6:
                     case 7:
                        if(K.keys & K.RIGHT)
                        {
                           §§goto(addr72);
                        }
                        §§goto(addr79);
                     case 8:
                        if(K.keys & K.SPACE)
                        {
                           §§goto(addr94);
                        }
                        §§goto(addr101);
                  }
                  return;
                  §§push(true ? 1 : 6);
               }
               else
               {
                  if(40 === _loc2_)
                  {
                     §§goto(addr171);
                     §§push(true ? 2 : 5);
                  }
                  else
                  {
                     if(83 === _loc2_)
                     {
                        §§goto(addr171);
                        §§push(true ? 3 : 4);
                     }
                     else
                     {
                        if(37 === _loc2_)
                        {
                           §§goto(addr140);
                        }
                        else if(65 === _loc2_)
                        {
                           §§goto(addr145);
                        }
                        else if(39 === _loc2_)
                        {
                           §§goto(addr150);
                        }
                        else if(68 === _loc2_)
                        {
                           §§goto(addr155);
                        }
                        else
                        {
                           §§push(32 === _loc2_ ? 8 : 9);
                        }
                        §§goto(addr171);
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr145);
               }
               §§goto(addr150);
            }
         }
         §§goto(addr167);
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
                  addr159:
                  if(UnitStats.unit[_id].atkTyp & UnitStats.G)
                  {
                     un = new Unit_General(this,_side,_x,_y,_id,_upgrade,_upNum,_extra);
                  }
                  else
                  {
                     un = new Unit_Attacker(this,_side,_x,_y,_id,_upgrade,_upNum,_extra);
                  }
               }
               if(!_side)
               {
                  units0.push(un);
               }
               else
               {
                  units1.push(un);
               }
               §§goto(addr242);
            }
            §§goto(addr159);
         }
         catch(e:Error)
         {
            if(true)
            {
               trace("Game:","Could not create",_id);
            }
         }
         addr242:
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
         var _loc12_:Number = NaN;
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
                        if(true)
                        {
                           §§pop();
                           §§push(cmpPause);
                           if(true)
                           {
                              addr106:
                              addr107:
                              §§push(!§§pop());
                              if(!§§pop())
                              {
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
                                                            §§push(_loc5_ * 0.5);
                                                            if(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(true)
                                                               {
                                                                  _loc10_ = §§pop();
                                                                  addr154:
                                                                  §§push(_loc10_);
                                                               }
                                                               §§push(_loc3_);
                                                               if(true)
                                                               {
                                                                  §§push(§§pop() + _loc5_ * 0.5);
                                                                  if(true)
                                                                  {
                                                                     if(§§pop() > §§pop() + _loc11_)
                                                                     {
                                                                        addr175:
                                                                        _loc10_ = _loc3_ + _loc5_ * 0.5 + _loc11_;
                                                                        addr171:
                                                                     }
                                                                     addr195:
                                                                     _loc12_ = _loc10_ - (_loc3_ + _loc5_ * 0.5 + _loc11_ * 0.5);
                                                                     background.newOffset = _loc12_ / _loc11_ * 2 * background.bgLeft;
                                                                     addr206:
                                                                     §§push(screen);
                                                                     §§push(_loc3_);
                                                                     if(true)
                                                                     {
                                                                        §§push(2);
                                                                        if(true)
                                                                        {
                                                                           addr214:
                                                                           §§push(§§pop() - §§pop());
                                                                           §§push(5);
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
                                                                                                            addr329:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() / §§pop().bgWidth);
                                                                                                               addr331:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * _loc1_);
                                                                                                                  addr333:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     §§push(6);
                                                                                                                     §§push(units1[_loc9_].y - _loc6_);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() / _loc8_);
                                                                                                      }
                                                                                                      addr341:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * _loc2_);
                                                                                                      §§goto(addr341);
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   addr346:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().setPixelAt(§§pop(),§§pop(),§§pop(),§§pop(),units1[_loc9_]);
                                                                                                      §§goto(addr350);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr331);
                                                                                          }
                                                                                          §§goto(addr333);
                                                                                       }
                                                                                       §§goto(addr329);
                                                                                    }
                                                                                    §§goto(addr346);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           _loc9_ = 0;
                                                                           loop9:
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
                                                                              addr350:
                                                                              while(true)
                                                                              {
                                                                                 _loc9_++;
                                                                                 continue loop9;
                                                                              }
                                                                              §§goto(addr358);
                                                                           }
                                                                           §§goto(addr350);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr328);
                                                                        }
                                                                     }
                                                                     §§goto(addr214);
                                                                     addr178:
                                                                     addr182:
                                                                     addr193:
                                                                     addr177:
                                                                     addr194:
                                                                  }
                                                               }
                                                               §§goto(addr171);
                                                            }
                                                            §§goto(addr178);
                                                         }
                                                         §§goto(addr171);
                                                      }
                                                      §§goto(addr154);
                                                   }
                                                   §§goto(addr182);
                                                }
                                                §§goto(addr193);
                                             }
                                          }
                                          §§goto(addr171);
                                       }
                                       §§goto(addr175);
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr194);
                              }
                              §§goto(addr206);
                           }
                           §§goto(addr106);
                        }
                        §§pop();
                        addr110:
                        §§goto(addr106);
                        §§push(!pause);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr107);
               }
               §§goto(addr110);
            }
            §§goto(addr106);
         }
         §§goto(addr195);
      }
   }
}
