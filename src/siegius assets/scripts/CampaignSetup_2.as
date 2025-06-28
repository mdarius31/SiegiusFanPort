package
{
   public class CampaignSetup extends CampaignOverlay
   {
      
      public function CampaignSetup(param1:Game)
      {
         if(true)
         {
            super(param1);
         }
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:Array = null;
         var _loc3_:* = undefined;
         var _loc4_:uint = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:uint = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Boolean = false;
         EnterEvents();
         _loc1_ = 0;
         var _loc10_:* = SD.race;
         if(true)
         {
            if("rome" === _loc10_)
            {
               if(true)
               {
                  §§push(0);
                  if(true)
                  {
                  }
               }
            }
            else if("gaul" === _loc10_)
            {
               §§push(1);
               if(false)
               {
                  addr24308:
               }
            }
            else if("boar" !== _loc10_)
            {
               if("egypt" !== _loc10_)
               {
                  §§push(4);
               }
            }
            §§goto(addr24318);
            return;
            §§push(2);
         }
         §§goto(addr24308);
         §§push(3);
      }
      
      public function finalInit() : void
      {
         var _loc1_:uint = 0;
         if(true)
         {
            if(GameStats.getCampaignStats(SD.race,SD.picStage).noRos)
            {
               _loc1_ = 0;
            }
            §§goto(addr46);
         }
         while(_loc1_ < 9)
         {
            game.hud.setButFrame(_loc1_,"locked");
            _loc1_++;
         }
         addr46:
         game.hud.gold = GameStats.getCampaignStats(SD.race,SD.picStage).gInit0;
         game.enemy.gold = GameStats.getCampaignStats(SD.race,SD.picStage).gInit1;
      }
      
      public function MouseDown() : void
      {
         if(true)
         {
            MouseEvents();
         }
      }
   }
}

