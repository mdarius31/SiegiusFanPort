package
{
   public class SoundStats
   {
      
      public var timer:uint;
      
      public var sound:*;
      
      public function SoundStats(param1:*)
      {
         super();
         sound = param1;
         timer = 30;
      }
      
      public static function Init() : void
      {
      }
      
      public static function getSound(param1:String) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = param1;
         if(true)
         {
            if("horse" === _loc3_)
            {
               if(true)
               {
                  §§push(0);
                  if(true)
                  {
                  }
               }
               §§goto(addr213);
            }
            else
            {
               if("cut" === _loc3_)
               {
                  if(true)
                  {
                     §§push(1);
                     if(false)
                     {
                        addr210:
                     }
                  }
                  §§goto(addr213);
               }
               else
               {
                  if("whip" === _loc3_)
                  {
                     if(true)
                     {
                        §§push(2);
                        if(false)
                        {
                           addr198:
                        }
                     }
                     §§goto(addr213);
                  }
                  else
                  {
                     if("whop" === _loc3_)
                     {
                        if(true)
                        {
                           §§push(3);
                           if(false)
                           {
                              addr193:
                           }
                        }
                     }
                     else if("blunt" === _loc3_)
                     {
                        §§push(4);
                        if(false)
                        {
                           addr188:
                        }
                     }
                     else if("mage" !== _loc3_)
                     {
                        if("mine" !== _loc3_)
                        {
                           if("die" !== _loc3_)
                           {
                              if("fire" !== _loc3_)
                              {
                                 if("ice" !== _loc3_)
                                 {
                                    §§push(10);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr213);
                     §§push(5);
                  }
                  §§goto(addr188);
                  §§push(6);
               }
               §§goto(addr193);
               §§push(7);
            }
            §§goto(addr198);
            §§push(8);
         }
         §§goto(addr210);
         §§push(9);
      }
   }
}

if(true)
{
   SoundStats = §§newclass(SoundStats,Object);
}

