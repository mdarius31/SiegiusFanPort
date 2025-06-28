package
{
   public class GameStats
   {
      
      public function GameStats()
      {
         if(true)
         {
            super();
         }
      }
      
      public static function getRaceStats(param1:String) : Object
      {
         var _loc2_:Object = null;
         _loc2_ = new Object();
         switch(param1)
         {
            case "rome":
               _loc2_.char = "Caesar";
               _loc2_.race = "The Roman Legion";
               _loc2_.desc = "The Romans are quite balanced in the ways of melee, ranged, and magic attacks. They also have powerful seige weapons.";
               _loc2_.type = "(Tutorial Campaign)";
               _loc2_.offense = 4;
               _loc2_.defense = 6;
               _loc2_.magic = 5;
               _loc2_.bar = 1;
               break;
            case "gaul":
               _loc2_.char = "Vercing";
               _loc2_.race = "The Gallic Tribes";
               _loc2_.desc = "The Gaul focus on brute strength to crush their enemies with direct melee attacks. They are limited in the ways of spells and technology.";
               _loc2_.type = "(Advanced Campaign)";
               _loc2_.offense = 7;
               _loc2_.defense = 4;
               _loc2_.magic = 3;
               _loc2_.bar = 3;
               break;
            case "boar":
               _loc2_.char = "Boaretheus";
               _loc2_.race = "The Boarathians";
               _loc2_.desc = "Not much is known about the Boarathian Tribe, only that they are extremely aggressive and protective of their land.";
               _loc2_.type = "(BONUS Campaign)";
               _loc2_.offense = 8;
               _loc2_.defense = 9;
               _loc2_.magic = 0;
               _loc2_.bar = 5;
               break;
            case "egypt":
               _loc2_.char = "Cleopatra";
               _loc2_.race = "The Egyptian Empire";
               _loc2_.desc = "With such an advancement in spells and technology, the Egyptians have few fighters, but many diverse spells at their disposal. For advanced players.";
               _loc2_.type = "(Deleted Campaign)";
               _loc2_.offense = 3;
               _loc2_.defense = 3;
               _loc2_.magic = 8;
               _loc2_.bar = 5;
         }
         return _loc2_;
      }
      
      public static function getMapStats(param1:String) : Object
      {
         var _loc2_:Object = null;
         _loc2_ = new Object();
         switch(param1)
         {
            case "menu":
               break;
            case "snow_day":
               _loc2_.name = "Tundra";
               _loc2_.tint = null;
               break;
            case "snow_night":
               _loc2_.name = "Tundra (Night)";
               _loc2_.tint = {
                  "hex":26367,
                  "alp":0.2
               };
               break;
            case "snow_sepia":
               _loc2_.name = "Tundra (Old Timey)";
               _loc2_.tint = {
                  "hex":16750950,
                  "alp":0.3
               };
               break;
            case "field":
               _loc2_.name = "Killing Fields";
               _loc2_.tint = null;
               break;
            case "snowfield":
               _loc2_.name = "Frozen Forest";
               _loc2_.tint = {
                  "hex":10079487,
                  "alp":0.15
               };
               break;
            case "snowbridge_day":
               _loc2_.name = "Mountain Pass";
               _loc2_.tint = {
                  "hex":10092543,
                  "alp":0.1
               };
               break;
            case "snowbridge_volcano":
               _loc2_.name = "Volcano Pass";
               _loc2_.tint = {
                  "hex":16724787,
                  "alp":0.2
               };
               break;
            case "bridge_dawn":
               _loc2_.name = "Over Pass (Dawn)";
               _loc2_.tint = {
                  "hex":16737792,
                  "alp":0.15
               };
               break;
            case "bridge_night":
               _loc2_.name = "Over Pass (Night)";
               _loc2_.tint = {
                  "hex":6711039,
                  "alp":0.15
               };
               break;
            case "desert":
               _loc2_.name = "Dry Desert";
               _loc2_.tint = null;
               break;
            case "island_day":
               _loc2_.name = "Island";
               _loc2_.tint = null;
               break;
            case "island_dawn":
               _loc2_.name = "Island (Dawn)";
               _loc2_.tint = {
                  "hex":16764006,
                  "alp":0.15
               };
               break;
            case "forest_day":
               _loc2_.name = "Forest";
               _loc2_.tint = null;
               break;
            case "forest_night":
               _loc2_.name = "Forest (Night)";
               _loc2_.tint = {
                  "hex":6653091,
                  "alp":0.2
               };
         }
         return _loc2_;
      }
      
      public static function getSpellOrder(param1:String) : Array
      {
         var _loc2_:Array = null;
         switch(param1)
         {
            case "rome":
               _loc2_ = new Array("s_arrows","s_rock","s_catapult");
               break;
            case "gaul":
               _loc2_ = new Array("s_smoke","s_ice","s_nomagic");
               break;
            case "boar":
               _loc2_ = new Array();
               break;
            case "egypt":
               _loc2_ = new Array("s_raisedead","s_poison","s_swarm","s_syphon");
         }
         return _loc2_;
      }
      
      public static function getUnitOrder(param1:String) : Array
      {
         var _loc2_:Array = null;
         var _loc3_:uint = 0;
         switch(param1)
         {
            case "rome":
               _loc2_ = new Array("miner","sword","bow","shield","flag","firebow","spear","horse");
               break;
            case "gaul":
               _loc2_ = new Array("miner","axe","bow","berserk","flag","boar","mace","giant");
               break;
            case "boar":
               _loc2_ = new Array("small","med","big");
               break;
            case "egypt":
               _loc2_ = new Array("miner","sword","bow","mage","mummy","bmage","anubis");
         }
         _loc3_ = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc2_[_loc3_] = param1 + "_" + _loc2_[_loc3_];
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function getCampaignStats(param1:String, param2:uint) : Object
      {
         var _loc3_:Object = null;
         _loc3_ = new Object();
         _loc3_.gEarn0 = 15;
         _loc3_.gEarn1 = 15;
         _loc3_.gInit0 = 100;
         _loc3_.gInit1 = 100;
         _loc3_.micro = 90;
         _loc3_.army = [];
         _loc3_.yourHp = 3000;
         _loc3_.enemyHp = 3000;
         _loc3_.unitSlots = 0;
         _loc3_.spellSlots = 0;
         _loc3_.ability = 0;
         _loc3_.general = 0;
         _loc3_.unlock = [];
         _loc3_.expGiven = 30;
         switch(param1)
         {
            case "rome":
               _loc3_.unitMax = 5;
               if(true)
               {
                  _loc3_.spellMax = 2;
                  if(true)
                  {
                     §§push(param2);
                     if(true)
                     {
                        var _loc4_:* = §§pop();
                        §§push(1);
                        if(true)
                        {
                           if(§§pop() === _loc4_)
                           {
                              §§push(0);
                              if(true)
                              {
                                 addr946:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       _loc3_.title = "The Outpost";
                                       if(true)
                                       {
                                          _loc3_.stage = "field";
                                          if(true)
                                          {
                                             _loc3_.enemy = "gaul";
                                             if(true)
                                             {
                                                _loc3_.enemyHp = 5000;
                                                if(true)
                                                {
                                                   _loc3_.diff = 1;
                                                   if(true)
                                                   {
                                                      _loc3_.desc = "One of our outposts is being attacked by the Gaul! Help the Romans defend it and learn how to play.\n[Tutorial Level]";
                                                      if(true)
                                                      {
                                                         _loc3_.music = S_Champ;
                                                         if(true)
                                                         {
                                                            _loc3_.gInit0 = 100;
                                                            if(true)
                                                            {
                                                               _loc3_.gInit1 = 100;
                                                               if(true)
                                                               {
                                                                  _loc3_.unlock = [];
                                                                  if(true)
                                                                  {
                                                                     _loc3_.expGiven = 0;
                                                                     if(false)
                                                                     {
                                                                        addr1905:
                                                                        _loc3_.diff = 1;
                                                                     }
                                                                     else
                                                                     {
                                                                        addr950:
                                                                     }
                                                                  }
                                                                  _loc3_.desc = "All the soldiers are shitting themselves because they ate too much chipolet. Aid them quickly with chipotlaway before it\'s too late!";
                                                               }
                                                               _loc3_.music = S_Army;
                                                            }
                                                         }
                                                      }
                                                      addr1950:
                                                      §§push(!_loc3_.unitSlots);
                                                      §§push(!_loc3_.unitSlots);
                                                      if(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§pop();
                                                         }
                                                         addr1961:
                                                         if(!§§pop())
                                                         {
                                                         }
                                                      }
                                                      addr1979:
                                                      if(!§§pop())
                                                      {
                                                         §§pop();
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr1961);
                                                   §§push(!_loc3_.spellSlots);
                                                }
                                                _loc3_.desc += "\n[No Custom Army]";
                                             }
                                             §§push(_loc3_.stage == "field");
                                             break;
                                          }
                                          §§goto(addr1979);
                                          §§push(Boolean(_loc3_.unitSlots));
                                          §§push(Boolean(_loc3_.unitSlots));
                                       }
                                       §§push(Boolean(_loc3_.spellSlots));
                                       break;
                                    case 1:
                                       _loc3_.title = "The Golden Bridge";
                                       if(true)
                                       {
                                          _loc3_.stage = "bridge_dawn";
                                          if(true)
                                          {
                                             _loc3_.enemy = "gaul";
                                             if(true)
                                             {
                                                _loc3_.army = ["miner","axe","bow"];
                                                if(true)
                                                {
                                                   _loc3_.micro = 150;
                                                   if(true)
                                                   {
                                                      _loc3_.enemyHp = 1200;
                                                      if(true)
                                                      {
                                                         _loc3_.diff = 1;
                                                         if(true)
                                                         {
                                                            _loc3_.desc = "The only way to create units is to mine for gold. Push the Gaul across a narrow bridge.";
                                                            if(true)
                                                            {
                                                               _loc3_.music = S_Gate2;
                                                               if(true)
                                                               {
                                                                  _loc3_.unlock = ["u_rome_miner","u_rome_flag"];
                                                                  if(true)
                                                                  {
                                                                     _loc3_.expGiven = 20;
                                                                     if(true)
                                                                     {
                                                                        §§goto(addr950);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr1837:
                                                                        _loc3_.diff = 3;
                                                                     }
                                                                  }
                                                                  _loc3_.desc = "[Bonus Level]\nTake a trip down memory lane!";
                                                               }
                                                               _loc3_.music = S_Ragtime;
                                                            }
                                                            _loc3_.gInit0 = 0;
                                                         }
                                                         _loc3_.gInit1 = 100;
                                                      }
                                                      _loc3_.expGiven = 0;
                                                   }
                                                   _loc3_.oldtimey = true;
                                                }
                                             }
                                             addr1892:
                                          }
                                          §§goto(addr1950);
                                       }
                                       addr1902:
                                       _loc3_.enemy = "rome";
                                       §§goto(addr1905);
                                    case 2:
                                       _loc3_.title = "Namaste";
                                       if(true)
                                       {
                                          _loc3_.stage = "island_day";
                                          if(true)
                                          {
                                             _loc3_.enemy = "gaul";
                                             if(true)
                                             {
                                                _loc3_.army = ["miner","axe","bow","berserk"];
                                                if(true)
                                                {
                                                   _loc3_.enemyHp = 2000;
                                                   if(true)
                                                   {
                                                      _loc3_.diff = 2;
                                                      if(true)
                                                      {
                                                         _loc3_.desc = "Your base is already damaged. Defend against waves of Gaul for two minutes.";
                                                         if(true)
                                                         {
                                                            _loc3_.music = S_Army2;
                                                            if(true)
                                                            {
                                                               _loc3_.gInit0 = 400;
                                                               if(true)
                                                               {
                                                                  _loc3_.gEarn1 = 27;
                                                                  if(true)
                                                                  {
                                                                     _loc3_.unitSlots = 5;
                                                                     if(true)
                                                                     {
                                                                        _loc3_.spellSlots = 0;
                                                                        if(true)
                                                                        {
                                                                           _loc3_.unlock = ["a_1_Repair Base","s_s_arrows"];
                                                                           if(true)
                                                                           {
                                                                              _loc3_.expGiven = 25;
                                                                              if(true)
                                                                              {
                                                                                 §§goto(addr950);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr1789:
                                                                                 _loc3_.stage = "island_dawn";
                                                                              }
                                                                              §§goto(addr1950);
                                                                           }
                                                                           _loc3_.enemy = "rome";
                                                                        }
                                                                        _loc3_.army = [];
                                                                     }
                                                                     _loc3_.yourHp = 6000;
                                                                  }
                                                                  _loc3_.enemyHp = 6000;
                                                               }
                                                               _loc3_.diff = 7;
                                                            }
                                                            _loc3_.desc = "The boars get double teamed by Caesar and Vercing, will they make it out alive?";
                                                         }
                                                         _loc3_.music = S_Champ;
                                                      }
                                                      _loc3_.expGiven = 35;
                                                   }
                                                }
                                                else
                                                {
                                                   addr1821:
                                                   _loc3_.stage = "snow_sepia";
                                                }
                                                §§goto(addr1892);
                                             }
                                             _loc3_.enemy = "gaul";
                                          }
                                          _loc3_.army = ["miner","axe","bow","berserk"];
                                       }
                                       _loc3_.enemyHp = 5000;
                                       §§goto(addr1837);
                                    case 3:
                                       _loc3_.title = "The Boot";
                                       if(true)
                                       {
                                          _loc3_.stage = "field";
                                          if(true)
                                          {
                                             _loc3_.enemy = "gaul";
                                             if(true)
                                             {
                                                _loc3_.army = ["miner","axe","bow","berserk","boar"];
                                                if(true)
                                                {
                                                   _loc3_.enemyHp = 2000;
                                                   if(true)
                                                   {
                                                      _loc3_.diff = 3;
                                                      if(true)
                                                      {
                                                         _loc3_.desc = "Vercing has a special unit to help him push toward Rome. Assemble your army and give the Gaul...well, you know...";
                                                         if(true)
                                                         {
                                                            _loc3_.music = S_Army;
                                                            if(true)
                                                            {
                                                               _loc3_.unitSlots = 4;
                                                               if(true)
                                                               {
                                                                  _loc3_.spellSlots = 2;
                                                                  if(true)
                                                                  {
                                                                     _loc3_.ability = 3;
                                                                     if(true)
                                                                     {
                                                                        _loc3_.unlock = ["u_rome_firebow"];
                                                                        if(true)
                                                                        {
                                                                           _loc3_.expGiven = 30;
                                                                           if(true)
                                                                           {
                                                                              §§goto(addr950);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr1743:
                                                                           }
                                                                           §§goto(addr1950);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr1748:
                                                                           _loc3_.stage = "snowbridge_day";
                                                                        }
                                                                        §§goto(addr1892);
                                                                     }
                                                                     _loc3_.enemy = "boar";
                                                                  }
                                                                  _loc3_.army = ["small","med","big"];
                                                               }
                                                               _loc3_.enemyHp = 5000;
                                                            }
                                                            _loc3_.diff = 5;
                                                         }
                                                         _loc3_.desc = "It just got real.";
                                                      }
                                                      _loc3_.music = S_Gate;
                                                   }
                                                   _loc3_.gInit0 = 400;
                                                }
                                                _loc3_.unitSlots = 5;
                                             }
                                             _loc3_.spellSlots = 0;
                                          }
                                          _loc3_.expGiven = 25;
                                       }
                                       §§goto(addr1892);
                                    case 4:
                                       _loc3_.title = "Clash of the Titans";
                                       if(true)
                                       {
                                          _loc3_.stage = "snowbridge_volcano";
                                          if(true)
                                          {
                                             _loc3_.enemy = "gaul";
                                             if(true)
                                             {
                                                _loc3_.army = ["miner","axe","bow"];
                                                if(true)
                                                {
                                                   _loc3_.enemyHp = 2500;
                                                   if(true)
                                                   {
                                                      _loc3_.diff = 2;
                                                      if(true)
                                                      {
                                                         _loc3_.desc = "Your army has chased Vercing high over Mount Vesuvius. With dwindling forces there are few strategies left for Caesar...";
                                                         if(true)
                                                         {
                                                            _loc3_.music = S_Egypt;
                                                            if(true)
                                                            {
                                                               _loc3_.unitSlots = 2;
                                                               if(true)
                                                               {
                                                                  _loc3_.spellSlots = 0;
                                                                  if(true)
                                                                  {
                                                                     _loc3_.ability = 3;
                                                                     if(true)
                                                                     {
                                                                        _loc3_.general = 0;
                                                                        if(true)
                                                                        {
                                                                           _loc3_.unlock = ["g_rome_general","c_1_Gaul"];
                                                                           if(true)
                                                                           {
                                                                              _loc3_.expGiven = 35;
                                                                              if(true)
                                                                              {
                                                                                 _loc3_.gEarn0 = 5;
                                                                                 if(true)
                                                                                 {
                                                                                    _loc3_.gEarn1 = 5;
                                                                                    if(true)
                                                                                    {
                                                                                       §§goto(addr950);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr1690:
                                                                                       _loc3_.micro = 90;
                                                                                    }
                                                                                    §§goto(addr1950);
                                                                                 }
                                                                                 _loc3_.enemyHp = 5000;
                                                                              }
                                                                              _loc3_.diff = 4;
                                                                           }
                                                                           _loc3_.desc = "Not here, boars aren\'t beef!";
                                                                        }
                                                                        _loc3_.music = S_Gate2;
                                                                     }
                                                                     _loc3_.expGiven = 20;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr1713:
                                                                  _loc3_.stage = "field";
                                                               }
                                                               §§goto(addr1892);
                                                            }
                                                            _loc3_.enemy = "rome";
                                                         }
                                                         _loc3_.army = ["sword","bow","shield"];
                                                      }
                                                      _loc3_.micro = 90;
                                                   }
                                                   _loc3_.enemyHp = 5000;
                                                }
                                                _loc3_.diff = 4;
                                             }
                                             _loc3_.desc = "The game creators get their hands dirty.";
                                          }
                                          _loc3_.music = S_Silly;
                                       }
                                       _loc3_.expGiven = 20;
                                       §§goto(addr1743);
                                    case 5:
                                       _loc3_.title = "End of the Line";
                                       if(true)
                                       {
                                          _loc3_.stage = "island_dawn";
                                          if(true)
                                          {
                                             _loc3_.enemy = "gaul";
                                             addr1677:
                                             if(true)
                                             {
                                                _loc3_.army = ["miner","axe","bow","berserk","boar","mace"];
                                                if(true)
                                                {
                                                   _loc3_.enemyHp = 10000;
                                                   if(true)
                                                   {
                                                      _loc3_.diff = 3;
                                                      if(true)
                                                      {
                                                         _loc3_.desc = "The Gaul have been pushed to the edge of Roman territory. Vercing is low on resources and you must force him to retreat.";
                                                         if(true)
                                                         {
                                                            _loc3_.music = S_Chaotic;
                                                            if(true)
                                                            {
                                                               _loc3_.unitSlots = 4;
                                                               if(true)
                                                               {
                                                                  _loc3_.spellSlots = 1;
                                                                  if(true)
                                                                  {
                                                                     _loc3_.ability = 3;
                                                                     if(true)
                                                                     {
                                                                        _loc3_.general = 1;
                                                                        if(true)
                                                                        {
                                                                           _loc3_.unlock = ["u_rome_spear","s_s_catapult"];
                                                                           if(true)
                                                                           {
                                                                              _loc3_.expGiven = 40;
                                                                              if(true)
                                                                              {
                                                                                 §§goto(addr950);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr1570:
                                                                              }
                                                                           }
                                                                           addr1643:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr1648:
                                                                           _loc3_.spellMax = 2;
                                                                        }
                                                                        §§goto(addr1950);
                                                                     }
                                                                     _loc3_.unitSlots = 5;
                                                                  }
                                                                  _loc3_.spellSlots = 0;
                                                               }
                                                               _loc3_.gInit0 = 0;
                                                            }
                                                            _loc3_.gEarn0 = 0;
                                                         }
                                                         _loc3_.gInit1 = 200;
                                                      }
                                                      _loc3_.gEarn1 = 15;
                                                   }
                                                   _loc3_.general = 1;
                                                }
                                                addr1862:
                                                _loc4_ = param2;
                                                addr1864:
                                                §§push(1 === _loc4_ ? 0 : (2 === _loc4_ ? 1 : (3 === _loc4_ ? 2 : (4 === _loc4_ ? 3 : (5 === _loc4_ ? 4 : 5)))));
                                             }
                                             _loc3_.stage = "bridge_night";
                                          }
                                          _loc3_.enemy = "gaul";
                                       }
                                       _loc3_.army = ["miner","axe","mace","boar"];
                                       §§goto(addr1690);
                                    case 6:
                                       _loc3_.title = "Enemy Territory";
                                       if(true)
                                       {
                                          _loc3_.stage = "forest_night";
                                          if(true)
                                          {
                                             _loc3_.enemy = "gaul";
                                             if(true)
                                             {
                                                _loc3_.army = ["miner","axe","bow","berserk","boar","mace"];
                                                if(true)
                                                {
                                                   _loc3_.enemyHp = 3500;
                                                   if(true)
                                                   {
                                                      _loc3_.diff = 4;
                                                      if(true)
                                                      {
                                                         _loc3_.desc = "Caesar\'s cavalry has been lost in Gaul territory! You must investigate what happened to them.";
                                                         if(true)
                                                         {
                                                            _loc3_.music = S_Gate;
                                                            if(true)
                                                            {
                                                               _loc3_.unitSlots = 4;
                                                               if(true)
                                                               {
                                                                  _loc3_.spellSlots = 1;
                                                                  if(true)
                                                                  {
                                                                     _loc3_.ability = 3;
                                                                     if(true)
                                                                     {
                                                                        _loc3_.general = 1;
                                                                        if(true)
                                                                        {
                                                                           _loc3_.unlock = ["u_rome_horse","s_s_rock"];
                                                                           if(true)
                                                                           {
                                                                              _loc3_.expGiven = 45;
                                                                              if(true)
                                                                              {
                                                                                 §§goto(addr950);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr1518:
                                                                                 _loc3_.expGiven = 55;
                                                                              }
                                                                              §§goto(addr1950);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr1526:
                                                                           _loc3_.stage = "island_dawn";
                                                                        }
                                                                        §§goto(addr1643);
                                                                     }
                                                                     _loc3_.enemy = "rome";
                                                                  }
                                                                  _loc3_.army = ["miner","sword","bow","shield","firebow","flag","cent","horse"];
                                                               }
                                                               _loc3_.enemyHp = 20000;
                                                            }
                                                            _loc3_.diff = 7;
                                                         }
                                                         _loc3_.desc = "At last we will defeat the Romans. At last we will have...revenge!";
                                                      }
                                                      _loc3_.music = S_Egypt;
                                                   }
                                                   _loc3_.unitSlots = 5;
                                                }
                                                _loc3_.spellSlots = 2;
                                             }
                                             _loc3_.ability = 3;
                                          }
                                          _loc3_.general = 1;
                                       }
                                       _loc3_.expGiven = 60;
                                       §§goto(addr1570);
                                    case 7:
                                       _loc3_.title = "Deja Vu";
                                       if(true)
                                       {
                                          _loc3_.stage = "snow_day";
                                          if(true)
                                          {
                                             _loc3_.enemy = "gaul";
                                             if(true)
                                             {
                                                _loc3_.army = ["miner","axe","bow","berserk","boar","mace"];
                                                if(true)
                                                {
                                                   _loc3_.enemyHp = 3500;
                                                   if(true)
                                                   {
                                                      _loc3_.diff = 5;
                                                      if(true)
                                                      {
                                                         _loc3_.desc = "Caesar has gained the support of Rome and must conquer the Gaul at all costs! At the foot of the Alps he is overcome with a strange feeling...";
                                                         if(true)
                                                         {
                                                            _loc3_.gEarn0 = 20;
                                                            if(true)
                                                            {
                                                               _loc3_.music = S_Menu;
                                                               if(true)
                                                               {
                                                                  _loc3_.unitSlots = 5;
                                                                  if(true)
                                                                  {
                                                                     _loc3_.spellSlots = 2;
                                                                     if(true)
                                                                     {
                                                                        _loc3_.ability = 3;
                                                                        if(true)
                                                                        {
                                                                           _loc3_.general = 1;
                                                                           if(true)
                                                                           {
                                                                              _loc3_.unlock = [];
                                                                              if(true)
                                                                              {
                                                                                 _loc3_.expGiven = 50;
                                                                                 if(true)
                                                                                 {
                                                                                    §§goto(addr950);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr1465:
                                                                                    _loc3_.enemy = "rome";
                                                                                 }
                                                                                 §§goto(addr1950);
                                                                              }
                                                                              _loc3_.army = ["miner","sword","shield","firebow","flag","cent","horse"];
                                                                           }
                                                                           _loc3_.enemyHp = 5000;
                                                                        }
                                                                        _loc3_.diff = 6;
                                                                     }
                                                                     _loc3_.desc = "Using a very limited and expensive army, Vercing must ration his resources and continue his assault on Rome.";
                                                                  }
                                                                  _loc3_.music = S_Gate2;
                                                               }
                                                               _loc3_.gEarn0 = 25;
                                                            }
                                                            _loc3_.gEarn1 = 20;
                                                         }
                                                         _loc3_.gInit0 = 500;
                                                      }
                                                      _loc3_.gInit1 = 150;
                                                   }
                                                   _loc3_.unitSlots = 3;
                                                }
                                                _loc3_.spellSlots = 2;
                                             }
                                             _loc3_.ability = 3;
                                          }
                                          _loc3_.general = 1;
                                       }
                                       _loc3_.unlock = ["u_gaul_giant"];
                                       §§goto(addr1518);
                                    case 8:
                                       _loc3_.title = "The Soldier of Fortune";
                                       if(true)
                                       {
                                          _loc3_.stage = "snowbridge_day";
                                          if(true)
                                          {
                                             _loc3_.enemy = "gaul";
                                             if(true)
                                             {
                                                _loc3_.army = ["miner","axe","bow","berserk"];
                                                if(true)
                                                {
                                                   _loc3_.enemyHp = 4000;
                                                   if(true)
                                                   {
                                                      _loc3_.diff = 6;
                                                      if(true)
                                                      {
                                                         _loc3_.desc = "A mysterious mercenary will join whomever provides more gold.";
                                                         if(true)
                                                         {
                                                            _loc3_.gEarn0 = 20;
                                                            if(true)
                                                            {
                                                               _loc3_.music = S_Gate;
                                                               if(true)
                                                               {
                                                                  _loc3_.gInit0 = 300;
                                                                  if(true)
                                                                  {
                                                                     _loc3_.gInit1 = 300;
                                                                     if(true)
                                                                     {
                                                                        _loc3_.unitSlots = 5;
                                                                        if(true)
                                                                        {
                                                                           _loc3_.spellSlots = 2;
                                                                           if(true)
                                                                           {
                                                                              _loc3_.ability = 3;
                                                                              if(true)
                                                                              {
                                                                                 _loc3_.general = 1;
                                                                                 if(true)
                                                                                 {
                                                                                    _loc3_.unlock = [];
                                                                                    if(true)
                                                                                    {
                                                                                       _loc3_.expGiven = 55;
                                                                                       if(true)
                                                                                       {
                                                                                          §§goto(addr950);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr1403:
                                                                                          _loc3_.stage = "field";
                                                                                       }
                                                                                       §§goto(addr1950);
                                                                                    }
                                                                                    _loc3_.enemy = "rome";
                                                                                 }
                                                                                 _loc3_.army = ["miner","sword","bow","shield","firebow","flag","cent","horse"];
                                                                              }
                                                                              _loc3_.enemyHp = 30000;
                                                                           }
                                                                           _loc3_.diff = 5;
                                                                        }
                                                                        _loc3_.desc = "Vercing must endure a pumelling from Caesar\'s artillery but a surprise lies at the end of the struggle to tip the scales.";
                                                                     }
                                                                     _loc3_.music = S_Army;
                                                                  }
                                                                  _loc3_.gEarn0 = 20;
                                                               }
                                                               _loc3_.gEarn1 = 20;
                                                            }
                                                            _loc3_.unitSlots = 5;
                                                         }
                                                         _loc3_.spellSlots = 1;
                                                      }
                                                      _loc3_.ability = 3;
                                                   }
                                                   _loc3_.general = 1;
                                                }
                                                _loc3_.unlock = ["s_s_nomagic"];
                                             }
                                             _loc3_.expGiven = 50;
                                          }
                                       }
                                       else
                                       {
                                          addr1462:
                                          _loc3_.stage = "bridge_night";
                                          §§goto(addr1465);
                                       }
                                       §§goto(addr1643);
                                    case 9:
                                       _loc3_.title = "FTW";
                                       if(true)
                                       {
                                          _loc3_.stage = "snowfield";
                                          if(true)
                                          {
                                             _loc3_.enemy = "gaul";
                                             if(true)
                                             {
                                                _loc3_.army = ["miner","axe","bow","berserk","boar","mace","giant"];
                                                if(true)
                                                {
                                                   _loc3_.enemyHp = 12000;
                                                   if(true)
                                                   {
                                                      _loc3_.diff = 7;
                                                      if(true)
                                                      {
                                                         _loc3_.desc = "Finish the fight!";
                                                         if(true)
                                                         {
                                                            _loc3_.gInit0 = 200;
                                                            if(true)
                                                            {
                                                               _loc3_.gEarn0 = 10;
                                                               if(true)
                                                               {
                                                                  _loc3_.music = S_Lose;
                                                                  if(true)
                                                                  {
                                                                     _loc3_.unitSlots = 5;
                                                                     if(true)
                                                                     {
                                                                        _loc3_.spellSlots = 2;
                                                                        if(true)
                                                                        {
                                                                           _loc3_.ability = 3;
                                                                           if(true)
                                                                           {
                                                                              _loc3_.general = 1;
                                                                              if(true)
                                                                              {
                                                                                 _loc3_.expGiven = 60;
                                                                                 if(true)
                                                                                 {
                                                                                    §§goto(addr950);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr1350:
                                                                                    _loc3_.stage = "snowbridge_volcano";
                                                                                 }
                                                                                 §§goto(addr1950);
                                                                              }
                                                                              _loc3_.enemy = "rome";
                                                                           }
                                                                           _loc3_.army = ["miner","bow","firebow","cent","flag"];
                                                                        }
                                                                        _loc3_.enemyHp = 3000;
                                                                     }
                                                                     _loc3_.diff = 4;
                                                                  }
                                                                  _loc3_.desc = "In order to survive, Vercing must adapt his powers to Rome\'s much warmer climate. Necessity is the mother of innovation.";
                                                               }
                                                               _loc3_.music = S_Egypt;
                                                            }
                                                            _loc3_.unitSlots = 5;
                                                         }
                                                         _loc3_.spellSlots = 0;
                                                      }
                                                      _loc3_.ability = 3;
                                                   }
                                                   _loc3_.general = 1;
                                                }
                                                _loc3_.unlock = ["s_s_ice"];
                                             }
                                             _loc3_.expGiven = 45;
                                          }
                                          _loc3_.micro = 130;
                                       }
                                       §§goto(addr1643);
                                    default:
                                       §§goto(addr950);
                                 }
                                 if(!§§pop())
                                 {
                                 }
                                 break;
                              }
                              addr1890:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc3_.title = "Where\'s the Beef?";
                                    §§goto(addr1677);
                                 case 1:
                                    _loc3_.title = "Meet your Maker";
                                    §§goto(addr1713);
                                 case 2:
                                    _loc3_.title = "The Face Off";
                                    §§goto(addr1748);
                                 case 3:
                                    _loc3_.title = "The Final Push";
                                    §§goto(addr1789);
                                 case 4:
                                    _loc3_.title = "Old Timey";
                                    §§goto(addr1821);
                              }
                              §§goto(addr1892);
                           }
                           else
                           {
                              §§push(2);
                              if(true)
                              {
                                 if(§§pop() === _loc4_)
                                 {
                                    §§push(1);
                                    if(true)
                                    {
                                       §§goto(addr946);
                                    }
                                    §§goto(addr1884);
                                 }
                                 else
                                 {
                                    §§push(3);
                                    if(true)
                                    {
                                       if(§§pop() === _loc4_)
                                       {
                                          §§push(2);
                                          if(true)
                                          {
                                             §§goto(addr946);
                                          }
                                          §§goto(addr1879);
                                       }
                                       else
                                       {
                                          §§push(4);
                                          if(true)
                                          {
                                             if(§§pop() === _loc4_)
                                             {
                                                §§push(3);
                                                if(true)
                                                {
                                                   §§goto(addr946);
                                                }
                                                §§goto(addr1874);
                                             }
                                             else
                                             {
                                                §§push(5);
                                                if(true)
                                                {
                                                   if(§§pop() === _loc4_)
                                                   {
                                                      §§push(4);
                                                      if(true)
                                                      {
                                                         §§goto(addr946);
                                                      }
                                                      §§goto(addr1869);
                                                   }
                                                   else
                                                   {
                                                      §§push(6);
                                                      if(true)
                                                      {
                                                         if(§§pop() === _loc4_)
                                                         {
                                                            §§push(5);
                                                            if(true)
                                                            {
                                                               §§goto(addr946);
                                                            }
                                                            §§goto(addr1864);
                                                         }
                                                         else
                                                         {
                                                            §§push(7);
                                                            if(true)
                                                            {
                                                               if(§§pop() === _loc4_)
                                                               {
                                                                  §§push(6);
                                                                  if(true)
                                                                  {
                                                                     §§goto(addr946);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr1638:
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(8);
                                                                  if(true)
                                                                  {
                                                                     if(§§pop() === _loc4_)
                                                                     {
                                                                        §§push(7);
                                                                        if(true)
                                                                        {
                                                                           §§goto(addr946);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr1633:
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(9);
                                                                        if(true)
                                                                        {
                                                                           if(§§pop() === _loc4_)
                                                                           {
                                                                              §§push(8);
                                                                              if(true)
                                                                              {
                                                                                 §§goto(addr946);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr1628:
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(10);
                                                                              if(true)
                                                                              {
                                                                                 if(§§pop() === _loc4_)
                                                                                 {
                                                                                    §§push(9);
                                                                                    if(false)
                                                                                    {
                                                                                       addr1623:
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(10);
                                                                                    if(false)
                                                                                    {
                                                                                       addr1620:
                                                                                       if(§§pop() === _loc4_)
                                                                                       {
                                                                                          §§goto(addr1623);
                                                                                          §§push(6);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(8);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr946);
                                                                              }
                                                                              if(§§pop() === _loc4_)
                                                                              {
                                                                                 §§goto(addr1628);
                                                                                 §§push(7);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(9);
                                                                              }
                                                                           }
                                                                        }
                                                                        if(§§pop() === _loc4_)
                                                                        {
                                                                           §§goto(addr1633);
                                                                           §§push(8);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(10);
                                                                        }
                                                                     }
                                                                  }
                                                                  if(§§pop() === _loc4_)
                                                                  {
                                                                     §§goto(addr1638);
                                                                     §§push(9);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(10);
                                                                  }
                                                               }
                                                            }
                                                            addr1641:
                                                            switch(§§pop())
                                                            {
                                                               case 0:
                                                                  _loc3_.title = "The Invasion";
                                                                  if(true)
                                                                  {
                                                                     _loc3_.stage = "field";
                                                                     if(true)
                                                                     {
                                                                        _loc3_.enemy = "rome";
                                                                        if(true)
                                                                        {
                                                                           _loc3_.army = ["sword","bow","shield"];
                                                                           if(true)
                                                                           {
                                                                              _loc3_.enemyHp = 1500;
                                                                              if(true)
                                                                              {
                                                                                 _loc3_.diff = 1;
                                                                                 if(true)
                                                                                 {
                                                                                    _loc3_.desc = "Fight Rome head on. Defeat them here, and Rome is ours!";
                                                                                    if(true)
                                                                                    {
                                                                                       _loc3_.music = S_Champ;
                                                                                       if(true)
                                                                                       {
                                                                                          _loc3_.gInit0 = 100;
                                                                                          if(true)
                                                                                          {
                                                                                             _loc3_.gInit1 = 100;
                                                                                             if(true)
                                                                                             {
                                                                                                _loc3_.ability = 3;
                                                                                                if(true)
                                                                                                {
                                                                                                   _loc3_.general = 1;
                                                                                                   if(true)
                                                                                                   {
                                                                                                      _loc3_.expGiven = 0;
                                                                                                      if(true)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      addr1290:
                                                                                                      _loc3_.expGiven = 35;
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                addr1298:
                                                                                                _loc3_.stage = "island_day";
                                                                                             }
                                                                                             _loc3_.enemy = "rome";
                                                                                          }
                                                                                          _loc3_.army = ["miner","sword","bow","shield","cent","flag"];
                                                                                       }
                                                                                       _loc3_.enemyHp = 2500;
                                                                                    }
                                                                                    _loc3_.diff = 3;
                                                                                 }
                                                                                 _loc3_.desc = "Vercing must use his new units to make a push into Roman territory. Strike while the iron is hot.";
                                                                              }
                                                                              _loc3_.music = S_Army;
                                                                           }
                                                                           _loc3_.unitSlots = 4;
                                                                        }
                                                                        _loc3_.spellSlots = 0;
                                                                     }
                                                                     _loc3_.ability = 3;
                                                                  }
                                                                  _loc3_.general = 1;
                                                                  addr1337:
                                                                  _loc3_.unlock = ["s_s_smoke","u_gaul_mace"];
                                                                  _loc3_.expGiven = 40;
                                                                  break;
                                                               case 1:
                                                                  _loc3_.title = "Chase the Wave";
                                                                  if(true)
                                                                  {
                                                                     _loc3_.stage = "forest_day";
                                                                     if(true)
                                                                     {
                                                                        _loc3_.enemy = "rome";
                                                                        if(true)
                                                                        {
                                                                           _loc3_.army = ["miner","sword","bow","shield"];
                                                                           if(true)
                                                                           {
                                                                              _loc3_.micro = 120;
                                                                              if(true)
                                                                              {
                                                                                 _loc3_.enemyHp = 8000;
                                                                                 if(true)
                                                                                 {
                                                                                    _loc3_.diff = 1;
                                                                                    if(true)
                                                                                    {
                                                                                       _loc3_.desc = "Caesar is making a counter attack. Hold the line against waves of Caesar\'s forces.";
                                                                                       if(true)
                                                                                       {
                                                                                          _loc3_.music = S_Army;
                                                                                          if(true)
                                                                                          {
                                                                                             _loc3_.gInit0 = 100;
                                                                                             if(true)
                                                                                             {
                                                                                                _loc3_.unitSlots = 5;
                                                                                                if(true)
                                                                                                {
                                                                                                   _loc3_.spellSlots = 0;
                                                                                                   if(true)
                                                                                                   {
                                                                                                      _loc3_.ability = 3;
                                                                                                      if(true)
                                                                                                      {
                                                                                                         _loc3_.general = 1;
                                                                                                         if(true)
                                                                                                         {
                                                                                                            _loc3_.expGiven = 20;
                                                                                                            if(true)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            addr1239:
                                                                                                            _loc3_.unlock = ["u_gaul_flag"];
                                                                                                         }
                                                                                                         _loc3_.expGiven = 30;
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   addr1251:
                                                                                                   _loc3_.stage = "forest_day";
                                                                                                }
                                                                                                _loc3_.enemy = "rome";
                                                                                             }
                                                                                             _loc3_.army = ["miner","horse"];
                                                                                          }
                                                                                          _loc3_.enemyHp = 2500;
                                                                                       }
                                                                                       _loc3_.diff = 2;
                                                                                    }
                                                                                    _loc3_.desc = "With a powerful new ally, Vercing attempts to ambush Caesar in Gaul territory. Capture the cavalry before reinforcements arrive.";
                                                                                 }
                                                                                 _loc3_.music = S_Army2;
                                                                              }
                                                                              _loc3_.unitSlots = 4;
                                                                           }
                                                                           _loc3_.spellSlots = 0;
                                                                        }
                                                                        _loc3_.ability = 3;
                                                                     }
                                                                     _loc3_.general = 1;
                                                                  }
                                                                  _loc3_.unlock = ["u_gaul_boar"];
                                                                  §§goto(addr1290);
                                                               case 2:
                                                                  _loc3_.title = "Lord of the Flies";
                                                                  if(true)
                                                                  {
                                                                     _loc3_.stage = "snowbridge_day";
                                                                     if(true)
                                                                     {
                                                                        _loc3_.enemy = "boar";
                                                                        if(true)
                                                                        {
                                                                           _loc3_.army = [];
                                                                           if(true)
                                                                           {
                                                                              _loc3_.enemyHp = 10000;
                                                                              if(true)
                                                                              {
                                                                                 _loc3_.diff = 2;
                                                                                 if(true)
                                                                                 {
                                                                                    _loc3_.desc = "Mine for gold to build an army for the future attack on Rome. Defend against a new foe.";
                                                                                    if(true)
                                                                                    {
                                                                                       _loc3_.music = S_Gate2;
                                                                                       if(true)
                                                                                       {
                                                                                          _loc3_.gInit0 = 120;
                                                                                          if(true)
                                                                                          {
                                                                                             _loc3_.unitSlots = 0;
                                                                                             if(true)
                                                                                             {
                                                                                                _loc3_.spellSlots = 0;
                                                                                                if(true)
                                                                                                {
                                                                                                   _loc3_.ability = 3;
                                                                                                   if(true)
                                                                                                   {
                                                                                                      _loc3_.general = 1;
                                                                                                      if(true)
                                                                                                      {
                                                                                                         _loc3_.expGiven = 25;
                                                                                                         if(true)
                                                                                                         {
                                                                                                            _loc3_.gEarn0 = 5;
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      addr1200:
                                                                                                      _loc3_.stage = "snow_night";
                                                                                                   }
                                                                                                   _loc3_.enemy = "boar";
                                                                                                }
                                                                                                _loc3_.army = [];
                                                                                             }
                                                                                             _loc3_.enemyHp = 10000;
                                                                                          }
                                                                                          _loc3_.diff = 3;
                                                                                       }
                                                                                       _loc3_.desc = "Eliminate the boar threat from the top. If the alpha is removed, the pack may prove useful...";
                                                                                    }
                                                                                    _loc3_.music = S_Gate;
                                                                                 }
                                                                                 _loc3_.gInit0 = 100;
                                                                              }
                                                                              _loc3_.gInit1 = 0;
                                                                           }
                                                                           _loc3_.unitSlots = 4;
                                                                        }
                                                                        _loc3_.spellSlots = 0;
                                                                     }
                                                                     _loc3_.ability = 3;
                                                                  }
                                                                  _loc3_.general = 1;
                                                                  §§goto(addr1239);
                                                               case 3:
                                                                  _loc3_.title = "BBBQ";
                                                                  §§goto(addr1200);
                                                               case 4:
                                                                  _loc3_.title = "The Gank";
                                                                  §§goto(addr1251);
                                                               case 5:
                                                                  _loc3_.title = "Sneaky Sneaky";
                                                                  §§goto(addr1298);
                                                               case 6:
                                                                  _loc3_.title = "The Cooler";
                                                                  §§goto(addr1350);
                                                               case 7:
                                                                  _loc3_.title = "Out of the Frying Pan...";
                                                                  §§goto(addr1403);
                                                               case 8:
                                                                  _loc3_.title = "Behemoth Bridge";
                                                                  §§goto(addr1462);
                                                               case 9:
                                                                  _loc3_.title = "The Ultimate Showdown";
                                                                  §§goto(addr1526);
                                                            }
                                                         }
                                                         §§goto(addr1643);
                                                      }
                                                   }
                                                   §§goto(addr1867);
                                                }
                                             }
                                             §§goto(addr1872);
                                          }
                                       }
                                       §§goto(addr1877);
                                    }
                                 }
                                 §§goto(addr1882);
                              }
                           }
                           §§goto(addr1890);
                        }
                        addr1899:
                        _loc3_.stage = "snow";
                        §§goto(addr1902);
                     }
                     else
                     {
                        addr1916:
                     }
                     switch(§§pop())
                     {
                     }
                     _loc3_.title = "Holding Ground";
                     §§goto(addr1899);
                  }
                  _loc3_.desc += "\n[No Gold on Map]";
               }
               break;
            case "gaul":
               _loc3_.unitMax = 5;
               if(true)
               {
                  _loc3_.spellMax = 2;
                  if(true)
                  {
                     §§push(param2);
                     if(true)
                     {
                        _loc4_ = §§pop();
                        §§push(1);
                        if(true)
                        {
                           if(§§pop() === _loc4_)
                           {
                              §§push(0);
                              if(false)
                              {
                                 addr1615:
                                 if(§§pop() === _loc4_)
                                 {
                                    §§push(5);
                                 }
                                 else
                                 {
                                    §§goto(addr1620);
                                    §§push(7);
                                 }
                              }
                           }
                           else
                           {
                              §§push(2);
                              if(true)
                              {
                                 if(§§pop() === _loc4_)
                                 {
                                    §§push(1);
                                    if(false)
                                    {
                                       addr1610:
                                       if(§§pop() === _loc4_)
                                       {
                                          §§push(4);
                                       }
                                       else
                                       {
                                          §§goto(addr1615);
                                          §§push(6);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(3);
                                    if(true)
                                    {
                                       if(§§pop() === _loc4_)
                                       {
                                          §§push(2);
                                          if(true)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§push(4);
                                       }
                                       if(§§pop() === _loc4_)
                                       {
                                          §§push(3);
                                       }
                                       else
                                       {
                                          §§goto(addr1610);
                                          §§push(5);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr1641);
                     }
                     else
                     {
                        §§goto(addr1862);
                     }
                  }
               }
               §§goto(addr1337);
            case "boar":
               _loc3_.unitMax = 5;
               §§goto(addr1648);
            case "egypt":
               §§goto(addr1916);
               §§push(param2);
            default:
               §§goto(addr1950);
         }
         return _loc3_;
      }
   }
}

