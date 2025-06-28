package
{
   public class Projectile extends FakeMC
   {
      
      private var game:*;
      
      private var unit:Unit;
      
      private var spd:Number;
      
      private var toX:Number;
      
      private var toY:Number;
      
      public var depthFix:uint;
      
      private var side:uint;
      
      private var goY:Number;
      
      private var goX:Number;
      
      public function Projectile(param1:*, param2:Unit, param3:String, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         var _loc9_:Number = NaN;
         super();
         game = param1;
         unit = param2;
         name = param3;
         depthFix = UT.irand(0,1000);
         x = param4;
         y = param5 - 1;
         toX = param6;
         toY = param7 - 1;
         spd = param8;
         _loc9_ = UT.getRotation(x,y,toX,toY);
         goX = UT.xMoveToRot(_loc9_,spd) / 5;
         goY = UT.yMoveToRot(_loc9_,spd) / 5;
         side = x < toX ? 0 : 1;
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:* = 0;
         if(remove)
         {
            return;
         }
         if(!game.cmpPause && !game.pause)
         {
            _loc1_ = 0;
            while(true)
            {
               if(_loc1_ < 5)
               {
                  x += goX;
                  y += goY;
                  §§push(_loc1_);
                  if(true)
                  {
                     §§push(uint(§§pop() + 1));
                     if(true)
                     {
                        continue;
                     }
                  }
                  break;
               }
               addr69:
               §§push(!§§pop());
               §§push(!§§pop());
               if(true)
               {
                  if(§§pop())
                  {
                     §§pop();
                     addr157:
                     addr120:
                     §§push(x > toX - spd * 1.5);
                     §§push(x > toX - spd * 1.5);
                     if(true)
                     {
                        if(!§§pop())
                        {
                           §§pop();
                           §§push(unit && x > unit.x - spd * 1.5);
                        }
                     }
                     if(§§pop())
                     {
                        §§pop();
                        §§push(x < toX + spd * 1.5);
                        §§push(x < toX + spd * 1.5);
                     }
                     if(§§pop())
                     {
                        remove = true;
                     }
                     §§goto(addr161);
                  }
                  if(!§§pop())
                  {
                     §§push(side);
                     break;
                  }
                  remove = true;
                  addr161:
                  return;
               }
               if(!§§pop())
               {
                  §§pop();
                  §§push(unit && x < unit.x + spd * 1.5);
               }
               §§goto(addr157);
               _loc1_ = §§pop();
            }
            §§goto(addr120);
            §§push(§§pop());
            §§push(§§pop());
         }
         game.screen.paintObject(x - 115,y - 37 - 35,BH.getBit("projectile" + side,name));
         §§goto(addr69);
         §§push(side);
      }
   }
}

