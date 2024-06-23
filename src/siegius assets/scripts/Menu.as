
{
   if(true)
   {
      Menu = §§newclass(Menu,MovieClip);
   }
}

package
{
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   
   [Embed(source="/_assets/assets.swf", symbol="Menu")]
   public class Menu extends MovieClip
   {
       
      
      public var confirmDelMC:MovieClip;
      
      public var nextClip:*;
      
      public var background:Background;
      
      private var atMenu:Boolean;
      
      public var cmpPause:Boolean;
      
      public var floorEffects:Array;
      
      public var screen:Screen;
      
      public var but:MovieClip;
      
      public var container:MovieClip;
      
      public var confirmDelete:int;
      
      public var units0:Array;
      
      public var but_max:MovieClip;
      
      public var units1:Array;
      
      public var projectiles:Array;
      
      public var initialClick:MovieClip;
      
      public var main:Main;
      
      private var tempAr0:Array;
      
      private var tempAr1:Array;
      
      public var menu1:MenuFlag;
      
      public var menu2:MenuFlag;
      
      private var rot:Number;
      
      public var mfContainer:MovieClip;
      
      public var pause:Boolean;
      
      public function Menu(param1:Main, param2:Object)
      {
         super();
         addFrameScript(61,frame62,86,frame87,87,frame88,88,frame89);
         main = param1;
         confirmDelete = -1;
         if(Boolean(param2) && Boolean(param2.midStart))
         {
            y = 500;
            atMenu = true;
            gotoAndStop("atMenu");
            menu1 = new MenuFlag(this);
            menu2 = new MenuFlag(this);
            mfContainer.addChild(menu1);
            mfContainer.addChild(menu2);
            §§push(menu1);
            if(true)
            {
               §§pop().x = 0;
               menu2.x = 700 + 80;
               §§push(menu1);
               if(true)
               {
                  §§pop().flag.gotoAndStop("main");
                  §§push(menu1);
               }
               §§pop().flag.maskDrop.gotoAndStop(23);
               §§push(menu1);
            }
            §§pop().flag.flagDrop.gotoAndStop(23);
         }
         else
         {
            SH.setMusic(S_Menu);
         }
         units0 = new Array();
         units1 = new Array();
         projectiles = new Array();
         floorEffects = new Array();
         background = new Background(this);
         container.addChild(background);
         background.gotoAndStop("menu");
         screen = new Screen(this);
         container.addChild(screen);
         tempAr0 = new Array();
         tempAr0.push("gaul_axe","gaul_axe","gaul_axe","gaul_axe","gaul_axe","gaul_axe","gaul_axe","gaul_axe");
         tempAr0.push("gaul_berserk","gaul_berserk","gaul_berserk");
         tempAr0.push("gaul_bow","gaul_bow","gaul_bow","gaul_bow","gaul_bow");
         tempAr0.push("gaul_flag");
         tempAr0.push("gaul_boar");
         tempAr0.push("gaul_mace");
         tempAr0.push("gaul_giant");
         tempAr1 = new Array();
         tempAr1.push("rome_sword","rome_sword","rome_sword","rome_sword","rome_sword");
         tempAr1.push("rome_shield","rome_shield","rome_shield","rome_shield");
         tempAr1.push("rome_bow","rome_bow","rome_bow","rome_bow");
         tempAr1.push("rome_flag");
         tempAr1.push("rome_firebow");
         tempAr1.push("rome_spear");
         tempAr1.push("rome_horse");
         rot = 0;
      }
      
      public function MouseUp() : void
      {
      }
      
      internal function frame87() : *
      {
         stop();
      }
      
      internal function frame88() : *
      {
         if(true)
         {
            stop();
         }
      }
      
      internal function frame89() : *
      {
         stop();
      }
      
      public function createProjectile(param1:Unit, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         if(true)
         {
            projectiles.push(new Projectile(this,param1,param2,param3,param4,param5,param6,param7));
         }
      }
      
      public function setConfirmDelete(param1:uint) : void
      {
         if(true)
         {
            confirmDelete = param1;
            confirmDelMC.gotoAndStop(2);
         }
      }
      
      public function EnterFrame() : void
      {
         doBgShit();
         if(!atMenu)
         {
            return;
         }
         §§push(menu1);
         if(true)
         {
            §§pop().x = menu1.x + (0 - menu1.x) * 0.2;
            §§push(menu1);
            if(true)
            {
               §§push(§§pop().x > 0 - 5);
               if(§§pop().x > 0 - 5)
               {
                  §§pop();
                  §§push(menu1);
                  if(true)
                  {
                     §§goto(addr46);
                  }
                  §§goto(addr48);
               }
               addr46:
               if(§§pop().flag.maskDrop.currentFrame == 1)
               {
                  addr48:
                  menu1.flag.maskDrop.play();
                  menu1.flag.flagDrop.play();
               }
               §§goto(addr56);
            }
            §§goto(addr48);
         }
         addr56:
         menu1.EnterFrame();
         if(menu2.flag.currentFrame != 1)
         {
            menu2.x += (700 - 280 - 10 - menu2.x) * 0.2;
            if(menu2.x < 700 - 280 - 5 && menu2.flag.maskDrop.currentFrame == 1)
            {
               menu2.flag.maskDrop.play();
               menu2.flag.flagDrop.play();
            }
            menu2.EnterFrame();
         }
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
         if(confirmDelete != -1 && confirmDelMC.currentFrame == 2)
         {
            if(confirmDelMC.txt_no.hitTestPoint(mouseX,mouseY,false))
            {
               confirmDelMC.txt_no.alpha = 1;
            }
            else
            {
               confirmDelMC.txt_no.alpha = 0.5;
            }
            if(confirmDelMC.txt_yes.hitTestPoint(mouseX,mouseY,false))
            {
               confirmDelMC.txt_yes.alpha = 1;
            }
            else
            {
               confirmDelMC.txt_yes.alpha = 0.5;
            }
         }
         if(but_max)
         {
            if(but_max.hitTestPoint(mouseX,mouseY,false))
            {
               but_max.alpha += (0 - but_max.alpha) * 0.3;
            }
            else
            {
               but_max.alpha += (1 - but_max.alpha) * 0.3;
            }
         }
      }
      
      private function doBgShit() : void
      {
         var _loc1_:Array = null;
         var _loc2_:uint = 0;
         rot = UT.fixRotation(rot + 0.5);
         §§push(background);
         if(true)
         {
            §§pop().newOffset = UT.xMoveToRot(rot,200);
            if(Math.random() < 0.06)
            {
               §§push(§§findproperty(createUnit));
               §§push(1);
               §§push(0);
               §§push(Math.random() * (background.placeBot - background.placeTop));
               if(true)
               {
                  §§push(§§pop() + background.placeTop);
               }
               §§pop().createUnit(§§pop(),§§pop(),§§pop(),tempAr0[uint(Math.random() * tempAr0.length)],"blank",1,{"noNum":true});
            }
            if(Math.random() < 0.06)
            {
               §§push(§§findproperty(createUnit));
               §§push(0);
               §§push(0);
               §§push(Math.random() * (background.placeBot - background.placeTop));
               if(true)
               {
                  §§push(§§pop() + background.placeTop);
               }
               §§pop().createUnit(§§pop(),§§pop(),§§pop(),tempAr1[uint(Math.random() * tempAr1.length)],"blank",1,{"noNum":true});
            }
            §§push(background);
         }
         §§pop().EnterFrame();
         screen.drawGround();
         _loc1_ = units0.concat(units1,projectiles);
         if(true)
         {
            _loc1_.sortOn("y",Array.NUMERIC);
            _loc2_ = 0;
         }
         loop0:
         while(true)
         {
            if(_loc2_ < _loc1_.length)
            {
               _loc1_[_loc2_].EnterFrame();
               if(true)
               {
                  §§push(_loc2_ + 1);
                  if(true)
                  {
                     _loc2_ = §§pop();
                     if(true)
                     {
                        continue;
                     }
                     §§goto(addr232);
                  }
                  §§goto(addr230);
               }
               break;
            }
            if(true)
            {
               _loc2_ = 0;
               if(true)
               {
                  loop2:
                  while(true)
                  {
                     if(_loc2_ >= units0.length)
                     {
                        if(true)
                        {
                           _loc2_ = 0;
                           if(true)
                           {
                              loop3:
                              for(; _loc2_ < units1.length; break loop2)
                              {
                                 if(!units1[_loc2_].remove)
                                 {
                                 }
                                 while(true)
                                 {
                                    §§push(_loc2_ + 1);
                                    continue loop3;
                                 }
                              }
                              addr207:
                              _loc2_ = 0;
                              loop1:
                              while(true)
                              {
                                 if(_loc2_ >= projectiles.length)
                                 {
                                    break loop0;
                                 }
                                 if(projectiles[_loc2_].remove)
                                 {
                                    while(true)
                                    {
                                       projectiles.splice(_loc2_,1);
                                       addr228:
                                       while(true)
                                       {
                                          §§push(_loc2_ + 1);
                                          continue loop1;
                                       }
                                    }
                                    addr217:
                                 }
                                 §§goto(addr228);
                              }
                              addr203:
                              addr232:
                           }
                           while(true)
                           {
                              units1.splice(_loc2_,1);
                           }
                        }
                        §§goto(addr199);
                     }
                     else
                     {
                        if(!units0[_loc2_].remove)
                        {
                           continue;
                        }
                        if(true)
                        {
                           units0.splice(_loc2_,1);
                           if(true)
                           {
                              continue;
                           }
                           §§goto(addr207);
                        }
                     }
                     §§goto(addr207);
                  }
                  while(true)
                  {
                     _loc2_ = §§pop();
                     §§goto(addr207);
                  }
               }
               §§goto(addr217);
            }
            §§goto(addr228);
            §§goto(addr230);
         }
      }
      
      public function KeyUp(param1:KeyboardEvent) : void
      {
      }
      
      public function createEffect(param1:Number, param2:Number, param3:Number, param4:Boolean, param5:String, param6:String = "idle", param7:uint = 1) : void
      {
         projectiles.push(new Effect(this,param1,param2,param3,param4,param5,param6,param7));
      }
      
      public function createUnit(param1:uint, param2:Number, param3:Number, param4:String, param5:String = "blank", param6:uint = 1, param7:Object = null) : void
      {
         var _loc8_:* = undefined;
         if(!param2)
         {
            if(!param1)
            {
               param2 = true ? Number(§§pop().bgLeft) : Number(§§pop().bgRight);
               §§goto(addr27);
            }
            else
            {
               §§push(background);
            }
            §§goto(addr23);
         }
         addr27:
         §§push(background);
         if(UnitStats.unit[param4].atkTyp & UnitStats.E)
         {
            _loc8_ = new Unit_Effecter(this,param1,param2,param3,param4,param5,param6,param7);
         }
         else if(UnitStats.unit[param4].atkTyp & UnitStats.$)
         {
            _loc8_ = new Unit_Miner(this,param1,param2,param3,param4,param5,param6,param7);
         }
         else
         {
            _loc8_ = new Unit_Attacker(this,param1,param2,param3,param4,param5,param6,param7);
         }
         if(!param1)
         {
            units0.push(_loc8_);
         }
         else
         {
            units1.push(_loc8_);
         }
      }
      
      public function MouseDown() : void
      {
         if(Boolean(but_max) && but_max.hitTestPoint(mouseX,mouseY,false))
         {
            SD.urlSponsor();
         }
         if(Boolean(initialClick) && initialClick.hitTestPoint(mouseX,mouseY,false))
         {
            gotoAndPlay("showMenu");
            atMenu = true;
            menu1 = new MenuFlag(this);
            menu2 = new MenuFlag(this);
            mfContainer.addChild(menu1);
            mfContainer.addChild(menu2);
            §§push(menu1);
            if(true)
            {
               §§pop().x = -220 - 80;
               menu2.x = 700 + 80;
               menu1.flag.gotoAndStop("main");
               addr80:
               if(!atMenu)
               {
                  return;
               }
               §§push(menu1);
            }
            §§pop().MouseDown();
            menu2.MouseDown();
            if(confirmDelete != -1 && confirmDelMC.currentFrame == 2)
            {
               if(confirmDelMC.txt_no.hitTestPoint(mouseX,mouseY,false))
               {
                  confirmDelete = -1;
                  confirmDelMC.gotoAndStop(1);
               }
               if(confirmDelMC.txt_yes.hitTestPoint(mouseX,mouseY,false))
               {
                  trace(confirmDelete);
                  SD.deleteSave(confirmDelete);
                  confirmDelete = -1;
                  confirmDelMC.gotoAndStop(1);
                  menu2.setSaveButtonStates();
               }
            }
            return;
         }
         §§goto(addr80);
      }
      
      public function KeyDown(param1:KeyboardEvent) : void
      {
      }
      
      internal function frame62() : *
      {
         gotoAndPlay(15);
      }
      
      public function setFlag(param1:String) : void
      {
         menu2.setFlag(param1);
      }
   }
}
