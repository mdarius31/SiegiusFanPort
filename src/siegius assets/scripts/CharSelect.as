package
{
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   
   [Embed(source="/_assets/assets.swf", symbol="CharSelect")]
   public class CharSelect extends MovieClip
   {
       
      
      public var txt_desc:TextField;
      
      private var nextClip:*;
      
      public var bar_spells:MovieClip;
      
      public var bar_defense:MovieClip;
      
      public var bt_prev:MovieClip;
      
      public var image:MovieClip;
      
      private var pos1:Number;
      
      private var pos0:Number;
      
      private var pos2:Number;
      
      private var spot2:Number;
      
      private var spot0:Number;
      
      private var spot1:Number;
      
      public var bt_select:TextField;
      
      private var curSelect:int;
      
      public var cloud2:MovieClip;
      
      public var cloud4:MovieClip;
      
      public var txt_type:TextField;
      
      private var offense:uint;
      
      public var cloud0:MovieClip;
      
      public var bar_offense:MovieClip;
      
      public var main:Main;
      
      public var bt_back:TextField;
      
      public var cloud1:MovieClip;
      
      private var magic:uint;
      
      public var txt_title:TextField;
      
      public var bt_next:MovieClip;
      
      private var buttons:Array;
      
      private var defense:uint;
      
      public var cloud3:MovieClip;
      
      private var clouds:Array;
      
      public var txt_sub:TextField;
      
      public function CharSelect(param1:Main, param2:Object)
      {
         var _loc3_:uint = 0;
         super();
         addFrameScript(0,frame1);
         main = param1;
         y = -500;
         spot0 = pos0 = image.img0.x;
         spot1 = pos1 = image.img1.x;
         spot2 = pos2 = image.img2.x;
         curSelect = 1;
         setChar(curSelect);
         bar_offense.width = offense * 20;
         bar_defense.width = defense * 20;
         bar_spells.width = magic * 20;
         image.img0.gotoAndStop(Main.BOARCAMP ? 5 : 4);
         image.img1.gotoAndStop(1);
         image.img2.gotoAndStop(SD.unlockCampaign >= 1 ? 3 : 2);
         buttons = new Array("bt_next","bt_prev","bt_back","bt_select");
         clouds = new Array();
         _loc3_ = 0;
         while(true)
         {
            §§push(_loc3_);
            while(true)
            {
               if(§§pop() < 5)
               {
                  this["cloud" + _loc3_].x = -500 + Math.random() * (1000 + 700);
                  if(true)
                  {
                     clouds.push({
                        "MC":this["cloud" + _loc3_],
                        "spd":Math.random() * 1.5 + 0.3
                     });
                     if(false)
                     {
                        break;
                     }
                     §§push(_loc3_);
                     if(true)
                     {
                        _loc3_ = §§pop() + 1;
                        break;
                     }
                     continue;
                  }
               }
               return;
            }
         }
      }
      
      public function KeyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function setChar(param1:uint) : void
      {
         var _loc2_:Object = null;
         var _loc3_:* = param1;
         if(true)
         {
            §§push(0);
            if(true)
            {
               if(§§pop() === _loc3_)
               {
                  if(true)
                  {
                     §§push(0);
                     if(false)
                     {
                        addr123:
                     }
                  }
                  else
                  {
                     addr117:
                     §§push(1);
                  }
               }
               else
               {
                  §§push(1);
                  if(true)
                  {
                     if(§§pop() === _loc3_)
                     {
                        §§goto(addr117);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr126);
                  }
                  if(§§pop() === _loc3_)
                  {
                     addr122:
                     §§goto(addr123);
                     §§push(2);
                  }
                  else
                  {
                     §§push(3);
                  }
               }
            }
            addr126:
            switch(§§pop())
            {
               case 0:
                  _loc2_ = GameStats.getRaceStats("boar");
                  if(true)
                  {
                     pos2 = spot0;
                     if(true)
                     {
                        pos0 = spot1;
                        if(true)
                        {
                           pos1 = spot2;
                           if(true)
                           {
                              bt_select.visible = Main.BOARCAMP;
                              if(true)
                              {
                                 addr128:
                                 txt_title.text = _loc2_.char.toUpperCase();
                                 if(true)
                                 {
                                    txt_sub.text = _loc2_.race.toUpperCase();
                                 }
                                 txt_desc.text = _loc2_.desc;
                              }
                              txt_type.text = _loc2_.type;
                           }
                           offense = _loc2_.offense;
                        }
                        defense = _loc2_.defense;
                     }
                     magic = _loc2_.magic;
                  }
                  break;
               case 1:
                  _loc2_ = GameStats.getRaceStats("rome");
                  pos0 = spot0;
                  pos1 = spot1;
                  pos2 = spot2;
                  bt_select.visible = true;
                  §§goto(addr128);
               case 2:
                  _loc2_ = GameStats.getRaceStats("gaul");
                  if(true)
                  {
                     pos1 = spot0;
                     if(true)
                     {
                        pos2 = spot1;
                        pos0 = spot2;
                     }
                     bt_select.visible = SD.unlockCampaign >= 1;
                  }
                  §§goto(addr128);
               default:
                  §§goto(addr128);
            }
            return;
         }
         §§goto(addr122);
      }
      
      public function KeyUp(param1:KeyboardEvent) : void
      {
      }
      
      public function MouseUp() : void
      {
      }
      
      internal function frame1() : *
      {
         if(true)
         {
            stop();
         }
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:MovieClip = null;
         var _loc3_:* = undefined;
         if(nextClip)
         {
            y += (-800 - y) * 0.08;
            if(y < -490)
            {
               main.startClass(nextClip,{"midStart":true});
            }
         }
         else
         {
            y += (0 - y) * 0.08;
         }
         if(image["img" + curSelect].but_max)
         {
            _loc2_ = image["img" + curSelect].but_max;
            if(true)
            {
               if(_loc2_.hitTestPoint(mouseX,mouseY,false))
               {
                  if(true)
                  {
                     _loc2_.alpha += (0 - _loc2_.alpha) * 0.3;
                  }
               }
               else
               {
                  _loc2_.alpha += (1 - _loc2_.alpha) * 0.3;
               }
            }
         }
         _loc1_ = 0;
         while(_loc1_ < buttons.length)
         {
            _loc3_ = this[buttons[_loc1_]];
            if(true)
            {
               if(_loc3_.hitTestPoint(mouseX,mouseY,false))
               {
                  if(true)
                  {
                     _loc3_.alpha = 1;
                  }
               }
               else
               {
                  _loc3_.alpha = 0.8;
               }
               _loc1_++;
            }
         }
         bar_offense.width += (offense * 20 - bar_offense.width) * 0.3;
         bar_defense.width += (defense * 20 - bar_defense.width) * 0.3;
         bar_spells.width += (magic * 20 - bar_spells.width) * 0.3;
         image.img0.x += (pos0 - image.img0.x) * 0.2;
         image.img1.x += (pos1 - image.img1.x) * 0.2;
         image.img2.x += (pos2 - image.img2.x) * 0.2;
         if(Math.abs(image.img0.x - pos0) > 190)
         {
            image.img0.x = pos0;
         }
         if(Math.abs(image.img1.x - pos1) > 190)
         {
            image.img1.x = pos1;
         }
         if(Math.abs(image.img2.x - pos2) > 190)
         {
            image.img2.x = pos2;
         }
         _loc1_ = 0;
         while(_loc1_ < 5)
         {
            clouds[_loc1_].MC.x -= clouds[_loc1_].spd;
            if(clouds[_loc1_].MC.x < -500)
            {
               clouds[_loc1_].MC.x = 700 + 500;
            }
            _loc1_++;
         }
      }
      
      public function MouseDown() : void
      {
         var _loc1_:* = 0;
         var _loc2_:MovieClip = null;
         var _loc3_:* = undefined;
         if(true)
         {
            if(y < -15)
            {
               if(true)
               {
                  return;
               }
               addr52:
               _loc2_ = image["img" + curSelect].but_max;
               if(true)
               {
                  if(_loc2_.hitTestPoint(mouseX,mouseY,false))
                  {
                     SD.urlGame();
                  }
               }
            }
            else
            {
               if(Math.abs(image["img" + curSelect].x - this["pos" + curSelect]) > 30)
               {
                  return;
               }
               if(image["img" + curSelect].but_max)
               {
                  §§goto(addr52);
               }
            }
            _loc1_ = 0;
         }
         for(; _loc1_ < buttons.length; _loc1_ = §§pop())
         {
            _loc3_ = this[buttons[_loc1_]];
            if(_loc3_.hitTestPoint(mouseX,mouseY,false))
            {
               var _loc4_:* = buttons[_loc1_];
               if(true)
               {
                  if("bt_prev" === _loc4_)
                  {
                     addr274:
                     switch(true ? 0 : 2)
                     {
                        case 0:
                           §§push((_loc4_ = §§findproperty(curSelect)).curSelect);
                           if(true)
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc5_:* = §§pop();
                           _loc4_.curSelect = _loc5_;
                           §§push(curSelect);
                           §§push(0);
                           if(true)
                           {
                              if(§§pop() < §§pop())
                              {
                                 curSelect = 2;
                              }
                              setChar(curSelect);
                              break;
                           }
                           addr180:
                           addr181:
                           addr182:
                           §§push(§§pop() == §§pop());
                           if(§§pop() == §§pop())
                           {
                              addr183:
                              §§pop();
                              §§push(SD.unlockCampaign);
                              if(false)
                              {
                                 continue;
                              }
                              §§push(§§pop() < 1);
                           }
                           if(§§pop())
                           {
                              break;
                           }
                           switch(curSelect)
                           {
                              case 0:
                                 SD.race = "boar";
                                 break;
                              case 1:
                                 SD.race = "rome";
                                 break;
                              case 2:
                                 SD.race = "gaul";
                           }
                           SD.newSave();
                           main.startClass(MapScreen,{
                              "midStart":true,
                              "useClouds":clouds
                           });
                           break;
                        case 1:
                           §§push((_loc4_ = §§findproperty(curSelect)).curSelect);
                           if(true)
                           {
                              §§push(§§pop() + 1);
                           }
                           _loc5_ = §§pop();
                           if(true)
                           {
                              _loc4_.curSelect = _loc5_;
                           }
                           §§push(curSelect);
                           §§push(2);
                           if(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 curSelect = 0;
                              }
                              setChar(curSelect);
                              break;
                           }
                           addr161:
                           §§push(§§pop() == §§pop());
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
                                       §§push(Main.BOARCAMP);
                                       if(true)
                                       {
                                          addr176:
                                          if(!§§pop())
                                          {
                                             break;
                                          }
                                          §§goto(addr180);
                                          §§push(curSelect);
                                          §§push(2);
                                       }
                                       §§goto(addr181);
                                    }
                                    §§goto(addr183);
                                 }
                                 §§goto(addr176);
                              }
                              §§goto(addr182);
                           }
                           §§goto(addr180);
                           break;
                        case 2:
                           SH.fadeToMusic(S_Menu);
                           nextClip = Menu;
                           break;
                        case 3:
                           §§goto(addr161);
                           §§push(curSelect);
                           §§push(0);
                     }
                     §§push(_loc1_ + 1);
                     continue;
                  }
                  if("bt_next" === _loc4_)
                  {
                     §§push(1);
                  }
                  else if("bt_back" === _loc4_)
                  {
                     §§goto(addr265);
                  }
                  else
                  {
                     §§push("bt_select" === _loc4_ ? 3 : 4);
                  }
                  §§goto(addr274);
                  §§goto(addr265);
               }
               §§goto(addr270);
            }
            §§goto(addr274);
         }
      }
   }
}
