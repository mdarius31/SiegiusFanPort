
{
   if(true)
   {
      Shake = §§newclass(Shake,Sprite);
   }
}

package
{
   import flash.display.Sprite;
   
   public class Shake extends Sprite
   {
       
      
      private var shakeX:Number;
      
      private var shakeY:Number;
      
      public function Shake()
      {
         super();
         shakeX = 0;
         shakeY = 0;
      }
      
      public function EnterFrame() : void
      {
         if(true)
         {
            §§push(shakeX);
            if(true)
            {
               if(§§pop())
               {
                  if(true)
                  {
                     x = UT.rand(-shakeX,shakeX);
                     if(true)
                     {
                        shakeX -= 0.2;
                        if(true)
                        {
                           §§push(shakeX);
                           if(true)
                           {
                              §§push(0);
                              if(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(true)
                                    {
                                       shakeX = 0;
                                       if(true)
                                       {
                                          addr59:
                                          if(!shakeY)
                                          {
                                             y = 0;
                                             §§goto(addr91);
                                          }
                                          addr91:
                                          return;
                                          addr54:
                                       }
                                       y = UT.rand(-shakeY,shakeY);
                                    }
                                    §§push(§§findproperty(shakeY));
                                    §§push(shakeY);
                                    if(true)
                                    {
                                       §§push(§§pop() - 0.2);
                                    }
                                    §§pop().shakeY = §§pop();
                                    addr83:
                                    if(shakeY < 0)
                                    {
                                       addr84:
                                       shakeY = 0;
                                       addr87:
                                       §§goto(addr91);
                                    }
                                    §§goto(addr87);
                                 }
                                 §§goto(addr54);
                              }
                              §§goto(addr83);
                           }
                           §§goto(addr59);
                        }
                        §§goto(addr83);
                     }
                  }
                  §§goto(addr84);
               }
               else
               {
                  x = 0;
               }
               §§goto(addr59);
            }
            §§goto(addr83);
         }
         §§goto(addr91);
      }
      
      public function setShake(param1:Number, param2:Number) : void
      {
         if(true)
         {
            shakeX = param1;
            shakeY = param2;
         }
      }
   }
}
