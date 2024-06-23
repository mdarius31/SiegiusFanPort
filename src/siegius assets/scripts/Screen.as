package
{
   import fl.motion.Color;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class Screen extends Bitmap
   {
       
      
      private var bmpdata:BitmapData;
      
      public var game:*;
      
      public var offX:Number;
      
      public var offY:Number;
      
      public function Screen(param1:*)
      {
         game = param1;
         offX = offY = 0;
         bmpdata = new BitmapData(Main.WIDTH,Main.HEIGHT,true,0);
         super(bmpdata);
      }
      
      public function setPixelAt(param1:uint, param2:Boolean, param3:Number, param4:Number, param5:*) : void
      {
         var _loc6_:* = false;
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         if(true)
         {
            if(_loc6_ = param5.stats.atkTyp == UnitStats.G)
            {
               if(true)
               {
                  param2 = false;
                  if(true)
                  {
                     addr34:
                     if(param2)
                     {
                        if(true)
                        {
                           §§push(4294967040);
                           if(true)
                           {
                              §§push(§§pop());
                              if(true)
                              {
                                 addr61:
                                 _loc7_ = §§pop();
                                 addr60:
                                 if(true)
                                 {
                                    bmpdata.setPixel32(param3,param4,_loc7_);
                                    if(true)
                                    {
                                       bmpdata.setPixel32(param3 + 1,param4,_loc7_);
                                       if(true)
                                       {
                                          bmpdata.setPixel32(param3 + 2,param4,_loc7_);
                                          if(true)
                                          {
                                             bmpdata.setPixel32(param3 + 2,param4 + 1,_loc7_);
                                             if(true)
                                             {
                                                bmpdata.setPixel32(param3 + 2,param4 + 2,_loc7_);
                                                if(true)
                                                {
                                                   bmpdata.setPixel32(param3 + 1,param4 + 2,_loc7_);
                                                   if(true)
                                                   {
                                                      bmpdata.setPixel32(param3,param4 + 2,_loc7_);
                                                      if(true)
                                                      {
                                                         bmpdata.setPixel32(param3,param4 + 1,_loc7_);
                                                         if(true)
                                                         {
                                                            bmpdata.setPixel32(param3 + 1,param4 + 1,_loc7_);
                                                            if(true)
                                                            {
                                                               §§push(param5.stats.id == "rome_horse");
                                                               if(!(param5.stats.id == "rome_horse"))
                                                               {
                                                                  §§pop();
                                                                  if(true)
                                                                  {
                                                                     addr166:
                                                                     §§push(param5.stats.id == "gaul_boar");
                                                                     if(!(param5.stats.id == "gaul_boar"))
                                                                     {
                                                                        §§pop();
                                                                        if(true)
                                                                        {
                                                                           addr176:
                                                                           §§push(param5.stats.id == "gaul_mace");
                                                                           if(!(param5.stats.id == "gaul_mace"))
                                                                           {
                                                                              §§pop();
                                                                              if(true)
                                                                              {
                                                                                 addr186:
                                                                                 §§push(param5.stats.id == "gaul_horse");
                                                                                 if(!(param5.stats.id == "gaul_horse"))
                                                                                 {
                                                                                    §§pop();
                                                                                    if(true)
                                                                                    {
                                                                                       addr196:
                                                                                       if(param5.stats.id == "boar_big")
                                                                                       {
                                                                                          if(true)
                                                                                          {
                                                                                             bmpdata.setPixel32(param3 - 1,param4 + 2,_loc7_);
                                                                                             if(true)
                                                                                             {
                                                                                                bmpdata.setPixel32(param3 - 1,param4 + 1,_loc7_);
                                                                                                if(true)
                                                                                                {
                                                                                                   bmpdata.setPixel32(param3 - 1,param4,_loc7_);
                                                                                                   if(true)
                                                                                                   {
                                                                                                      bmpdata.setPixel32(param3 + 3,param4 + 2,_loc7_);
                                                                                                      if(true)
                                                                                                      {
                                                                                                         bmpdata.setPixel32(param3 + 3,param4 + 1,_loc7_);
                                                                                                         if(true)
                                                                                                         {
                                                                                                            bmpdata.setPixel32(param3 + 3,param4,_loc7_);
                                                                                                            if(true)
                                                                                                            {
                                                                                                               addr258:
                                                                                                               if(param5.stats.id == "gaul_giant")
                                                                                                               {
                                                                                                                  if(true)
                                                                                                                  {
                                                                                                                     addr267:
                                                                                                                     _loc8_ = 4294967295;
                                                                                                                     addr266:
                                                                                                                     if(true)
                                                                                                                     {
                                                                                                                        bmpdata.setPixel32(param3 - 1,param4 - 1,_loc7_);
                                                                                                                        if(true)
                                                                                                                        {
                                                                                                                           bmpdata.setPixel32(param3 - 1,param4,_loc7_);
                                                                                                                           if(true)
                                                                                                                           {
                                                                                                                              bmpdata.setPixel32(param3 - 1,param4 + 1,_loc7_);
                                                                                                                              if(true)
                                                                                                                              {
                                                                                                                                 bmpdata.setPixel32(param3 - 1,param4 + 2,_loc7_);
                                                                                                                                 bmpdata.setPixel32(param3 - 1,param4 + 3,_loc7_);
                                                                                                                              }
                                                                                                                              bmpdata.setPixel32(param3,param4 + 3,_loc7_);
                                                                                                                           }
                                                                                                                           bmpdata.setPixel32(param3 + 1,param4 + 3,_loc7_);
                                                                                                                        }
                                                                                                                        bmpdata.setPixel32(param3 + 2,param4 + 3,_loc7_);
                                                                                                                     }
                                                                                                                     bmpdata.setPixel32(param3 + 3,param4 + 3,_loc7_);
                                                                                                                  }
                                                                                                                  bmpdata.setPixel32(param3 + 3,param4 + 2,_loc7_);
                                                                                                               }
                                                                                                               addr409:
                                                                                                               if(_loc6_ || param5.stats.id == "merc_bmage")
                                                                                                               {
                                                                                                                  addr422:
                                                                                                                  _loc8_ = 4294967295;
                                                                                                                  addr423:
                                                                                                                  bmpdata.setPixel32(param3 - 1,param4 - 1,_loc8_);
                                                                                                                  addr430:
                                                                                                                  bmpdata.setPixel32(param3 - 1,param4,_loc8_);
                                                                                                                  addr436:
                                                                                                                  bmpdata.setPixel32(param3 - 1,param4 + 1,_loc8_);
                                                                                                                  addr444:
                                                                                                                  bmpdata.setPixel32(param3 - 1,param4 + 2,_loc8_);
                                                                                                                  addr452:
                                                                                                                  bmpdata.setPixel32(param3 - 1,param4 + 3,_loc8_);
                                                                                                                  addr460:
                                                                                                                  bmpdata.setPixel32(param3,param4 + 3,_loc8_);
                                                                                                                  addr467:
                                                                                                                  bmpdata.setPixel32(param3 + 1,param4 + 3,_loc8_);
                                                                                                                  addr476:
                                                                                                                  bmpdata.setPixel32(param3 + 2,param4 + 3,_loc8_);
                                                                                                                  addr485:
                                                                                                                  bmpdata.setPixel32(param3 + 3,param4 + 3,_loc8_);
                                                                                                                  addr494:
                                                                                                                  bmpdata.setPixel32(param3 + 3,param4 + 2,_loc8_);
                                                                                                                  addr503:
                                                                                                                  bmpdata.setPixel32(param3 + 3,param4 + 1,_loc8_);
                                                                                                                  addr512:
                                                                                                                  bmpdata.setPixel32(param3 + 3,param4,_loc8_);
                                                                                                                  addr519:
                                                                                                                  bmpdata.setPixel32(param3 + 3,param4 - 1,_loc8_);
                                                                                                                  addr527:
                                                                                                                  bmpdata.setPixel32(param3 + 2,param4 - 1,_loc8_);
                                                                                                                  bmpdata.setPixel32(param3 + 1,param4 - 1,_loc8_);
                                                                                                                  addr550:
                                                                                                                  bmpdata.setPixel32(param3,param4 - 1,_loc8_);
                                                                                                                  addr556:
                                                                                                                  return;
                                                                                                                  addr420:
                                                                                                                  addr421:
                                                                                                                  addr535:
                                                                                                               }
                                                                                                               §§goto(addr556);
                                                                                                            }
                                                                                                            bmpdata.setPixel32(param3 + 3,param4 + 1,_loc7_);
                                                                                                         }
                                                                                                         bmpdata.setPixel32(param3 + 3,param4,_loc7_);
                                                                                                      }
                                                                                                      bmpdata.setPixel32(param3 + 3,param4 - 1,_loc7_);
                                                                                                   }
                                                                                                   bmpdata.setPixel32(param3 + 2,param4 - 1,_loc7_);
                                                                                                }
                                                                                                bmpdata.setPixel32(param3 + 1,param4 - 1,_loc7_);
                                                                                             }
                                                                                             bmpdata.setPixel32(param3,param4 - 1,_loc7_);
                                                                                          }
                                                                                          §§goto(addr409);
                                                                                       }
                                                                                       §§goto(addr258);
                                                                                    }
                                                                                    §§goto(addr414);
                                                                                 }
                                                                                 §§goto(addr196);
                                                                              }
                                                                              §§goto(addr420);
                                                                           }
                                                                           §§goto(addr186);
                                                                        }
                                                                        §§goto(addr423);
                                                                     }
                                                                     §§goto(addr176);
                                                                  }
                                                                  §§goto(addr430);
                                                               }
                                                               §§goto(addr166);
                                                            }
                                                            §§goto(addr436);
                                                         }
                                                         §§goto(addr444);
                                                      }
                                                      §§goto(addr452);
                                                   }
                                                   §§goto(addr460);
                                                }
                                                §§goto(addr467);
                                             }
                                             §§goto(addr476);
                                          }
                                          §§goto(addr485);
                                       }
                                       §§goto(addr494);
                                    }
                                    §§goto(addr503);
                                 }
                                 §§goto(addr512);
                              }
                              §§goto(addr422);
                           }
                           §§goto(addr421);
                        }
                        §§goto(addr527);
                     }
                     else
                     {
                        §§push(param1);
                        if(true)
                        {
                           if(!§§pop())
                           {
                              if(true)
                              {
                                 §§push(4278255360);
                                 if(true)
                                 {
                                    §§push(§§pop());
                                    if(true)
                                    {
                                       §§goto(addr60);
                                    }
                                    §§goto(addr61);
                                 }
                                 §§goto(addr266);
                              }
                              §§goto(addr519);
                           }
                           else
                           {
                              §§push(uint(4294901760));
                           }
                           §§goto(addr61);
                        }
                     }
                     §§goto(addr267);
                  }
                  §§goto(addr535);
               }
               §§goto(addr550);
            }
            §§goto(addr34);
         }
         §§goto(addr422);
      }
      
      public function paintBoxAt(param1:int, param2:int, param3:int, param4:int) : void
      {
         if(true)
         {
            bmpdata.fillRect(new Rectangle(param1,param2,param3,1),4278255360);
            if(true)
            {
               bmpdata.fillRect(new Rectangle(param1,param2,1,param4),4278255360);
               bmpdata.fillRect(new Rectangle(param1 + param3,param2,1,param4),4278255360);
            }
            bmpdata.fillRect(new Rectangle(param1,param2 + param4,param3,1),4278255360);
         }
      }
      
      public function paintBox(param1:Number, param2:Number, param3:Number, param4:Number, param5:uint) : void
      {
         var _loc6_:Matrix = null;
         if(true)
         {
            game.cBox.gotoAndStop(param5);
         }
         (_loc6_ = new Matrix()).scale(param3 * 0.1,param4 * 0.1);
         if(true)
         {
            _loc6_.translate(param1 + game.background.offset,param2);
            bmpdata.draw(game.cBox,_loc6_);
         }
      }
      
      public function paintObject(param1:Number, param2:Number, param3:BitmapData) : void
      {
         bmpdata.copyPixels(param3,new Rectangle(0,0,param3.width,param3.height),new Point(param1 + game.background.offset,param2),null,null,true);
      }
      
      public function paintObjectAt(param1:Number, param2:Number, param3:BitmapData) : void
      {
         bmpdata.copyPixels(param3,new Rectangle(0,0,param3.width,param3.height),new Point(param1,param2),null,null,true);
      }
      
      public function drawGround() : void
      {
         if(true)
         {
            bmpdata.fillRect(new Rectangle(0,0,bmpdata.width,bmpdata.height),0);
         }
      }
      
      public function setTint() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Color = null;
         _loc1_ = GameStats.getMapStats(game.background.currentLabel);
         if(_loc1_.tint)
         {
            _loc2_ = new Color();
            _loc2_.setTint(_loc1_.tint.hex,_loc1_.tint.alp);
            this.transform.colorTransform = _loc2_;
            game.baseb0.transform.colorTransform = _loc2_;
            game.baseb1.transform.colorTransform = _loc2_;
            game.base0.transform.colorTransform = _loc2_;
            game.base1.transform.colorTransform = _loc2_;
         }
      }
   }
}
