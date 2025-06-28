package
{
   public class Effect extends FakeMC
   {
      
      protected var offY:Number;
      
      public var depthFix:uint;
      
      public var state:String;
      
      public var game:*;
      
      public var eff:String;
      
      public function Effect(param1:*, param2:Number, param3:Number, param4:Number, param5:Boolean, param6:String, param7:String = "idle", param8:uint = 1)
      {
         var _loc9_:Object = null;
         super();
         game = param1;
         x = param2;
         y = param3;
         offY = param4;
         depthFix = UT.irand(0,1000);
         if(param5)
         {
            _loc9_ = BH.getBitWithStats(param6 + "_r0",state,frame);
            if(true)
            {
               §§push(§§findproperty(eff));
               §§push(param6 + "_r");
               if(true)
               {
                  §§push(§§pop() + uint(Math.random() * _loc9_.rot));
               }
               §§pop().eff = §§pop();
               if(true)
               {
               }
               maxFrames = BH.BITS[eff].sub[state].frames;
               addr79:
            }
            return;
         }
         eff = param6;
         state = param7;
         frame = param8;
         §§goto(addr79);
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:Object = null;
         if(frame > maxFrames)
         {
            remove = true;
            return;
         }
         _loc1_ = BH.getBitWithStats(eff,state,frame);
         game.screen.paintObject(x - _loc1_.width / 2,y - _loc1_.height / 2 + offY,_loc1_.bit);
         if(!game.cmpPause && !game.pause)
         {
            ++frame;
         }
      }
   }
}

