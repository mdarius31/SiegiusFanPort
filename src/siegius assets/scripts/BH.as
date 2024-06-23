package
{
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="BH")]
   public class BH extends MovieClip
   {
      
      public static var BITS:Object;
      
      private static var BitAr:Array;
       
      
      private var i:uint;
      
      public var complete:Boolean;
      
      public var rotate:int;
      
      public var MC:MovieClip;
      
      private var main:Main;
      
      public function BH(param1:Main)
      {
         super();
         addFrameScript(0,frame1,1,frame2,2,frame3,3,frame4,4,frame5,5,frame6,6,frame7,7,frame8,8,frame9,9,frame10,10,frame11,11,frame12,12,frame13,13,frame14,14,frame15,15,frame16,16,frame17,17,frame18,18,frame19,19,frame20,20,frame21,21,frame22,22,frame23,23,frame24,24,frame25,25,frame26,26,frame27,27,frame28,28,frame29,29,frame30,30,frame31,31,frame32,32,frame33,33,frame34,34,frame35,35,frame36,36,frame37,37,frame38,38,frame39,39,frame40,40,frame41,41,frame42,42,frame43,43,frame44,44,frame45,45,frame46,46,frame47,47,frame48,48,frame49,49,frame50,50,frame51,51,frame52,52,frame53,53,frame54,54,frame55,55,frame56,56,frame57,57,frame58,58,frame59,59,frame60,60,frame61,61,frame62,62,frame63,63,frame64,64,frame65,65,frame66,66,frame67,67,frame68,68,frame69,69,frame70);
         main = param1;
         BitAr = new Array();
         BITS = new Object();
         i = 1;
         complete = false;
      }
      
      public static function getBitWithStats(param1:String, param2:String = "", param3:uint = 1) : Object
      {
         if(!param2)
         {
            §§push("name");
            §§push(param1);
            §§push("bit");
            if(true)
            {
               §§push(null);
               if(true)
               {
                  return §§pop();
               }
            }
            else
            {
               addr51:
               §§push(null);
            }
            return §§pop();
         }
         §§push("name");
         §§push(param1);
         §§push("bit");
         §§goto(addr51);
      }
      
      public static function getBit(param1:String, param2:String = "", param3:uint = 1) : BitmapData
      {
         var sub:String;
         var name:String;
         var frame:uint;
         §§push(§§newactivation());
         §§push(param1);
         if(true)
         {
            §§pop().§§slot[1] = §§pop();
            if(true)
            {
               §§goto(addr22);
            }
            §§goto(addr101);
         }
         addr22:
         sub = param2;
         frame = param3;
         if(true)
         {
            try
            {
               if(sub)
               {
                  return BitAr[BITS[name].sub[sub].pos + (frame - 1)];
               }
            }
            catch(e:Error)
            {
               if(true)
               {
                  trace("Error: Could not find bit: " + name + ", " + sub + ", " + frame);
               }
               addr101:
               return BitAr[BITS["error"].pos];
            }
         }
         return BitAr[BITS[name].pos];
      }
      
      internal function frame10() : *
      {
         if(true)
         {
            rotate = -1;
         }
      }
      
      internal function frame14() : *
      {
         rotate = -1;
      }
      
      internal function frame16() : *
      {
         rotate = -1;
      }
      
      internal function frame15() : *
      {
         rotate = -1;
      }
      
      internal function frame18() : *
      {
         if(true)
         {
            rotate = -1;
         }
      }
      
      internal function frame19() : *
      {
         rotate = -1;
      }
      
      internal function frame12() : *
      {
         rotate = -1;
      }
      
      internal function frame17() : *
      {
         if(true)
         {
            rotate = -1;
         }
      }
      
      internal function frame3() : *
      {
         rotate = -1;
      }
      
      internal function frame13() : *
      {
         rotate = -1;
      }
      
      internal function frame5() : *
      {
         rotate = -1;
      }
      
      internal function frame7() : *
      {
         rotate = -1;
      }
      
      internal function frame1() : *
      {
         if(true)
         {
            rotate = 0;
         }
      }
      
      internal function frame22() : *
      {
         rotate = -1;
      }
      
      internal function frame4() : *
      {
         rotate = -1;
      }
      
      internal function frame24() : *
      {
         rotate = -1;
      }
      
      internal function frame6() : *
      {
         rotate = -1;
      }
      
      internal function frame26() : *
      {
         if(true)
         {
            rotate = -1;
         }
      }
      
      internal function frame9() : *
      {
         if(true)
         {
            rotate = -1;
         }
      }
      
      internal function frame2() : *
      {
         rotate = -1;
      }
      
      internal function frame23() : *
      {
         rotate = -1;
      }
      
      internal function frame25() : *
      {
         rotate = -1;
      }
      
      internal function frame21() : *
      {
         rotate = -1;
      }
      
      internal function frame8() : *
      {
         if(true)
         {
            rotate = -1;
         }
      }
      
      public function setup() : *
      {
         var _loc1_:BitmapData = null;
         var _loc2_:uint = 0;
         var _loc3_:* = 0;
         var _loc4_:Object = null;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         var _loc7_:uint = 0;
         var _loc8_:Number = NaN;
         if(MC)
         {
            §§push(rotate);
            if(true)
            {
               §§push(!§§pop());
               if(true)
               {
                  if(!§§pop())
                  {
                     §§pop();
                     §§push(rotate);
                     if(true)
                     {
                        §§push(-1);
                        if(true)
                        {
                           addr50:
                           if(§§pop() == §§pop())
                           {
                              §§goto(addr58);
                           }
                           else
                           {
                              §§push(rotate);
                              if(true)
                              {
                                 _loc7_ = §§pop();
                                 if(true)
                                 {
                                    _loc8_ = 360 / _loc7_;
                                    if(true)
                                    {
                                       addr239:
                                       _loc3_ = 0;
                                       if(true)
                                       {
                                          while(_loc3_ < _loc7_)
                                          {
                                             MC.rotation = _loc3_ * _loc8_ - 90;
                                             if(false)
                                             {
                                                break;
                                             }
                                             _loc4_ = new Object();
                                             _loc5_ = "";
                                             _loc6_ = 1;
                                             while(_loc6_ <= MC.totalFrames)
                                             {
                                                MC.gotoAndStop(_loc6_);
                                                if(MC.currentLabel != _loc5_)
                                                {
                                                   _loc5_ = MC.currentLabel;
                                                   _loc4_[_loc5_] = {
                                                      "pos":BitAr.length,
                                                      "frames":0,
                                                      "rotAmt":_loc7_
                                                   };
                                                }
                                                ++_loc4_[_loc5_].frames;
                                                _loc1_ = new BitmapData(width,height,true,0);
                                                if(true)
                                                {
                                                   _loc1_.draw(this);
                                                   if(true)
                                                   {
                                                      BitAr.push(_loc1_);
                                                   }
                                                   §§push(_loc6_);
                                                   if(true)
                                                   {
                                                      §§push(uint(§§pop() + 1));
                                                   }
                                                   _loc6_ = §§pop();
                                                }
                                             }
                                             BITS[currentLabel + "_r" + _loc3_] = {
                                                "sub":_loc4_,
                                                "width":width,
                                                "height":height,
                                                "rot":rotate
                                             };
                                             _loc3_++;
                                          }
                                          §§goto(addr351);
                                       }
                                    }
                                    §§goto(addr383);
                                 }
                                 §§goto(addr404);
                              }
                              §§goto(addr239);
                           }
                        }
                        addr58:
                        §§push(1);
                        if(true)
                        {
                           _loc2_ = §§pop();
                           §§push(rotate);
                        }
                        if(§§pop() == -1)
                        {
                           addr60:
                           _loc2_ = 2;
                        }
                        §§goto(addr63);
                     }
                     §§goto(addr60);
                  }
               }
               §§goto(addr50);
            }
            addr63:
            _loc3_ = 0;
            loop2:
            for(; _loc3_ < _loc2_; _loc3_ = §§pop())
            {
               _loc4_ = new Object();
               _loc5_ = "";
               §§push(_loc3_);
               if(false)
               {
                  continue;
               }
               §§push(1);
               if(true)
               {
                  if(§§pop() == §§pop())
                  {
                     MC.scaleX *= -1;
                  }
                  §§push(1);
                  if(true)
                  {
                     _loc6_ = §§pop();
                     while(true)
                     {
                        §§push(_loc6_);
                        if(false)
                        {
                           break;
                        }
                        if(§§pop() > MC.totalFrames)
                        {
                           addr172:
                           §§push(rotate == -1);
                           if(rotate == -1)
                           {
                              §§pop();
                              §§push(_loc3_);
                              break;
                           }
                           if(§§pop())
                           {
                              UnitStats.unit[currentLabel].offX = MC.x;
                              UnitStats.unit[currentLabel].offY = MC.y;
                           }
                           BITS[currentLabel + (_loc3_ == 1 ? "_flip" : "")] = {
                              "sub":_loc4_,
                              "width":width,
                              "height":height
                           };
                           §§push(_loc3_ + 1);
                           continue loop2;
                        }
                        MC.gotoAndStop(_loc6_);
                        if(MC.shadowMC)
                        {
                           MC.shadowMC.gotoAndStop(_loc6_);
                        }
                        if(MC.currentLabel != _loc5_)
                        {
                           _loc5_ = MC.currentLabel;
                           _loc4_[_loc5_] = {
                              "pos":BitAr.length,
                              "frames":0
                           };
                        }
                        ++_loc4_[_loc5_].frames;
                        _loc1_ = new BitmapData(width,height,true,0);
                        if(true)
                        {
                           _loc1_.draw(this);
                           if(true)
                           {
                              BitAr.push(_loc1_);
                           }
                           §§push(_loc6_);
                           if(true)
                           {
                              §§push(uint(§§pop() + 1));
                           }
                           _loc6_ = §§pop();
                        }
                     }
                     addr171:
                     §§goto(addr172);
                     §§push(§§pop() == 0);
                  }
                  §§goto(addr172);
               }
               §§goto(addr171);
            }
            if(true)
            {
               addr380:
               if(i == totalFrames)
               {
                  addr383:
                  doComplete();
               }
               else
               {
                  ++i;
                  addr404:
                  gotoAndStop(i);
               }
               addr351:
            }
            return;
         }
         _loc1_ = new BitmapData(width,height,true,0);
         _loc1_.draw(this);
         BitAr.push(_loc1_);
         BITS[currentLabel] = {
            "pos":BitAr.length - 1,
            "width":width,
            "height":height,
            "rot":rotate
         };
         §§goto(addr380);
      }
      
      internal function frame11() : *
      {
         if(true)
         {
            rotate = -1;
         }
      }
      
      internal function frame29() : *
      {
         rotate = 0;
      }
      
      internal function frame35() : *
      {
         if(true)
         {
            rotate = 0;
         }
      }
      
      internal function frame36() : *
      {
         if(true)
         {
            rotate = 0;
         }
      }
      
      internal function frame30() : *
      {
         if(true)
         {
            rotate = 0;
         }
      }
      
      internal function frame33() : *
      {
         rotate = 0;
      }
      
      internal function frame28() : *
      {
         rotate = 0;
      }
      
      internal function frame20() : *
      {
         rotate = -1;
      }
      
      internal function frame38() : *
      {
         rotate = 0;
      }
      
      internal function frame31() : *
      {
         if(true)
         {
            rotate = 0;
         }
      }
      
      internal function frame32() : *
      {
         rotate = 0;
      }
      
      internal function frame34() : *
      {
         rotate = 0;
      }
      
      internal function frame27() : *
      {
         if(true)
         {
            rotate = -1;
         }
      }
      
      internal function frame40() : *
      {
         rotate = 0;
      }
      
      internal function frame39() : *
      {
         rotate = 0;
      }
      
      internal function frame43() : *
      {
         rotate = 0;
      }
      
      internal function frame44() : *
      {
         rotate = 4;
      }
      
      internal function frame45() : *
      {
         rotate = 4;
      }
      
      internal function frame46() : *
      {
         if(true)
         {
            rotate = 4;
         }
      }
      
      internal function frame47() : *
      {
         rotate = 4;
      }
      
      internal function frame41() : *
      {
         rotate = 0;
      }
      
      internal function frame37() : *
      {
         if(true)
         {
            rotate = 0;
         }
      }
      
      internal function frame48() : *
      {
         rotate = 4;
      }
      
      internal function frame49() : *
      {
         rotate = 0;
      }
      
      internal function frame42() : *
      {
         if(true)
         {
            rotate = 0;
         }
      }
      
      internal function frame51() : *
      {
         if(true)
         {
            rotate = 0;
         }
      }
      
      internal function frame52() : *
      {
         if(true)
         {
            rotate = 0;
         }
      }
      
      internal function frame53() : *
      {
         rotate = 0;
      }
      
      internal function frame54() : *
      {
         rotate = 0;
      }
      
      internal function frame55() : *
      {
         if(true)
         {
            rotate = 0;
         }
      }
      
      internal function frame56() : *
      {
         if(true)
         {
            rotate = 0;
         }
      }
      
      internal function frame57() : *
      {
         rotate = 0;
      }
      
      internal function frame58() : *
      {
         rotate = 0;
      }
      
      internal function frame59() : *
      {
         rotate = 0;
      }
      
      internal function frame50() : *
      {
         rotate = 0;
      }
      
      public function doComplete() : void
      {
         if(true)
         {
            complete = true;
         }
      }
      
      internal function frame60() : *
      {
         rotate = 0;
      }
      
      internal function frame61() : *
      {
         rotate = 0;
      }
      
      internal function frame62() : *
      {
         rotate = 0;
      }
      
      internal function frame63() : *
      {
         rotate = 0;
      }
      
      internal function frame66() : *
      {
         rotate = 0;
      }
      
      internal function frame67() : *
      {
         rotate = 0;
      }
      
      internal function frame68() : *
      {
         rotate = 0;
      }
      
      internal function frame65() : *
      {
         rotate = 0;
      }
      
      internal function frame69() : *
      {
         if(true)
         {
            rotate = 0;
         }
      }
      
      internal function frame70() : *
      {
         rotate = 0;
      }
      
      internal function frame64() : *
      {
         rotate = 0;
      }
   }
}
