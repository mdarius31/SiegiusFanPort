package
{
   import flash.text.TextField;
   
   public class UT
   {
      
      public function UT()
      {
         super();
      }
      
      public static function getRandElement(param1:Array) : *
      {
         return param1[uint(Math.random() * param1.length)];
      }
      
      public static function wordWrap(param1:String, param2:TextField) : String
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(true)
         {
            param2.text = param1;
            if(true)
            {
               _loc3_ = 0;
            }
            _loc4_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() < param2.numLines - 1)
            {
               §§push(_loc3_);
               if(false)
               {
                  continue;
               }
               §§push(uint(§§pop() + param2.getLineLength(_loc4_)));
               if(false)
               {
                  continue loop0;
               }
               _loc3_ = §§pop();
               if(true)
               {
                  §§push(param1);
                  if(false)
                  {
                     §§goto(addr90);
                  }
                  param1 = §§pop().substring(0,_loc3_ + _loc4_) + "\n" + param1.substring(_loc3_ + _loc4_);
                  if(false)
                  {
                     break;
                  }
                  §§push(_loc4_ + 1);
                  continue loop0;
               }
               addr90:
               return §§pop();
               §§push(param1);
            }
            param2.text = "";
            §§goto(addr89);
            _loc4_ = §§pop();
         }
      }
      
      public static function rotateDirection(param1:Number, param2:Number) : int
      {
         §§push(§§findproperty(fixRotation));
         §§push(param2);
         if(true)
         {
            §§push(§§pop() - param1);
         }
         return §§pop().fixRotation(§§pop()) > 0 ? 1 : -1;
      }
      
      public static function rand(param1:Number, param2:Number) : Number
      {
         return Math.random() * (param2 - param1) + param1;
      }
      
      public static function inBox(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : Boolean
      {
         §§push(param1);
         §§push(param3);
         if(true)
         {
            §§goto(addr45);
            §§push(§§pop() > §§pop() && §§pop() + param6 && param4);
         }
         §§goto(addr45);
         §§push(§§pop() < §§pop());
      }
      
      public static function fixFloat(param1:Number) : Number
      {
         return int(Math.round(param1 * 10)) / 10;
      }
      
      public static function xMoveToRot(param1:Number, param2:Number) : Number
      {
         return Math.sin(param1 * (Math.PI / 180)) * param2;
      }
      
      public static function irand(param1:int, param2:int) : int
      {
         return uint(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public static function getPosNegSign(param1:Number, param2:Number) : int
      {
         if(Math.min(param1,param2) == param1)
         {
            §§push(1);
            if(true)
            {
            }
         }
         else
         {
            §§push(-1);
         }
         return §§pop();
      }
      
      public static function rotateDistance(param1:Number, param2:Number) : Number
      {
         return fixRotation(param2 - param1);
      }
      
      public static function yMoveToRot(param1:Number, param2:Number) : Number
      {
         return Math.cos(param1 * (Math.PI / 180)) * -param2;
      }
      
      public static function fixRotation(param1:Number) : Number
      {
         §§push(param1);
         §§push(180);
         if(true)
         {
            if(§§pop() > §§pop())
            {
               §§push(param1);
               §§push(360);
               if(true)
               {
                  param1 = §§pop() - §§pop();
               }
               §§goto(addr30);
            }
            addr30:
            if(§§pop() < §§pop())
            {
               §§push(param1);
               §§push(360);
            }
            return param1;
            §§push(param1);
            §§push(-180);
         }
         param1 = §§pop() + §§pop();
         §§goto(addr30);
      }
      
      public static function getRotation(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         _loc5_ = param1 - param3;
         _loc6_ = param2 - param4;
         _loc7_ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         if(_loc6_ < 0)
         {
            _loc8_ = Math.PI * 2 - Math.acos(_loc5_ / _loc7_);
         }
         else
         {
            _loc8_ = Math.acos(_loc5_ / _loc7_);
         }
         return UT.fixRotation(_loc8_ * 180 / Math.PI - 90);
      }
      
      public static function getRatio(param1:int, param2:int) : String
      {
         var _loc3_:* = null;
         _loc3_ = "UT Error";
         §§push(!param1);
         if(true)
         {
            §§push(§§pop());
            if(true)
            {
               if(§§pop())
               {
                  addr69:
                  if(true)
                  {
                     §§pop();
                     §§push(!param2);
                     if(true)
                     {
                     }
                     addr67:
                     §§push(§§pop());
                  }
                  §§pop();
                  §§push(Boolean(param2));
               }
               §§push(§§pop());
               if(true)
               {
                  if(!§§pop())
                  {
                     addr52:
                     if(true)
                     {
                        §§pop();
                        §§push(param1 == param2);
                        if(true)
                        {
                        }
                        addr49:
                        §§pop();
                        §§push(!param2);
                     }
                     if(§§pop())
                     {
                        _loc3_ = param1 + " : 0";
                     }
                     else
                     {
                        §§goto(addr67);
                        §§push(!param1);
                     }
                     §§goto(addr118);
                  }
                  if(§§pop())
                  {
                     _loc3_ = "1 : 1";
                  }
                  else
                  {
                     §§push(Boolean(param1));
                     §§push(Boolean(param1));
                  }
                  addr118:
                  return _loc3_;
               }
               if(§§pop())
               {
                  §§goto(addr49);
               }
               §§goto(addr52);
            }
            if(§§pop())
            {
               §§goto(addr69);
            }
         }
         if(§§pop())
         {
            _loc3_ = "0 : " + param2;
         }
         else if(param1 > param2)
         {
            _loc3_ = Math.round(param1 / param2 * 100) / 100 + " : 1";
         }
         else if(param2 > param1)
         {
            _loc3_ = "1 : " + Math.round(param2 / param1 * 100) / 100;
         }
         §§goto(addr52);
      }
      
      public static function fixRotation360(param1:Number) : Number
      {
         if(true)
         {
            §§push(param1);
            if(true)
            {
               if(§§pop() > 360)
               {
                  if(true)
                  {
                     §§push(param1);
                     if(true)
                     {
                        §§push(§§pop() - 360);
                        if(true)
                        {
                           §§push(§§pop());
                           if(true)
                           {
                              param1 = §§pop();
                           }
                           addr47:
                           §§push(§§pop() + 360);
                        }
                        §§push(§§pop());
                     }
                     param1 = §§pop();
                  }
                  addr46:
                  §§goto(addr47);
                  §§push(param1);
               }
               if(param1 < 0)
               {
                  §§goto(addr46);
               }
            }
            §§goto(addr52);
         }
         addr52:
         param1;
         return §§pop();
      }
      
      public static function getOrdinal(param1:uint) : String
      {
         var _loc2_:String = null;
         §§push(param1);
         §§push(100);
         if(true)
         {
            §§goto(addr27);
         }
         addr27:
         if(§§pop() % §§pop() > 10 && 100)
         {
            _loc2_ = "th";
         }
         else
         {
            var _loc3_:* = param1 % 10;
            §§push(0);
            if(true)
            {
               if(§§pop() === _loc3_)
               {
                  §§push(0);
                  if(false)
                  {
                     addr90:
                  }
               }
               else
               {
                  §§push(1);
                  if(true)
                  {
                     if(§§pop() === _loc3_)
                     {
                        §§push(1);
                        if(false)
                        {
                           addr85:
                        }
                     }
                     else if(2 === _loc3_)
                     {
                        §§goto(addr85);
                        §§push(2);
                     }
                     else
                     {
                        §§push(3);
                     }
                  }
                  if(§§pop() === _loc3_)
                  {
                     §§goto(addr90);
                     §§push(3);
                  }
                  else
                  {
                     §§push(4);
                  }
               }
            }
            switch(§§pop())
            {
               case 0:
                  _loc2_ = "th";
                  break;
               case 1:
                  _loc2_ = "st";
                  break;
               case 2:
                  _loc2_ = "nd";
                  break;
               case 3:
                  _loc2_ = "rd";
                  break;
               default:
                  _loc2_ = "th";
            }
         }
         §§pop() % §§pop() < 14;
         return param1 + _loc2_;
      }
      
      public static function getDist(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         _loc5_ = param1 - param3;
         _loc6_ = param2 - param4;
         return Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
      }
      
      public static function replaceStrWithStr(param1:String, param2:String, param3:String) : void
      {
      }
   }
}

if(true)
{
   UT = §§newclass(UT,Object);
}

