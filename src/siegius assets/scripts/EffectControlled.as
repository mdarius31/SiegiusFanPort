
{
   if(true)
   {
      EffectControlled = §§newclass(EffectControlled,Effect);
   }
}

package
{
   public class EffectControlled extends Effect
   {
       
      
      public var callFunc:Function;
      
      public var spell:*;
      
      public function EffectControlled(param1:*, param2:Number, param3:Number, param4:Number, param5:Boolean, param6:String, param7:String = "idle", param8:uint = 1, param9:Function = null)
      {
         callFunc = param9;
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function changeEffect(param1:Boolean, param2:String, param3:String = "idle", param4:uint = 1, param5:Function = null) : *
      {
         var _loc6_:Object = null;
         if(true)
         {
            callFunc = param5;
            if(true)
            {
               if(!param1)
               {
                  eff = param2;
                  addr58:
                  state = param3;
                  frame = param4;
                  maxFrames = BH.BITS[eff].sub[state].frames;
                  return;
                  addr64:
               }
               §§goto(addr58);
            }
            _loc6_ = BH.getBitWithStats(param2 + "_r0",state,frame);
            if(true)
            {
               eff = param2 + "_r" + uint(Math.random() * _loc6_.rot);
               if(true)
               {
                  §§goto(addr58);
               }
               §§goto(addr64);
            }
         }
         §§goto(addr58);
      }
      
      override public function EnterFrame() : void
      {
         var _loc1_:Object = null;
         if(true)
         {
            if(remove)
            {
               if(true)
               {
                  return;
               }
               addr28:
               frame = 1;
            }
            else if(frame > maxFrames)
            {
               if(Boolean(callFunc))
               {
                  callFunc();
               }
               §§goto(addr28);
            }
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
