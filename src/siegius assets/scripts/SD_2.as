package
{
   import Playtomic.*;
   import flash.net.SharedObject;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class SD
   {
      
      public static var unlockGeneral:uint;
      
      public static var flagWave:Boolean;
      
      public static var hadVictory:Boolean;
      
      public static var showSaved:Boolean;
      
      public static var picStage:uint;
      
      public static var army:Array;
      
      public static var curStage:uint;
      
      public static var exp:uint;
      
      public static var unlockSpell:uint;
      
      public static var saveVars:Array;
      
      public static var soundOn:Boolean;
      
      public static var race:String;
      
      public static var upgrades:Object;
      
      public static var curSave:uint;
      
      public static var unlockDefense:uint;
      
      public static var musicOn:Boolean;
      
      public static var unlockUnit:uint;
      
      public static var unlockCampaign:uint;
      
      public static var showHpBar:Boolean = true;
      
      public static var showDmg:Boolean = true;
      
      public static var cursorMove:Boolean = true;
      
      public static var blood:uint = 1;
      
      public static var awesomeness:uint = 0;
      
      public function SD()
      {
         if(true)
         {
            super();
         }
      }
      
      public static function urlGame() : void
      {
         if(true)
         {
            navigateToURL(new URLRequest("http://www.maxgames.com/game/siegius.html"),"_blank");
            Link.Open("http://www.maxgames.com/game/siegius.html","Link - SponsorGame","Links");
         }
      }
      
      public static function urlStrategy() : void
      {
         if(true)
         {
            navigateToURL(new URLRequest("http://www.maxgames.com/category/strategy-games.html"),"_blank");
            Link.Open("http://www.maxgames.com/category/strategy-games.html","Link - Walkthrough","Links");
         }
      }
      
      public static function urlSponsor() : void
      {
         navigateToURL(new URLRequest("http://www.maxgames.com"),"_blank");
         Link.Open("http://www.maxgames.com","Link - Sponsor","Links");
      }
      
      public static function urlSleva() : void
      {
         navigateToURL(new URLRequest("http://juice-tin.com"),"_blank");
         Link.Open("http://juice-tin.com","Link - Juice-Tin","Links");
      }
      
      public static function Init() : void
      {
         unlockCampaign = 0;
         if(Main.UNLOCK)
         {
            unlockCampaign = 2;
         }
         saveVars = new Array("race","curStage","army","exp","upgrades","unlockUnit","unlockSpell","unlockGeneral","unlockDefense");
         saveVars.push("showHpBar","showDmg","blood","awesomeness","cursorMove");
         soundOn = true;
         musicOn = true;
         flagWave = true;
         loadSettings();
      }
      
      public static function urlJuice() : void
      {
         if(true)
         {
            navigateToURL(new URLRequest("http://juice-tin.com"),"_blank");
            Link.Open("http://juice-tin.com","Link - Juice-Tin","Links");
         }
      }
      
      public static function urlPlayMore() : void
      {
         navigateToURL(new URLRequest("http://www.maxgames.com/category/strategy-games.html"),"_blank");
         Link.Open("http://www.maxgames.com/category/strategy-games.html","Link - Play More","Links");
      }
      
      public static function newSave() : void
      {
         var _loc1_:Array = null;
         var _loc2_:uint = 0;
         if(true)
         {
            curStage = 1;
            if(true)
            {
               exp = 0;
               if(true)
               {
                  army = new Array("blank","blank","blank","blank","blank","blank","blank");
                  if(true)
                  {
                     unlockUnit = 4;
                     if(true)
                     {
                        unlockSpell = 0;
                        if(true)
                        {
                           unlockGeneral = 0;
                           if(true)
                           {
                              unlockDefense = 0;
                              if(true)
                              {
                                 if(Main.UNLOCK)
                                 {
                                    §§push(§§findproperty(curStage));
                                    if(SD.race != "boar")
                                    {
                                       addr75:
                                       §§push(10);
                                       if(true)
                                       {
                                          §§push(§§pop());
                                       }
                                       §§pop().curStage = §§pop();
                                    }
                                    else
                                    {
                                       §§push(5);
                                    }
                                    §§goto(addr75);
                                    §§push(§§pop());
                                 }
                              }
                              exp = 700;
                           }
                           unlockUnit = 8;
                        }
                        unlockSpell = 4;
                     }
                     unlockGeneral = 1;
                  }
                  unlockDefense = 3;
               }
               unlockCampaign = 2;
            }
            upgrades = new Object();
         }
         _loc1_ = GameStats.getUnitOrder(race);
         if(true)
         {
            _loc2_ = 0;
         }
         while(true)
         {
            if(_loc2_ < _loc1_.length)
            {
               upgrades[_loc1_[_loc2_]] = {
                  "up2":null,
                  "up3":null
               };
               if(true)
               {
                  _loc2_++;
                  if(true)
                  {
                     continue;
                  }
               }
               break;
            }
            upgrades[race + "_general"] = {
               "up2":"general",
               "up3":"general"
            };
            upgrades["s_defense"] = {
               "up2":"defup",
               "up3":"defup"
            };
            break;
         }
         _loc1_ = GameStats.getSpellOrder(race);
         _loc2_ = 0;
         while(_loc2_ < _loc1_.length)
         {
            upgrades[_loc1_[_loc2_]] = {
               "up2":null,
               "up3":null
            };
            _loc2_++;
         }
         save();
      }
      
      public static function saveSettings() : void
      {
         var _loc1_:SharedObject = null;
         _loc1_ = SharedObject.getLocal("lkjFf9JkrrJD" + "settings");
         _loc1_.data.unlockCampaign = unlockCampaign;
         _loc1_.flush();
         _loc1_.close();
      }
      
      public static function getMenuSaveData(param1:uint) : Object
      {
         var _loc2_:SharedObject = null;
         SD.picStage = null;
         _loc2_ = SharedObject.getLocal("lkjFf9JkrrJD" + param1);
         if(_loc2_.data.savedBefore)
         {
            return {
               "race":_loc2_.data.race,
               "curStage":_loc2_.data.curStage
            };
         }
         return null;
      }
      
      public static function urlAddGame() : void
      {
         navigateToURL(new URLRequest("http://www.maxgames.com/free-games.html"),"_blank");
         Link.Open("http://www.maxgames.com/free-games.html","Link - Add Game","Links");
      }
      
      public static function deleteSave(param1:uint) : void
      {
         var _loc2_:SharedObject = null;
         _loc2_ = SharedObject.getLocal("lkjFf9JkrrJD" + param1);
         if(true)
         {
            _loc2_.clear();
            _loc2_.flush();
         }
      }
      
      public static function loadSettings() : void
      {
         var _loc1_:SharedObject = null;
         _loc1_ = SharedObject.getLocal("lkjFf9JkrrJD" + "settings");
         if(true)
         {
            if(_loc1_.data.unlockCampaign)
            {
               if(true)
               {
                  unlockCampaign = _loc1_.data.unlockCampaign;
               }
            }
            _loc1_.close();
         }
      }
      
      public static function load(param1:uint) : void
      {
         var _loc2_:SharedObject = null;
         var _loc3_:uint = 0;
         if(true)
         {
            curSave = param1;
         }
         _loc2_ = SharedObject.getLocal("lkjFf9JkrrJD" + param1);
         _loc3_ = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(§§pop() < saveVars.length)
            {
               SD[saveVars[_loc3_]] = _loc2_.data[saveVars[_loc3_]];
               if(false)
               {
                  return;
               }
               §§push(_loc3_);
               if(true)
               {
                  _loc3_ = §§pop() + 1;
                  if(false)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
            _loc2_.close();
            §§goto(addr73);
         }
      }
      
      public static function urlWalkthrough() : void
      {
         navigateToURL(new URLRequest("http://www.maxgames.com/guides/siegius.html"),"_blank");
         Link.Open("http://www.maxgames.com/guides/siegius.html","Link - Walkthrough","Links");
      }
      
      public static function save() : void
      {
         var _loc1_:SharedObject = null;
         var _loc2_:uint = 0;
         SD.showSaved = true;
         trace("SHOW THE SAVE");
         _loc1_ = SharedObject.getLocal("lkjFf9JkrrJD" + curSave);
         if(true)
         {
            _loc1_.data.savedBefore = true;
            _loc2_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(§§pop() < saveVars.length)
            {
               _loc1_.data[saveVars[_loc2_]] = SD[saveVars[_loc2_]];
               §§push(_loc2_);
               if(true)
               {
                  continue loop0;
               }
            }
            _loc1_.flush();
            _loc1_.close();
            saveSettings();
            return;
            _loc2_ = §§pop() + 1;
         }
      }
   }
}

