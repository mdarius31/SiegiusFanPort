package
{
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.filters.DisplacementMapFilter;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol293")]
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
            §§goto(addr67);
         }
         else
         {
            §§push(0);
         }
         addr67:
         §§push(1);
         if(true)
         {
            §§push(§§pop());
         }
         §§pop().setMusicVolume(§§pop());
         §§pop();
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
                     addr151:
                     if(true)
                     {
                        §§push(bars[_loc1_].frame >= 11);
                     }
                     dmf.scaleX = dmf.scaleY = scale;
                  }
                  if(!§§pop())
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
                  §§goto(addr151);
               }
               flag.filters = [dmf];
            }
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
               }
               §§pop();
               §§goto(addr64);
            }
            §§push(!§§pop());
         }
         if(§§pop())
         {
            return;
         }
         overDelete = false;
         addr64:
         §§push(menu.confirmDelete);
         if(true)
         {
            §§push(§§pop() == -1);
         }
         _loc1_ = §§pop();
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
                     }
                     else
                     {
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
                     }
                     addr169:
                     addr183:
                     break;
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
         §§push(0);
      }
      
      public function MouseDown() : void
      {
         var _loc1_:* = 0;
         var _loc2_:* = undefined;
         §§push(rolling);
         if(!rolling)
         {
            §§pop();
            §§goto(addr30);
         }
         if(§§pop())
         {
            return;
         }
         addr30:
         §§push(menu.confirmDelete);
         if(true)
         {
            §§push(§§pop() != -1);
         }
         _loc1_ = §§pop();
         while(_loc1_ < buttons.length)
         {
            _loc2_ = flag["bt_" + buttons[_loc1_]];
            if(_loc2_.hitTestPoint(menu.mouseX,menu.mouseY,false))
            {
               var _loc3_:* = buttons[_loc1_];
               if(true)
               {
                  if("start" === _loc3_)
                  {
                     addr310:
                     if(true)
                     {
                        §§push(0);
                     }
                     switch(§§pop())
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
                                 break;
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
                     }
                  }
                  else
                  {
                     if("options" === _loc3_)
                     {
                        if(true)
                        {
                           §§push(1);
                        }
                        §§goto(addr310);
                     }
                     else
                     {
                        if("gallery" === _loc3_)
                        {
                           if(true)
                           {
                              §§push(2);
                           }
                           §§goto(addr310);
                        }
                        else
                        {
                           if("credits" === _loc3_)
                           {
                              if(true)
                              {
                                 §§push(3);
                              }
                              §§goto(addr310);
                           }
                           else
                           {
                              if("walk" === _loc3_)
                              {
                                 if(true)
                                 {
                                    §§push(4);
                                 }
                                 §§goto(addr310);
                              }
                              else
                              {
                                 if("more" === _loc3_)
                                 {
                                    if(true)
                                    {
                                       §§push(5);
                                    }
                                    §§goto(addr310);
                                 }
                                 else
                                 {
                                    if("add" === _loc3_)
                                    {
                                       if(true)
                                       {
                                          §§push(6);
                                       }
                                       §§goto(addr310);
                                    }
                                    else
                                    {
                                       if("galNext" === _loc3_)
                                       {
                                          if(true)
                                          {
                                             §§push(7);
                                          }
                                          §§goto(addr310);
                                       }
                                       else
                                       {
                                          if("galPrev" === _loc3_)
                                          {
                                             if(true)
                                             {
                                                §§push(8);
                                             }
                                          }
                                          else if("credNext" === _loc3_)
                                          {
                                             §§push(9);
                                          }
                                          else if("credPrev" !== _loc3_)
                                          {
                                             if("sound" !== _loc3_)
                                             {
                                                if("music" !== _loc3_)
                                                {
                                                   if("flag" !== _loc3_)
                                                   {
                                                      if("save0" !== _loc3_)
                                                      {
                                                         if("save1" !== _loc3_)
                                                         {
                                                            if("save2" !== _loc3_)
                                                            {
                                                               if("delete0" !== _loc3_)
                                                               {
                                                                  if("delete1" !== _loc3_)
                                                                  {
                                                                     if("delete2" !== _loc3_)
                                                                     {
                                                                        §§push(20);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr310);
                                          §§push(10);
                                       }
                                       §§goto(addr310);
                                       §§push(11);
                                    }
                                    §§goto(addr310);
                                    §§push(12);
                                 }
                                 §§goto(addr310);
                                 §§push(13);
                              }
                              §§goto(addr310);
                              §§push(14);
                           }
                           §§goto(addr310);
                           §§push(15);
                        }
                        §§goto(addr310);
                        §§push(16);
                     }
                     §§goto(addr310);
                     §§push(17);
                  }
                  §§goto(addr310);
                  §§push(18);
               }
               §§goto(addr310);
               §§push(19);
            }
            §§push(_loc1_);
            if(true)
            {
               §§push(uint(§§pop() + 1));
            }
            _loc1_ = §§pop();
         }
         return;
         §§push(0);
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

if(true)
{
   MenuFlag = §§newclass(MenuFlag,MovieClip);
}

