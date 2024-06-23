
{
   if(true)
   {
      MenuFlag = §§newclass(MenuFlag,MovieClip);
   }
}

package
{
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.filters.DisplacementMapFilter;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   [Embed(source="/_assets/assets.swf", symbol="MenuFlag")]
   public class MenuFlag extends MovieClip
   {
       
      
      public var curFrame:String;
      
      private var holdFilter:DisplacementMapFilter;
      
      public var rolling:Boolean;
      
      private var menu:Menu;
      
      private var map:BitmapData;
      
      private var f_glowDelKnock:GlowFilter;
      
      private var scale:Number;
      
      public var flag:MovieClip;
      
      public var buttons:Array;
      
      private var overDelete:Boolean;
      
      private var f_glowNorm:GlowFilter;
      
      private var f_glowDel:GlowFilter;
      
      private var f_glowSel:GlowFilter;
      
      private var bars:Array;
      
      private var dmf:DisplacementMapFilter;
      
      public function MenuFlag(param1:Menu)
      {
         super();
         menu = param1;
         scale = 10;
         map = new BitmapData(330,380,false,0);
         dmf = new DisplacementMapFilter(map,null,1,2,scale,scale,"color",0,0);
         bars = new Array();
         flag.filters = [dmf];
         f_glowNorm = new GlowFilter(0,1,2,2,5,1);
         f_glowSel = new GlowFilter(16750848,1,10,10,1,1);
         f_glowDel = new GlowFilter(0,1,2,2,5,1);
         f_glowDelKnock = new GlowFilter(0,1,2,2,5,1,false,true);
         buttons = new Array();
      }
      
      public function setOptions() : void
      {
         flag.bt_sound.text = SD.soundOn ? "On" : "Off";
         flag.bt_music.text = SD.musicOn ? "On" : "Off";
         flag.bt_flag.text = SD.flagWave ? "On" : "Off";
         §§push(SH);
         if(SD.musicOn)
         {
            (1).setMusicVolume(true ? §§pop() : §§pop());
            return;
         }
         §§push(0);
         §§goto(addr66);
      }
      
      private function waveFlag() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:* = undefined;
         map.fillRect(new Rectangle(0,0,map.width,map.height),0);
         if(Math.random() < 0.08)
         {
            createBar();
         }
         _loc1_ = 0;
         for(; _loc1_ < bars.length; _loc1_++)
         {
            bars[_loc1_].y -= bars[_loc1_].spd;
            if(true)
            {
               bars[_loc1_].frame += 0.06;
               if(true)
               {
                  §§push(bars[_loc1_].y < -80);
                  if(!(bars[_loc1_].y < -80))
                  {
                     §§pop();
                     if(true)
                     {
                        addr88:
                        if(bars[_loc1_].frame < 11)
                        {
                           _loc2_ = BH.getBit(bars[_loc1_].bar,"idle",uint(bars[_loc1_].frame));
                           map.copyPixels(_loc2_,new Rectangle(0,0,_loc2_.width,_loc2_.height),new Point(0,bars[_loc1_].y),null,null,true);
                           continue;
                        }
                        if(true)
                        {
                           bars.splice(_loc1_,1);
                           if(false)
                           {
                              break;
                           }
                           continue;
                        }
                        dmf.mapBitmap = map;
                     }
                     dmf.scaleX = dmf.scaleY = scale;
                     §§goto(addr167);
                  }
                  §§goto(addr88);
               }
               §§goto(addr167);
            }
            addr167:
            flag.filters = [dmf];
            return;
         }
         dmf = flag.filters[0];
         §§goto(addr148);
      }
      
      private function createBar() : void
      {
         bars.push({
            "y":map.height,
            "frame":Math.random() * 2 + 1,
            "spd":Math.random() * 1 + 2,
            "bar":(Math.random() < 0.5 ? "redBar" : "greenBar")
         });
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:* = undefined;
         §§push(SD.flagWave);
         if(true)
         {
            if(§§pop())
            {
               flag.x = 0;
               flag.y = 0;
               flag.filters = [dmf];
               waveFlag();
            }
            else
            {
               flag.x = 5;
               flag.y = 5;
               flag.filters = null;
            }
            §§push(rolling);
            if(true)
            {
               §§push(§§pop());
               if(true)
               {
                  if(§§pop())
                  {
                  }
                  addr58:
                  if(§§pop())
                  {
                     return;
                  }
                  overDelete = false;
                  §§goto(addr64);
               }
               §§pop();
               §§push(menu.confirmDelete);
               if(true)
               {
                  addr57:
                  §§goto(addr58);
                  §§push(§§pop() != -1);
               }
               addr64:
               _loc1_ = 0;
               while(_loc1_ < buttons.length)
               {
                  _loc2_ = flag["bt_" + buttons[_loc1_]];
                  if(true)
                  {
                     switch(flag.currentLabel)
                     {
                        case "main":
                        case "options":
                        case "gallery":
                        case "credits":
                           if(buttons[_loc1_] == menu.menu2.curFrame)
                           {
                              if(true)
                              {
                                 _loc2_.textColor = 16763904;
                                 if(true)
                                 {
                                    _loc2_.filters = [f_glowNorm,f_glowSel];
                                    if(true)
                                    {
                                       addr143:
                                       break;
                                    }
                                    addr178:
                                 }
                              }
                              break;
                           }
                           if(_loc2_.hitTestPoint(menu.mouseX,menu.mouseY,false))
                           {
                              if(true)
                              {
                                 _loc2_.textColor = 16763904;
                                 if(true)
                                 {
                                    _loc2_.filters = [f_glowNorm];
                                    if(true)
                                    {
                                       §§goto(addr143);
                                    }
                                    else
                                    {
                                       addr165:
                                       _loc2_.filters = [f_glowDel];
                                    }
                                 }
                              }
                              else
                              {
                                 addr174:
                                 _loc2_.box.gotoAndStop(1);
                                 §§goto(addr178);
                              }
                              addr183:
                              break;
                           }
                           _loc2_.textColor = 16240499;
                           if(true)
                           {
                              _loc2_.filters = [f_glowNorm];
                              if(true)
                              {
                                 §§goto(addr143);
                              }
                              else
                              {
                                 addr157:
                                 _loc2_.box.gotoAndStop(2);
                              }
                           }
                           addr169:
                           §§goto(addr183);
                        case "start":
                           if(_loc2_.hitTestPoint(menu.mouseX,menu.mouseY,false))
                           {
                              if(_loc2_ is MovieClip)
                              {
                                 §§goto(addr157);
                              }
                              else
                              {
                                 overDelete = true;
                                 §§goto(addr165);
                              }
                           }
                           else if(_loc2_ is MovieClip)
                           {
                              §§goto(addr174);
                           }
                           else
                           {
                              _loc2_.filters = [f_glowDelKnock];
                           }
                           §§goto(addr183);
                     }
                     _loc1_++;
                  }
               }
               return;
            }
            §§goto(addr57);
         }
         §§goto(addr58);
      }
      
      public function MouseDown() : void
      {
         var _loc1_:* = 0;
         var _loc2_:* = undefined;
         §§push(rolling);
         if(!rolling)
         {
            §§pop();
            §§push(menu.confirmDelete);
            if(true)
            {
               addr27:
               if(§§pop() != -1)
               {
                  return;
               }
               §§push(0);
            }
            _loc1_ = §§pop();
            while(_loc1_ < buttons.length)
            {
               _loc2_ = flag["bt_" + buttons[_loc1_]];
               if(!_loc2_.hitTestPoint(menu.mouseX,menu.mouseY,false))
               {
                  continue;
               }
               var _loc3_:* = buttons[_loc1_];
               if(true)
               {
                  if("start" === _loc3_)
                  {
                     addr310:
                     switch(true ? 0 : 18)
                     {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                           menu.setFlag(buttons[_loc1_]);
                           break;
                        case 4:
                           SD.urlWalkthrough();
                           break;
                        case 5:
                           SD.urlPlayMore();
                           break;
                        case 6:
                           SD.urlAddGame();
                           break;
                        case 7:
                           flag.mc_gallery.nextFrame();
                           break;
                        case 8:
                           flag.mc_gallery.prevFrame();
                           break;
                        case 9:
                           flag.mc_credits.gotoAndStop(flag.mc_credits.currentFrame + 2);
                           flag.mc_credits.prevFrame();
                           break;
                        case 10:
                           flag.mc_credits.prevFrame();
                           break;
                        case 11:
                           SD.soundOn = !SD.soundOn;
                           setOptions();
                           break;
                        case 12:
                           §§push(SD);
                           §§push(SD.musicOn);
                           if(true)
                           {
                              §§push(!§§pop());
                           }
                           §§pop().musicOn = §§pop();
                           setOptions();
                           break;
                        case 13:
                           SD.flagWave = !SD.flagWave;
                           setOptions();
                           break;
                        case 14:
                        case 15:
                        case 16:
                           SD.curSave = Number(buttons[_loc1_].substring(4));
                           if(flag["bt_delete" + SD.curSave].visible)
                           {
                              if(overDelete)
                              {
                                 continue;
                              }
                              SD.load(SD.curSave);
                              menu.nextClip = MapScreen;
                           }
                           else
                           {
                              menu.nextClip = CharSelect;
                           }
                           SH.fadeToMusic(S_Char);
                           break;
                        case 17:
                        case 18:
                        case 19:
                           menu.setConfirmDelete(Number(buttons[_loc1_].substring(6)));
                           break;
                     }
                  }
                  else
                  {
                     if("options" === _loc3_)
                     {
                        §§goto(addr310);
                        §§push(true ? 1 : 17);
                     }
                     else
                     {
                        if("gallery" === _loc3_)
                        {
                           §§goto(addr310);
                           §§push(true ? 2 : 16);
                        }
                        else
                        {
                           if("credits" === _loc3_)
                           {
                              §§goto(addr310);
                              §§push(true ? 3 : 15);
                           }
                           else
                           {
                              if("walk" === _loc3_)
                              {
                                 §§goto(addr310);
                                 §§push(true ? 4 : 14);
                              }
                              else
                              {
                                 if("more" === _loc3_)
                                 {
                                    §§goto(addr310);
                                    §§push(true ? 5 : 13);
                                 }
                                 else
                                 {
                                    if("add" === _loc3_)
                                    {
                                       §§goto(addr310);
                                       §§push(true ? 6 : 12);
                                    }
                                    else
                                    {
                                       if("galNext" === _loc3_)
                                       {
                                          §§goto(addr310);
                                          §§push(true ? 7 : 11);
                                       }
                                       else
                                       {
                                          if("galPrev" === _loc3_)
                                          {
                                             §§goto(addr310);
                                             §§push(true ? 8 : 10);
                                          }
                                          else
                                          {
                                             if("credNext" === _loc3_)
                                             {
                                                §§push(9);
                                             }
                                             else if("credPrev" === _loc3_)
                                             {
                                                §§goto(addr261);
                                             }
                                             else if("sound" === _loc3_)
                                             {
                                                §§goto(addr266);
                                             }
                                             else if("music" === _loc3_)
                                             {
                                                §§goto(addr271);
                                             }
                                             else if("flag" === _loc3_)
                                             {
                                                §§goto(addr276);
                                             }
                                             else if("save0" === _loc3_)
                                             {
                                                §§goto(addr281);
                                             }
                                             else if("save1" === _loc3_)
                                             {
                                                §§goto(addr286);
                                             }
                                             else if("save2" === _loc3_)
                                             {
                                                §§goto(addr291);
                                             }
                                             else if("delete0" === _loc3_)
                                             {
                                                §§goto(addr296);
                                             }
                                             else if("delete1" === _loc3_)
                                             {
                                                §§goto(addr301);
                                             }
                                             else
                                             {
                                                §§push("delete2" === _loc3_ ? 19 : 20);
                                             }
                                             §§goto(addr310);
                                          }
                                          §§goto(addr261);
                                       }
                                       §§goto(addr266);
                                    }
                                    §§goto(addr271);
                                 }
                                 §§goto(addr276);
                              }
                              §§goto(addr281);
                           }
                           §§goto(addr286);
                        }
                        §§goto(addr291);
                     }
                     §§goto(addr296);
                  }
                  §§goto(addr301);
               }
               §§goto(addr306);
               §§push(_loc1_);
               if(true)
               {
                  §§push(uint(§§pop() + 1));
               }
               _loc1_ = §§pop();
            }
            return;
         }
         §§goto(addr27);
      }
      
      public function setSaveButtonStates() : void
      {
         var _loc1_:* = 0;
         var _loc2_:Object = null;
         _loc1_ = 0;
         while(_loc1_ < 3)
         {
            _loc2_ = SD.getMenuSaveData(_loc1_);
            if(!_loc2_)
            {
               flag["bt_save" + _loc1_].txt_char.text = "New Game";
               flag["bt_save" + _loc1_].txt_stage.text = "";
               flag["bt_delete" + _loc1_].visible = false;
            }
            else
            {
               flag["bt_save" + _loc1_].txt_char.text = GameStats.getRaceStats(_loc2_.race).char;
               flag["bt_save" + _loc1_].txt_stage.text = "Stage " + _loc2_.curStage;
               flag["bt_delete" + _loc1_].visible = true;
            }
            §§push(_loc1_);
            if(true)
            {
               §§push(uint(§§pop() + 1));
            }
            _loc1_ = §§pop();
         }
      }
      
      public function setFlag(param1:String) : void
      {
         §§push(curFrame);
         if(true)
         {
            if(§§pop() == param1)
            {
               return;
            }
            §§push(curFrame);
         }
         if(!§§pop())
         {
            curFrame = param1;
            flag.gotoAndStop(curFrame);
         }
         else if(!rolling)
         {
            curFrame = param1;
            flag.flagDrop.play();
            flag.maskDrop.play();
         }
      }
   }
}
