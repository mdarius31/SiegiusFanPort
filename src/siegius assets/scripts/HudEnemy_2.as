package
{
   import flash.geom.Point;
   
   public class HudEnemy
   {
      
      private var micro:Number;
      
      public var maxHp:Number;
      
      public var race:String;
      
      private var frameCounter:uint;
      
      private var armyOb:Object;
      
      private var noInc:Boolean;
      
      public var gold:uint;
      
      public var curHp:Number;
      
      private var armyAr:Array;
      
      public var game:Game;
      
      public var defenseUp:uint;
      
      public function HudEnemy(param1:Game)
      {
         var _loc2_:uint = 0;
         super();
         game = param1;
         frameCounter = 0;
         setHp(micro = GameStats.getCampaignStats(SD.race,SD.picStage).enemyHp);
         race = GameStats.getCampaignStats(SD.race,SD.picStage).enemy;
         micro = GameStats.getCampaignStats(SD.race,SD.picStage).micro;
         noInc = !GameStats.getCampaignStats(SD.race,SD.picStage).gEarn1;
         armyAr = GameStats.getCampaignStats(SD.race,SD.picStage).army;
         armyOb = new Object();
         _loc2_ = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(§§pop() < armyAr.length)
            {
               armyOb[armyAr[_loc2_]] = true;
               §§push(_loc2_);
               if(true)
               {
                  continue loop0;
               }
            }
            defenseUp = 1;
            return;
            _loc2_ = §§pop() + 1;
         }
      }
      
      public function runAI(param1:Object = null) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         if(true)
         {
            ++frameCounter;
            if(true)
            {
               §§push(frameCounter);
               if(true)
               {
                  §§push(§§pop() < micro * 2);
                  if(true)
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        §§goto(addr52);
                     }
                  }
                  addr51:
                  if(§§pop())
                  {
                     addr52:
                     if(true)
                     {
                        §§push(frameCounter);
                     }
                     return;
                  }
               }
               §§goto(addr51);
               §§push(Boolean(§§pop() % micro));
            }
            if(param1)
            {
            }
            §§goto(addr59);
         }
         param1 = new Object();
         addr59:
         _loc2_ = new Array();
         if(true)
         {
            if(armyOb.miner)
            {
               addr912:
               if(true)
               {
                  _loc3_ = findClosestMine();
                  if(_loc3_)
                  {
                     §§push(noInc);
                     if(true)
                     {
                        §§push(§§pop());
                        if(true)
                        {
                           if(§§pop())
                           {
                           }
                        }
                        §§pop();
                        §§push(gold);
                        if(true)
                        {
                           addr144:
                           §§push(100);
                           if(true)
                           {
                              §§push(§§pop() <= §§pop());
                           }
                           if(§§pop() <= §§pop())
                           {
                              _loc2_.push({
                                 "y":_loc3_.MC.y,
                                 "unit":"miner",
                                 "extra":{"mineBox":_loc3_}
                              });
                           }
                        }
                        addr143:
                        §§goto(addr144);
                        §§push(1000);
                     }
                     if(§§pop())
                     {
                        tryCreateUnit(0,_loc3_.MC.y,"miner","blank",1,{"mineBox":_loc3_});
                        return;
                     }
                     §§push(gold);
                     if(true)
                     {
                        addr128:
                        §§push(100);
                        if(true)
                        {
                           if(§§pop() <= §§pop())
                           {
                              _loc2_.push({
                                 "y":_loc3_.MC.y,
                                 "unit":"miner",
                                 "extra":{"mineBox":_loc3_}
                              });
                           }
                           §§push(gold);
                        }
                        if(§§pop() <= §§pop())
                        {
                           _loc2_.push({
                              "y":_loc3_.MC.y,
                              "unit":"miner",
                              "extra":{"mineBox":_loc3_}
                           });
                        }
                        §§goto(addr143);
                        §§push(gold);
                     }
                     §§goto(addr128);
                     §§push(500);
                  }
               }
               _loc4_ = UT.getRandElement(_loc2_);
               if(true)
               {
                  §§push(§§findproperty(tryCreateUnit));
                  if(true)
                  {
                     addr933:
                     if(!_loc4_.x)
                     {
                        §§push(0);
                     }
                     if(_loc4_.y)
                     {
                        addr936:
                        §§push(Number(_loc4_.y));
                        if(true)
                        {
                        }
                     }
                     else
                     {
                        §§push(0);
                     }
                     §§pop().tryCreateUnit(§§pop(),§§pop(),_loc4_.unit,_loc4_.upgrade ? _loc4_.upgrade : "blank",_loc4_.upNum ? uint(_loc4_.upNum) : 1,_loc4_.extra ? _loc4_.extra : {});
                  }
                  §§push(Number(_loc4_.x));
                  if(true)
                  {
                     §§goto(addr933);
                  }
                  §§goto(addr936);
               }
               game.main.setFps(1,"Enemy Gold: " + gold);
            }
            if(!param1.minerOnly)
            {
               if(true)
               {
                  §§push(Boolean(armyOb.berserk));
                  if(true)
                  {
                     §§push(§§pop());
                     if(true)
                     {
                        if(§§pop())
                        {
                           if(true)
                           {
                              §§pop();
                              addr901:
                              if(true)
                              {
                                 addr899:
                                 §§push(gold);
                                 §§push(getPrice("berserk"));
                                 if(true)
                                 {
                                    §§push(§§pop() >= §§pop());
                                    if(true)
                                    {
                                    }
                                    addr892:
                                    §§push(§§pop());
                                 }
                                 §§push(§§pop() >= §§pop());
                              }
                              _loc2_.push({"unit":"s_smoke"},{"unit":"s_smoke"});
                           }
                           addr894:
                           §§pop();
                           addr895:
                           §§goto(addr899);
                           §§push(gold);
                           §§push(getPrice("s_smoke"));
                        }
                        if(§§pop())
                        {
                           if(true)
                           {
                              _loc2_.push({"unit":"berserk"});
                              if(true)
                              {
                              }
                              addr889:
                              §§goto(addr892);
                              §§push(Boolean(armyOb.s_smoke));
                           }
                           §§goto(addr895);
                        }
                        §§push(Boolean(armyOb.berserk));
                        if(true)
                        {
                           §§push(§§pop());
                           if(true)
                           {
                              if(§§pop())
                              {
                                 if(true)
                                 {
                                    §§pop();
                                    addr881:
                                    if(true)
                                    {
                                       addr879:
                                       §§push(gold);
                                       §§push(getPrice("berserk"));
                                       if(true)
                                       {
                                          §§push(§§pop() >= §§pop());
                                          if(true)
                                          {
                                          }
                                          addr872:
                                          §§push(§§pop());
                                       }
                                       §§push(§§pop() >= §§pop());
                                    }
                                    _loc2_.push({"unit":"s_smoke"},{"unit":"s_smoke"});
                                    §§goto(addr889);
                                 }
                                 addr874:
                                 §§pop();
                                 addr875:
                                 §§goto(addr879);
                                 §§push(gold);
                                 §§push(getPrice("s_smoke"));
                              }
                              if(§§pop())
                              {
                                 if(true)
                                 {
                                    _loc2_.push({"unit":"berserk"});
                                    if(true)
                                    {
                                    }
                                    addr869:
                                    §§goto(addr872);
                                    §§push(Boolean(armyOb.s_smoke));
                                 }
                                 §§goto(addr875);
                              }
                              §§push(Boolean(armyOb.flag));
                              if(true)
                              {
                                 §§push(§§pop());
                                 if(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(true)
                                       {
                                          §§pop();
                                          addr861:
                                          if(true)
                                          {
                                             addr859:
                                             §§push(gold);
                                             §§push(getPrice("flag"));
                                             if(true)
                                             {
                                                §§push(§§pop() >= §§pop());
                                                if(true)
                                                {
                                                }
                                                addr852:
                                                §§push(§§pop());
                                             }
                                             §§push(§§pop() >= §§pop());
                                          }
                                          _loc2_.push({"unit":"s_smoke"},{"unit":"s_smoke"});
                                          §§goto(addr869);
                                       }
                                       addr854:
                                       §§pop();
                                       addr855:
                                       §§goto(addr859);
                                       §§push(gold);
                                       §§push(getPrice("s_smoke"));
                                    }
                                    if(§§pop())
                                    {
                                       if(true)
                                       {
                                          _loc2_.push({"unit":"flag"});
                                          if(true)
                                          {
                                          }
                                          addr849:
                                          §§goto(addr852);
                                          §§push(Boolean(armyOb.s_smoke));
                                       }
                                       §§goto(addr855);
                                    }
                                    §§push(Boolean(armyOb.horse));
                                    if(true)
                                    {
                                       §§push(§§pop());
                                       if(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(true)
                                             {
                                                §§pop();
                                                addr841:
                                                if(true)
                                                {
                                                   addr839:
                                                   §§push(gold);
                                                   §§push(getPrice("horse"));
                                                   if(true)
                                                   {
                                                      §§push(§§pop() >= §§pop());
                                                      if(true)
                                                      {
                                                      }
                                                      addr832:
                                                      §§push(§§pop());
                                                   }
                                                   §§push(§§pop() >= §§pop());
                                                }
                                                _loc2_.push({"unit":"bow"},{"unit":"bow"});
                                                §§goto(addr849);
                                             }
                                             addr834:
                                             §§pop();
                                             addr835:
                                             §§goto(addr839);
                                             §§push(gold);
                                             §§push(getPrice("bow"));
                                          }
                                          if(§§pop())
                                          {
                                             if(true)
                                             {
                                                _loc2_.push({"unit":"horse"});
                                                if(true)
                                                {
                                                }
                                                addr829:
                                                §§goto(addr832);
                                                §§push(Boolean(armyOb.bow));
                                             }
                                             §§goto(addr835);
                                          }
                                          §§push(Boolean(armyOb.horse));
                                          if(true)
                                          {
                                             §§push(§§pop());
                                             if(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(true)
                                                   {
                                                      §§pop();
                                                      addr821:
                                                      if(true)
                                                      {
                                                         addr819:
                                                         §§push(gold);
                                                         §§push(getPrice("horse"));
                                                         if(true)
                                                         {
                                                            §§push(§§pop() >= §§pop());
                                                            if(true)
                                                            {
                                                            }
                                                            addr812:
                                                            §§push(§§pop());
                                                         }
                                                         §§push(§§pop() >= §§pop());
                                                      }
                                                      _loc2_.push({"unit":"sword"},{"unit":"sword"});
                                                      §§goto(addr829);
                                                   }
                                                   addr814:
                                                   §§pop();
                                                   addr815:
                                                   §§goto(addr819);
                                                   §§push(gold);
                                                   §§push(getPrice("sword"));
                                                }
                                                if(§§pop())
                                                {
                                                   if(true)
                                                   {
                                                      _loc2_.push({"unit":"horse"});
                                                      if(true)
                                                      {
                                                      }
                                                      addr809:
                                                      §§goto(addr812);
                                                      §§push(Boolean(armyOb.sword));
                                                   }
                                                   §§goto(addr815);
                                                }
                                                §§push(Boolean(armyOb.horse));
                                                if(true)
                                                {
                                                   §§push(§§pop());
                                                   if(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(true)
                                                         {
                                                            §§pop();
                                                            addr801:
                                                            if(true)
                                                            {
                                                               addr799:
                                                               §§push(gold);
                                                               §§push(getPrice("horse"));
                                                               if(true)
                                                               {
                                                                  §§push(§§pop() >= §§pop());
                                                                  if(true)
                                                                  {
                                                                  }
                                                                  addr792:
                                                                  §§push(§§pop());
                                                               }
                                                               §§push(§§pop() >= §§pop());
                                                            }
                                                            _loc2_.push({"unit":"axe"},{"unit":"axe"});
                                                            §§goto(addr809);
                                                         }
                                                         addr794:
                                                         §§pop();
                                                         addr795:
                                                         §§goto(addr799);
                                                         §§push(gold);
                                                         §§push(getPrice("axe"));
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(true)
                                                         {
                                                            _loc2_.push({"unit":"horse"});
                                                            if(true)
                                                            {
                                                            }
                                                            addr789:
                                                            §§goto(addr792);
                                                            §§push(Boolean(armyOb.axe));
                                                         }
                                                         §§goto(addr795);
                                                      }
                                                      §§push(Boolean(armyOb.horse));
                                                      if(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(true)
                                                               {
                                                                  §§pop();
                                                                  addr784:
                                                                  if(true)
                                                                  {
                                                                     addr782:
                                                                     §§push(gold);
                                                                     §§push(getPrice("horse"));
                                                                     if(true)
                                                                     {
                                                                        §§push(§§pop() >= §§pop());
                                                                        if(true)
                                                                        {
                                                                        }
                                                                        addr775:
                                                                        §§push(§§pop());
                                                                     }
                                                                     §§push(§§pop() >= §§pop());
                                                                  }
                                                                  _loc2_.push({"unit":"small"});
                                                                  §§goto(addr789);
                                                               }
                                                               addr777:
                                                               §§pop();
                                                               addr778:
                                                               §§goto(addr782);
                                                               §§push(gold);
                                                               §§push(getPrice("small"));
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(true)
                                                               {
                                                                  _loc2_.push({"unit":"horse"});
                                                                  if(true)
                                                                  {
                                                                  }
                                                                  addr772:
                                                                  §§goto(addr775);
                                                                  §§push(Boolean(armyOb.small));
                                                               }
                                                               §§goto(addr778);
                                                            }
                                                            §§push(Boolean(armyOb.boar));
                                                            if(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        §§pop();
                                                                        addr767:
                                                                        if(true)
                                                                        {
                                                                           addr765:
                                                                           §§push(gold);
                                                                           §§push(getPrice("boar"));
                                                                           if(true)
                                                                           {
                                                                              §§push(§§pop() >= §§pop());
                                                                              if(true)
                                                                              {
                                                                              }
                                                                              addr758:
                                                                              §§push(§§pop());
                                                                           }
                                                                           §§push(§§pop() >= §§pop());
                                                                        }
                                                                        _loc2_.push({"unit":"med"});
                                                                        §§goto(addr772);
                                                                     }
                                                                     addr760:
                                                                     §§pop();
                                                                     addr761:
                                                                     §§goto(addr765);
                                                                     §§push(gold);
                                                                     §§push(getPrice("med"));
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        _loc2_.push({"unit":"boar"});
                                                                        if(true)
                                                                        {
                                                                        }
                                                                        addr755:
                                                                        §§goto(addr758);
                                                                        §§push(Boolean(armyOb.med));
                                                                     }
                                                                     §§goto(addr761);
                                                                  }
                                                                  §§push(Boolean(armyOb.boar));
                                                                  if(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              §§pop();
                                                                              addr750:
                                                                              if(true)
                                                                              {
                                                                                 addr748:
                                                                                 §§push(gold);
                                                                                 §§push(getPrice("boar"));
                                                                                 if(true)
                                                                                 {
                                                                                    §§push(§§pop() >= §§pop());
                                                                                    if(true)
                                                                                    {
                                                                                    }
                                                                                    addr741:
                                                                                    §§push(§§pop());
                                                                                 }
                                                                                 §§push(§§pop() >= §§pop());
                                                                              }
                                                                              _loc2_.push({"unit":"big"});
                                                                              §§goto(addr755);
                                                                           }
                                                                           addr743:
                                                                           §§pop();
                                                                           addr744:
                                                                           §§goto(addr748);
                                                                           §§push(gold);
                                                                           §§push(getPrice("big"));
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              _loc2_.push({"unit":"boar"});
                                                                              if(true)
                                                                              {
                                                                              }
                                                                              addr738:
                                                                              §§goto(addr741);
                                                                              §§push(Boolean(armyOb.big));
                                                                           }
                                                                           §§goto(addr744);
                                                                        }
                                                                        §§push(Boolean(armyOb.mace));
                                                                        if(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr733:
                                                                                    if(true)
                                                                                    {
                                                                                       addr731:
                                                                                       §§push(gold);
                                                                                       §§push(getPrice("mace"));
                                                                                       if(true)
                                                                                       {
                                                                                          §§push(§§pop() >= §§pop());
                                                                                          if(true)
                                                                                          {
                                                                                          }
                                                                                          addr724:
                                                                                          §§push(§§pop());
                                                                                       }
                                                                                       §§push(§§pop() >= §§pop());
                                                                                    }
                                                                                    _loc2_.push({"unit":"anubis"});
                                                                                    §§goto(addr738);
                                                                                 }
                                                                                 addr726:
                                                                                 §§pop();
                                                                                 addr727:
                                                                                 §§goto(addr731);
                                                                                 §§push(gold);
                                                                                 §§push(getPrice("anubis"));
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    _loc2_.push({"unit":"mace"});
                                                                                    if(true)
                                                                                    {
                                                                                    }
                                                                                    addr721:
                                                                                    §§goto(addr724);
                                                                                    §§push(Boolean(armyOb.anubis));
                                                                                 }
                                                                                 §§goto(addr727);
                                                                              }
                                                                              §§push(Boolean(armyOb.mace));
                                                                              if(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          addr716:
                                                                                          if(true)
                                                                                          {
                                                                                             addr714:
                                                                                             §§push(gold);
                                                                                             §§push(getPrice("mace"));
                                                                                             if(true)
                                                                                             {
                                                                                                §§push(§§pop() >= §§pop());
                                                                                                if(true)
                                                                                                {
                                                                                                }
                                                                                                addr707:
                                                                                                §§push(§§pop());
                                                                                             }
                                                                                             §§push(§§pop() >= §§pop());
                                                                                          }
                                                                                          _loc2_.push({"unit":"anubis"});
                                                                                          §§goto(addr721);
                                                                                       }
                                                                                       addr709:
                                                                                       §§pop();
                                                                                       addr710:
                                                                                       §§goto(addr714);
                                                                                       §§push(gold);
                                                                                       §§push(getPrice("anubis"));
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(true)
                                                                                       {
                                                                                          _loc2_.push({"unit":"mace"});
                                                                                          if(true)
                                                                                          {
                                                                                          }
                                                                                          addr704:
                                                                                          §§goto(addr707);
                                                                                          §§push(Boolean(armyOb.anubis));
                                                                                       }
                                                                                       §§goto(addr710);
                                                                                    }
                                                                                    §§push(Boolean(armyOb.giant));
                                                                                    if(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr699:
                                                                                                if(true)
                                                                                                {
                                                                                                   addr697:
                                                                                                   §§push(gold);
                                                                                                   §§push(getPrice("giant"));
                                                                                                   if(true)
                                                                                                   {
                                                                                                      §§push(§§pop() >= §§pop());
                                                                                                      if(true)
                                                                                                      {
                                                                                                      }
                                                                                                      addr690:
                                                                                                      §§push(§§pop());
                                                                                                   }
                                                                                                   §§push(§§pop() >= §§pop());
                                                                                                }
                                                                                                _loc2_.push({"unit":"bmage"});
                                                                                                §§goto(addr704);
                                                                                             }
                                                                                             addr692:
                                                                                             §§pop();
                                                                                             addr693:
                                                                                             §§goto(addr697);
                                                                                             §§push(gold);
                                                                                             §§push(getPrice("bmage"));
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                _loc2_.push({"unit":"giant"});
                                                                                                if(true)
                                                                                                {
                                                                                                }
                                                                                                addr687:
                                                                                                §§goto(addr690);
                                                                                                §§push(Boolean(armyOb.bmage));
                                                                                             }
                                                                                             §§goto(addr693);
                                                                                          }
                                                                                          §§push(Boolean(armyOb.giant));
                                                                                          if(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      addr682:
                                                                                                      if(true)
                                                                                                      {
                                                                                                         addr680:
                                                                                                         §§push(gold);
                                                                                                         §§push(getPrice("giant"));
                                                                                                         if(true)
                                                                                                         {
                                                                                                            §§push(§§pop() >= §§pop());
                                                                                                            if(true)
                                                                                                            {
                                                                                                            }
                                                                                                            addr673:
                                                                                                            §§push(§§pop());
                                                                                                         }
                                                                                                         §§push(§§pop() >= §§pop());
                                                                                                      }
                                                                                                      _loc2_.push({"unit":"bmage"});
                                                                                                      §§goto(addr687);
                                                                                                   }
                                                                                                   addr675:
                                                                                                   §§pop();
                                                                                                   addr676:
                                                                                                   §§goto(addr680);
                                                                                                   §§push(gold);
                                                                                                   §§push(getPrice("bmage"));
                                                                                                }
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      _loc2_.push({"unit":"giant"});
                                                                                                      if(true)
                                                                                                      {
                                                                                                      }
                                                                                                      addr670:
                                                                                                      §§goto(addr673);
                                                                                                      §§push(Boolean(armyOb.bmage));
                                                                                                   }
                                                                                                   §§goto(addr676);
                                                                                                }
                                                                                                §§push(Boolean(armyOb.mage));
                                                                                                if(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            addr665:
                                                                                                            if(true)
                                                                                                            {
                                                                                                               addr663:
                                                                                                               §§push(gold);
                                                                                                               §§push(getPrice("mage"));
                                                                                                               if(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() >= §§pop());
                                                                                                                  if(true)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr656:
                                                                                                                  §§push(§§pop());
                                                                                                               }
                                                                                                               §§push(§§pop() >= §§pop());
                                                                                                            }
                                                                                                            _loc2_.push({"unit":"mummy"});
                                                                                                            §§goto(addr670);
                                                                                                         }
                                                                                                         addr658:
                                                                                                         §§pop();
                                                                                                         addr659:
                                                                                                         §§goto(addr663);
                                                                                                         §§push(gold);
                                                                                                         §§push(getPrice("mummy"));
                                                                                                      }
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(true)
                                                                                                         {
                                                                                                            _loc2_.push({"unit":"mage"});
                                                                                                            if(true)
                                                                                                            {
                                                                                                            }
                                                                                                            addr653:
                                                                                                            §§goto(addr656);
                                                                                                            §§push(Boolean(armyOb.mummy));
                                                                                                         }
                                                                                                         §§goto(addr659);
                                                                                                      }
                                                                                                      §§push(Boolean(armyOb.mage));
                                                                                                      if(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            addr648:
                                                                                                            if(true)
                                                                                                            {
                                                                                                               §§push(gold >= getPrice("mage"));
                                                                                                            }
                                                                                                            _loc2_.push({"unit":"mage"});
                                                                                                            §§goto(addr653);
                                                                                                         }
                                                                                                      }
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         §§goto(addr648);
                                                                                                      }
                                                                                                      §§goto(addr653);
                                                                                                   }
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      §§goto(addr658);
                                                                                                   }
                                                                                                }
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   §§goto(addr665);
                                                                                                }
                                                                                                §§goto(addr670);
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                §§goto(addr675);
                                                                                             }
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§goto(addr682);
                                                                                          }
                                                                                          §§goto(addr687);
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          §§goto(addr692);
                                                                                       }
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §§goto(addr699);
                                                                                    }
                                                                                    §§goto(addr704);
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    §§goto(addr709);
                                                                                 }
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 §§goto(addr716);
                                                                              }
                                                                              §§goto(addr721);
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr726);
                                                                           }
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           §§goto(addr733);
                                                                        }
                                                                        §§goto(addr738);
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        §§goto(addr743);
                                                                     }
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     §§goto(addr750);
                                                                  }
                                                                  §§goto(addr755);
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr760);
                                                               }
                                                            }
                                                            if(§§pop())
                                                            {
                                                               §§goto(addr767);
                                                            }
                                                            §§goto(addr772);
                                                         }
                                                         if(§§pop())
                                                         {
                                                            §§goto(addr777);
                                                         }
                                                      }
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr784);
                                                      }
                                                      §§goto(addr789);
                                                   }
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr794);
                                                   }
                                                }
                                                if(§§pop())
                                                {
                                                   §§goto(addr801);
                                                }
                                                §§goto(addr809);
                                             }
                                             if(§§pop())
                                             {
                                                §§goto(addr814);
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             §§goto(addr821);
                                          }
                                          §§goto(addr829);
                                       }
                                       if(§§pop())
                                       {
                                          §§goto(addr834);
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       §§goto(addr841);
                                    }
                                    §§goto(addr849);
                                 }
                                 if(§§pop())
                                 {
                                    §§goto(addr854);
                                 }
                              }
                              if(§§pop())
                              {
                                 §§goto(addr861);
                              }
                              §§goto(addr869);
                           }
                           if(§§pop())
                           {
                              §§goto(addr874);
                           }
                        }
                        if(§§pop())
                        {
                           §§goto(addr881);
                        }
                        §§goto(addr889);
                     }
                     if(§§pop())
                     {
                        §§goto(addr894);
                     }
                  }
                  if(§§pop())
                  {
                     §§goto(addr901);
                  }
               }
            }
            if(!_loc2_.length)
            {
            }
            §§goto(addr912);
         }
      }
      
      public function multiplyHpBy(param1:Number) : void
      {
         if(true)
         {
            curHp *= param1;
            maxHp *= param1;
         }
      }
      
      public function addUnit(param1:String) : void
      {
         if(true)
         {
            armyOb[param1] = true;
         }
      }
      
      public function setHp(param1:Number) : void
      {
         if(true)
         {
            curHp = maxHp = param1;
            game.hud.setHpBar(game.hud.mc_hpbar2,curHp,maxHp);
         }
      }
      
      public function getHpPerc() : Number
      {
         §§push(curHp);
         if(true)
         {
            §§push(§§pop() / maxHp);
         }
         return §§pop();
      }
      
      private function getSpellLocation(param1:String) : Point
      {
         var _loc2_:Point = null;
         _loc2_ = new Point();
         var _loc3_:* = param1;
         if(true)
         {
            §§goto(addr60);
         }
         addr60:
         if("s_smoke" !== _loc3_)
         {
            §§push(1);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_.x = game.units1[0].x;
               _loc2_.y = game.units1[0].y;
         }
         0;
         return _loc2_;
      }
      
      public function addArcher() : void
      {
         if(true)
         {
            if(defenseUp == 5)
            {
               if(true)
               {
                  return;
               }
            }
            else
            {
               ++defenseUp;
            }
            game.base1["arch" + defenseUp].visible = true;
         }
      }
      
      private function getPrice(param1:String, param2:String = "blank", param3:uint = 1) : uint
      {
         if(true)
         {
            if(!isSkill(param1))
            {
               return UnitStats.unit[race + "_" + param1].cost * UnitStats.upgrades[param2]["priceMod" + param3];
            }
         }
         return UnitStats.spell[param1].cost * UnitStats.upgrades[param2]["priceMod" + param3];
      }
      
      private function isSkill(param1:String) : Boolean
      {
         if(param1.substring(0,2) == "s_")
         {
            return true;
         }
         return false;
      }
      
      public function MouseDown() : void
      {
      }
      
      private function findClosestMine() : Object
      {
         var _loc1_:Object = null;
         var _loc2_:* = 0;
         var _loc3_:Object = null;
         _loc1_ = {"ox":-9999};
         if(true)
         {
            _loc2_ = 0;
         }
         while(_loc2_ < game.background.mines1.length)
         {
            _loc3_ = game.background.mines1[_loc2_];
            if(!_loc3_.used)
            {
               if(_loc3_.ox > _loc1_.ox)
               {
                  _loc1_ = _loc3_;
               }
            }
            §§push(_loc2_);
            if(true)
            {
               §§push(uint(§§pop() + 1));
            }
            _loc2_ = §§pop();
         }
         if(true)
         {
            if(_loc1_.ox == -9999)
            {
               return null;
            }
         }
         return _loc1_;
      }
      
      public function MouseUp() : void
      {
      }
      
      public function heal(param1:Number) : void
      {
         §§push(§§findproperty(curHp));
         §§push(curHp);
         §§push(maxHp);
         if(true)
         {
            §§push(§§pop() * param1);
         }
         §§pop().curHp = §§pop() + §§pop();
         if(curHp > maxHp)
         {
            curHp = maxHp;
         }
         game.hud.setHpBar(game.hud.mc_hpbar2,curHp,maxHp);
      }
      
      private function tryCreateUnit(param1:Number, param2:Number, param3:String, param4:String = "blank", param5:uint = 1, param6:Object = null) : Boolean
      {
         var _loc7_:uint = 0;
         var _loc8_:Point = null;
         _loc7_ = getPrice(param3,param4,param5);
         if(gold >= _loc7_)
         {
            gold -= _loc7_;
            if(!isSkill(param3))
            {
               §§push(game);
               §§push(1);
               §§push(param1);
               §§push(param2);
               §§push(race + "_");
               §§push(param3);
               if(true)
               {
                  §§push(§§pop() + §§pop());
                  §§push(param4);
               }
               §§pop().createUnit(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),param5,param6);
            }
            else
            {
               _loc8_ = getSpellLocation(param3);
               game.createSpell(1,_loc8_.x,_loc8_.y,param3,param4,param5);
            }
            return true;
         }
         return false;
      }
      
      public function removeUnit(param1:String) : void
      {
         if(true)
         {
            armyOb[param1] = false;
         }
      }
      
      public function damage(param1:Number, param2:uint = 0) : void
      {
         if(param2)
         {
            §§push(game);
            if(true)
            {
               §§pop().base1.arch1.play();
               §§push(game);
               if(true)
               {
                  §§pop().base1.arch2.play();
                  §§push(game);
                  if(true)
                  {
                     §§pop().base1.arch3.play();
                     game.base1.arch4.play();
                     §§push(game);
                  }
                  §§pop().base1.arch5.play();
               }
               addr60:
               §§pop().victory();
               §§push(game);
            }
            §§pop().hud.setHpBar(game.hud.mc_hpbar2,curHp,maxHp);
            return;
         }
         curHp -= param1;
         if(curHp <= 0)
         {
            §§goto(addr60);
            §§push(game);
         }
         §§goto(addr60);
      }
   }
}

if(true)
{
   HudEnemy = §§newclass(HudEnemy,Object);
}

