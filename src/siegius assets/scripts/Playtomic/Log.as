
{
   if(true)
   {
      Log = §§newclass(Log,Object);
   }
}

package Playtomic
{
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.net.SharedObject;
   import flash.system.Security;
   import flash.utils.Timer;
   
   public final class Log
   {
      
      private static const PingR:Timer;
      
      private static var LevelAverages:Array;
      
      private static var Customs:Array;
      
      private static const PingF:Timer;
      
      public static var Cookie:SharedObject;
      
      public static var GUID:String = "";
      
      private static var LevelRangeds:Array;
      
      private static var Plays:int = 0;
      
      public static var Enabled:Boolean = false;
      
      private static var Pings:int = 0;
      
      private static var FrozenQueue:Array;
      
      public static var SourceUrl:String;
      
      private static var HighestGoal:int = 0;
      
      private static var FirstPing:Boolean = true;
      
      private static var Frozen:Boolean = false;
      
      public static var BaseUrl:String;
      
      public static var Request:LogRequest;
      
      public static var Queue:Boolean = true;
      
      private static var LevelCounters:Array;
      
      public static var SWFID:int = 0;
      
      {
         if(true)
         {
            Enabled = false;
            if(true)
            {
               Queue = true;
               if(true)
               {
                  SWFID = 0;
                  if(true)
                  {
                     GUID = "";
                     if(true)
                     {
                        PingF = new Timer(60000);
                        if(true)
                        {
                           PingR = new Timer(30000);
                           if(true)
                           {
                              FirstPing = true;
                              if(true)
                              {
                                 Pings = 0;
                                 Plays = 0;
                              }
                              HighestGoal = 0;
                           }
                           Frozen = false;
                        }
                        FrozenQueue = new Array();
                     }
                     Customs = new Array();
                  }
                  LevelCounters = new Array();
               }
               LevelAverages = new Array();
            }
            LevelRangeds = new Array();
         }
      }
      
      public function Log()
      {
         super();
      }
      
      public static function Link(param1:String, param2:String, param3:String, param4:int, param5:int, param6:int) : void
      {
         if(!Enabled)
         {
            return;
         }
         §§push(§§findproperty(Send));
         §§push("l/" + Clean(param2));
         if(true)
         {
            §§push("/");
            if(true)
            {
               §§push(§§pop() + §§pop());
               if(true)
               {
                  §§push(§§pop() + Clean(param3));
                  if(true)
                  {
                     §§push("/");
                     if(true)
                     {
                        §§push(§§pop() + §§pop());
                        if(true)
                        {
                           §§push(§§pop() + Clean(param1));
                           if(true)
                           {
                              §§goto(addr72);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr64);
         }
         addr72:
         §§push(§§pop() + "/");
         §§push(param4);
         if(true)
         {
            addr64:
            §§push(§§pop() + §§pop() + "/" + param5 + "/");
            §§push(param6);
         }
         §§pop().Send(§§pop() + §§pop());
      }
      
      public static function LevelAverageMetric(param1:String, param2:*, param3:int, param4:Boolean = false) : void
      {
         if(true)
         {
            if(!Enabled)
            {
               if(true)
               {
                  return;
               }
            }
            else if(param4)
            {
               if(true)
               {
                  if(LevelAverages.indexOf(param1) <= -1)
                  {
                     LevelAverages.push(param1);
                     Send("la/" + Clean(param1) + "/" + Clean(param2) + "/" + param3);
                     addr62:
                     return;
                     addr38:
                  }
               }
               return;
            }
            §§goto(addr38);
         }
         §§goto(addr62);
      }
      
      private static function Send(param1:String, param2:Boolean = false) : void
      {
         if(true)
         {
            §§push(Frozen);
            if(true)
            {
               if(§§pop())
               {
                  if(true)
                  {
                     FrozenQueue.push(param1);
                     if(true)
                     {
                        return;
                     }
                     addr64:
                     Request.Send();
                  }
                  Request = LogRequest.Create();
                  §§goto(addr70);
               }
               else
               {
                  Request.Queue(param1);
                  if(true)
                  {
                     §§push(Request.Ready);
                     if(true)
                     {
                        §§push(§§pop());
                        if(true)
                        {
                           if(!§§pop())
                           {
                              if(true)
                              {
                                 §§pop();
                                 addr49:
                                 §§push(param2);
                              }
                           }
                           if(§§pop())
                           {
                           }
                           §§goto(addr63);
                        }
                        §§pop();
                        §§push(Queue);
                     }
                     addr63:
                     if(§§pop())
                     {
                        §§goto(addr64);
                     }
                     addr70:
                     return;
                     §§push(!§§pop());
                  }
                  §§goto(addr49);
               }
            }
            §§goto(addr63);
         }
         §§goto(addr70);
      }
      
      public static function CustomMetric(param1:String, param2:String = null, param3:Boolean = false) : void
      {
         §§push(Enabled);
         if(true)
         {
            if(!§§pop())
            {
               return;
            }
            if(param2 == null)
            {
               param2 = "";
            }
            §§push(param3);
         }
         if(§§pop())
         {
            if(Customs.indexOf(param1) > -1)
            {
               return;
            }
            Customs.push(param1);
         }
         §§push(§§findproperty(Send));
         §§push("c/" + Clean(param1));
         if(true)
         {
            §§push(§§pop() + "/" + Clean(param2));
         }
         §§pop().Send(§§pop());
      }
      
      private static function Clean(param1:String) : String
      {
         while(param1.indexOf("/") > -1)
         {
            param1 = param1.replace("/","\\");
         }
         while(param1.indexOf("~") > -1)
         {
            param1 = param1.replace("~","-");
         }
         return escape(param1);
      }
      
      public static function UnFreeze() : void
      {
         Frozen = false;
         Request.MassQueue(FrozenQueue);
      }
      
      private static function GetCookie(param1:String) : int
      {
         if(Cookie.data[param1] == undefined)
         {
            return 0;
         }
         return int(Cookie.data[param1]);
      }
      
      public static function View(param1:int = 0, param2:String = "", param3:String = "") : void
      {
         var _loc4_:* = 0;
         if(SWFID > 0)
         {
            return;
         }
         SWFID = param1;
         GUID = param2;
         Enabled = true;
         §§push(SWFID == 0);
         if(!(SWFID == 0))
         {
            §§pop();
            §§push(GUID);
            if(true)
            {
               addr35:
               if(§§pop() == "")
               {
                  Enabled = false;
                  return;
               }
               §§push(param3);
               if(true)
               {
                  if(§§pop().indexOf("http://") != 0 && Security.sandboxType != "localWithNetwork" && Security.sandboxType != "localTrusted")
                  {
                     Enabled = false;
                     return;
                  }
                  SourceUrl = GetUrl(param3);
                  if(SourceUrl == null || SourceUrl == "" || SourceUrl.indexOf("https://") == 0)
                  {
                     Enabled = false;
                     return;
                  }
                  Security.allowDomain("http://g" + Log.GUID + ".api.playtomic.com/");
                  Security.allowInsecureDomain("http://g" + Log.GUID + ".api.playtomic.com/");
                  Security.loadPolicyFile("http://g" + Log.GUID + ".api.playtomic.com/crossdomain.xml");
                  Request = LogRequest.Create();
                  Cookie = SharedObject.getLocal("playtomic");
                  _loc4_ = (_loc4_ = GetCookie("views")) + 1;
                  SaveCookie("views",_loc4_);
                  Send("v/" + _loc4_,true);
                  PingF.addEventListener(TimerEvent.TIMER,PingServer);
                  PingF.start();
                  return;
               }
               §§goto(addr88);
            }
            §§goto(addr94);
         }
         §§goto(addr35);
      }
      
      public static function Freeze() : void
      {
         Frozen = true;
      }
      
      public static function LevelCounterMetric(param1:String, param2:*, param3:Boolean = false) : void
      {
         if(true)
         {
            if(!Enabled)
            {
               if(true)
               {
                  return;
               }
            }
            else if(param3)
            {
               if(true)
               {
                  if(LevelCounters.indexOf(param1) <= -1)
                  {
                     LevelCounters.push(param1);
                     Send("lc/" + Clean(param1) + "/" + Clean(param2));
                     addr58:
                     return;
                     addr38:
                  }
               }
               return;
            }
            §§goto(addr38);
         }
         §§goto(addr58);
      }
      
      public static function Play() : void
      {
         if(!Enabled)
         {
            return;
         }
         LevelCounters = new Array();
         LevelAverages = new Array();
         LevelRangeds = new Array();
         var _loc1_:*;
         var _loc2_:* = (_loc1_ = §§findproperty(Plays)).Plays + 1;
         _loc1_.Plays = _loc2_;
         Send("p/" + Plays);
      }
      
      private static function GetUrl(param1:String) : String
      {
         var defaulturl:String;
         var url:String;
         §§push(§§newactivation());
         if(true)
         {
            §§pop().§§slot[2] = null;
            defaulturl = param1;
            if(ExternalInterface.available)
            {
               try
               {
                  addr26:
                  url = String(ExternalInterface.call("window.location.href.toString"));
               }
               catch(s:Error)
               {
                  §§push(_loc2_);
                  §§push(defaulturl);
                  if(true)
                  {
                     §§push(§§pop());
                  }
                  §§pop().§§slot[2] = §§pop();
               }
               §§goto(addr87);
            }
            else
            {
               §§push(defaulturl.indexOf("http://") == 0);
               §§push(defaulturl.indexOf("http://") == 0);
               if(true)
               {
                  if(!§§pop())
                  {
                     §§pop();
                     §§push(defaulturl.indexOf("https://") == 0);
                  }
                  if(§§pop())
                  {
                     §§push(§§newactivation());
                     §§push(defaulturl);
                     if(true)
                     {
                        §§pop().§§slot[2] = §§pop();
                        §§goto(addr87);
                     }
                     §§goto(addr134);
                  }
                  addr87:
                  §§push(url == null);
                  §§push(url == null);
                  if(true)
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        §§push(url == "");
                     }
                     §§push(§§pop());
                  }
                  if(!§§pop())
                  {
                     §§pop();
                     §§push(url == "null");
                  }
                  if(§§pop())
                  {
                     addr113:
                     if(Security.sandboxType == "localWithNetwork" || Security.sandboxType == "localTrusted")
                     {
                        url = "http://local-testing/";
                     }
                     else
                     {
                        addr134:
                        url = null;
                     }
                  }
                  return escape(url);
               }
            }
            §§goto(addr113);
         }
         §§goto(addr26);
      }
      
      public static function LevelRangedMetric(param1:String, param2:*, param3:int, param4:Boolean = false) : void
      {
         §§push(Enabled);
         if(true)
         {
            if(!§§pop())
            {
               return;
            }
            §§push(param4);
         }
         if(§§pop())
         {
            if(LevelRangeds.indexOf(param1) > -1)
            {
               return;
            }
            LevelRangeds.push(param1);
         }
         §§push(§§findproperty(Send));
         §§push("lr/" + Clean(param1));
         §§push("/");
         if(true)
         {
            §§push(§§pop() + §§pop() + Clean(param2));
            §§push("/");
         }
         §§pop().Send(§§pop() + §§pop() + param3);
      }
      
      private static function SaveCookie(param1:String, param2:int) : void
      {
         var _loc3_:SharedObject = null;
         _loc3_ = SharedObject.getLocal("swfstats");
         _loc3_.data[param1] = param2.toString();
         _loc3_.flush();
      }
      
      public static function ForceSend() : void
      {
         if(!Enabled)
         {
            return;
         }
         Request.Send();
         Request = LogRequest.Create();
         if(FrozenQueue.length > 0)
         {
            Request.MassQueue(FrozenQueue);
         }
      }
      
      private static function PingServer(... rest) : void
      {
         if(!Enabled)
         {
            return;
         }
         var _loc2_:*;
         §§push((_loc2_ = §§findproperty(Pings)).Pings);
         if(true)
         {
            §§push(§§pop() + 1);
         }
         var _loc3_:* = §§pop();
         if(true)
         {
            _loc2_.Pings = _loc3_;
         }
         Send("t/" + (FirstPing ? "y" : "n") + "/" + Pings,true);
         if(FirstPing)
         {
            PingF.stop();
            PingR.addEventListener(TimerEvent.TIMER,PingServer);
            PingR.start();
            FirstPing = false;
         }
      }
   }
}
