package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol831")]
   public class Background extends MovieClip
   {
      
      public var placeArea:Number;
      
      public var newOffset:Number;
      
      public var bg1:MovieClip;
      
      public var bg4:MovieClip;
      
      public var bg5:MovieClip;
      
      public var bg6:MovieClip;
      
      public var bg2:MovieClip;
      
      public var bg3:MovieClip;
      
      public var bgWidth:Number;
      
      public var offset:Number;
      
      public var $0_13:MovieClip;
      
      public var $0_15:MovieClip;
      
      public var $0_17:MovieClip;
      
      public var $0_12:MovieClip;
      
      public var $0_10:MovieClip;
      
      public var placeTop:Number;
      
      public var $0_21:MovieClip;
      
      public var $0_22:MovieClip;
      
      public var $0_24:MovieClip;
      
      public var bgRight:Number;
      
      public var $1_5:MovieClip;
      
      public var $1_6:MovieClip;
      
      public var $1_7:MovieClip;
      
      public var $1_8:MovieClip;
      
      public var $1_9:MovieClip;
      
      public var $1_12:MovieClip;
      
      public var $1_13:MovieClip;
      
      public var $1_14:MovieClip;
      
      public var $1_10:MovieClip;
      
      public var $1_15:MovieClip;
      
      public var $1_17:MovieClip;
      
      public var $1_21:MovieClip;
      
      public var $1_24:MovieClip;
      
      public var npzTop:MovieClip;
      
      public var $0_5:MovieClip;
      
      public var $0_6:MovieClip;
      
      public var $0_7:MovieClip;
      
      public var $0_8:MovieClip;
      
      public var $0_3:MovieClip;
      
      public var layers:uint;
      
      public var placeBot:Number;
      
      public var placeRight:Number;
      
      public var npzBot:MovieClip;
      
      public var mines0:Array;
      
      public var mines1:Array;
      
      public var placeLeft:Number;
      
      public var bgMid:Number;
      
      public var game:*;
      
      public var bgLeft:Number;
      
      public function Background(param1:*)
      {
         if(true)
         {
            super();
            if(true)
            {
               addFrameScript(0,frame1,1,frame2,2,frame3,3,frame4,4,frame5,5,frame6,6,frame7,7,frame8,8,frame9,9,frame10,10,frame11,11,frame12,12,frame13,13,frame14);
               if(true)
               {
                  game = param1;
                  if(true)
                  {
                     offset = 0;
                  }
                  mines0 = new Array();
               }
               mines1 = new Array();
            }
            newOffset = 0;
         }
      }
      
      public function MouseUp() : void
      {
      }
      
      internal function frame10() : *
      {
         setProperties(5,2400);
      }
      
      internal function frame14() : *
      {
         setProperties(6,2500);
      }
      
      internal function frame12() : *
      {
         setProperties(6,2500);
      }
      
      internal function frame2() : *
      {
         setProperties(6,2000);
      }
      
      internal function frame3() : *
      {
         if(true)
         {
            setProperties(6,2000);
         }
      }
      
      internal function frame4() : *
      {
         if(true)
         {
            setProperties(5,1300);
         }
      }
      
      internal function frame6() : *
      {
         if(true)
         {
            setProperties(6,2400);
         }
      }
      
      internal function frame7() : *
      {
         setProperties(6,2500);
      }
      
      internal function frame13() : *
      {
         setProperties(6,2500);
      }
      
      internal function frame1() : *
      {
         setProperties(6,2000);
      }
      
      internal function frame5() : *
      {
         if(true)
         {
            setProperties(6,2400);
         }
      }
      
      internal function frame9() : *
      {
         setProperties(5,2500);
      }
      
      internal function frame8() : *
      {
         setProperties(6,2500);
      }
      
      internal function frame11() : *
      {
         setProperties(6,2500);
      }
      
      public function MouseDown() : void
      {
      }
      
      public function setProperties(param1:uint, param2:*) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:* = undefined;
         var _loc5_:uint = 0;
         if(true)
         {
            layers = param1;
            if(true)
            {
               bgWidth = param2;
               if(true)
               {
                  §§push(§§findproperty(bgLeft));
                  §§push(bgWidth);
                  if(true)
                  {
                     §§push(§§pop() / 2);
                     if(true)
                     {
                        §§push(§§pop() - Main.WIDTH / 2);
                     }
                     §§push(-§§pop());
                  }
                  §§pop().bgLeft = §§pop();
                  if(true)
                  {
                     bgRight = bgWidth / 2 + Main.WIDTH / 2;
                     if(true)
                     {
                        bgMid = 700 * 0.5;
                        if(true)
                        {
                           §§push(§§findproperty(placeLeft));
                           §§push(bgLeft);
                           if(true)
                           {
                              §§push(§§pop() + 50);
                           }
                           §§pop().placeLeft = §§pop();
                           placeRight = bgRight + 50;
                        }
                        placeTop = npzTop.y + 10;
                     }
                     placeBot = npzBot.y - 10;
                  }
                  placeArea = placeBot - placeTop;
               }
               npzTop.visible = npzBot.visible = false;
            }
            _loc3_ = 0;
         }
         while(_loc3_ < numChildren)
         {
            if(getChildAt(_loc3_).name.charAt(0) == "$")
            {
               _loc4_ = getChildAt(_loc3_);
               _loc5_ = uint(getChildAt(_loc3_).name.substring(3));
               this["mines" + getChildAt(_loc3_).name.charAt(1)].push({
                  "ox":_loc4_.x,
                  "MC":_loc4_,
                  "value":_loc5_,
                  "used":false
               });
               _loc4_.visible = false;
               _loc4_.txt_num.text = "" + _loc5_;
            }
            _loc3_++;
         }
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:uint = 0;
         if(true)
         {
            §§push(newOffset);
            §§push(bgLeft);
            if(true)
            {
               if(§§pop() < §§pop())
               {
                  if(true)
                  {
                     newOffset = bgLeft;
                     if(true)
                     {
                     }
                  }
                  addr46:
                  _loc1_ = 1;
               }
               else
               {
                  §§push(newOffset);
                  §§push(-bgLeft);
               }
               addr35:
               §§push(§§findproperty(offset));
               §§push(offset);
               §§push(newOffset);
               §§push(offset);
               if(true)
               {
                  §§push(§§pop() - §§pop());
                  §§push(0.2);
               }
               §§pop().offset = §§pop() + §§pop() * §§pop();
               §§goto(addr46);
            }
            if(§§pop() > §§pop())
            {
               newOffset = -bgLeft;
            }
            §§goto(addr35);
         }
         loop0:
         while(true)
         {
            if(_loc1_ <= layers)
            {
               this["bg" + _loc1_].x = Main.WIDTH / 2 + offset * (1 + 1 / layers - _loc1_ / layers);
               if(true)
               {
                  _loc1_++;
                  if(true)
                  {
                     continue;
                  }
               }
               break;
            }
            if(true)
            {
               §§push(0);
               if(true)
               {
                  _loc1_ = §§pop();
                  addr126:
                  if(true)
                  {
                     while(_loc1_ < mines0.length)
                     {
                        mines0[_loc1_].MC.x = mines0[_loc1_].ox + offset;
                        if(false)
                        {
                           break;
                        }
                        _loc1_++;
                     }
                     §§push(0);
                  }
               }
               _loc1_ = §§pop();
               §§goto(addr126);
            }
            while(true)
            {
               _loc1_++;
            }
            addr146:
            while(true)
            {
               if(_loc1_ >= mines1.length)
               {
                  break loop0;
               }
               mines1[_loc1_].MC.x = mines1[_loc1_].ox + offset;
               §§goto(addr146);
            }
         }
      }
   }
}

