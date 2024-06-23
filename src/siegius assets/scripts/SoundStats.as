
{
   if(true)
   {
      SoundStats = §§newclass(SoundStats,Object);
   }
}

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
               else
               {
                  addr198:
                  §§push(8);
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
                  else
                  {
                     addr193:
                     §§push(7);
                  }
                  §§goto(addr213);
               }
               else if("whip" === _loc3_)
               {
                  if(true)
                  {
                     §§push(2);
                     if(false)
                     {
                        §§goto(addr198);
                     }
                  }
                  else
                  {
                     addr188:
                     §§push(6);
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
                           §§goto(addr193);
                        }
                     }
                     else
                     {
                        addr182:
                        §§push(5);
                     }
                     §§goto(addr213);
                  }
                  else
                  {
                     if("blunt" === _loc3_)
                     {
                        §§push(4);
                        if(false)
                        {
                           §§goto(addr188);
                        }
                     }
                     else if("mage" === _loc3_)
                     {
                        §§goto(addr182);
                     }
                     else if("mine" === _loc3_)
                     {
                        §§goto(addr188);
                     }
                     else if("die" === _loc3_)
                     {
                        §§goto(addr193);
                     }
                     else if("fire" === _loc3_)
                     {
                        §§goto(addr198);
                     }
                     else if("ice" === _loc3_)
                     {
                        addr209:
                        §§goto(addr210);
                        §§push(9);
                     }
                     else
                     {
                        §§push(10);
                     }
                     addr213:
                     switch(§§pop())
                     {
                        case 0:
                           _loc2_ = UT.getRandElement([S_Horse1,S_Cut2,S_Cut2,S_Cut2,S_Whip3,S_Whip4]);
                           break;
                        case 1:
                           _loc2_ = UT.getRandElement([S_Cut1,S_Cut2,S_Cut3,S_Cut4]);
                           break;
                        case 2:
                           _loc2_ = UT.getRandElement([S_Whip1,S_Whip2,S_Whip3,S_Whip4]);
                           break;
                        case 3:
                           _loc2_ = UT.getRandElement([S_Whop1,S_Whop2,S_Whop3]);
                           break;
                        case 4:
                           _loc2_ = UT.getRandElement([S_Blunt1,S_Blunt2,S_Cut1]);
                           break;
                        case 5:
                           _loc2_ = UT.getRandElement([S_Mage1,S_Mage2]);
                           break;
                        case 6:
                           _loc2_ = UT.getRandElement([S_Mine1,S_Mine2,S_Mine3]);
                           if(true)
                           {
                              break;
                           }
                           addr94:
                           _loc2_ = null;
                           break;
                        case 7:
                           if(Math.random() > 0.4)
                           {
                              §§goto(addr94);
                           }
                           else
                           {
                              _loc2_ = UT.getRandElement([S_Die1,S_Die2,S_Die3,S_Die4,S_Die5,S_Die6,S_Die7,S_Die8,S_Die9]);
                           }
                           §§goto(addr94);
                        case 8:
                           _loc2_ = S_FireAttack;
                           break;
                        case 9:
                           _loc2_ = S_IceAttack;
                     }
                     return _loc2_;
                  }
                  §§goto(addr182);
               }
               §§goto(addr193);
            }
         }
         §§goto(addr209);
      }
   }
}
