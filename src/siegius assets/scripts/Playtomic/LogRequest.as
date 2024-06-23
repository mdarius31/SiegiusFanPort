package Playtomic
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public final class LogRequest
   {
      
      private static var Pool:Array = new Array();
      
      private static var Failed:int = 0;
       
      
      public var Ready:Boolean = false;
      
      private var Data:String = "";
      
      private var Target:URLRequest;
      
      private var Sender:URLLoader;
      
      private var BaseUrl:String;
      
      public function LogRequest()
      {
         if(true)
         {
            Data = "";
            if(true)
            {
               Ready = false;
               if(true)
               {
                  super();
                  if(true)
                  {
                     this.Sender = new URLLoader();
                     if(true)
                     {
                        this.Sender.addEventListener(Event.COMPLETE,this.Dispose,false,0,true);
                        this.Sender.addEventListener(IOErrorEvent.IO_ERROR,this.IOErrorHandler,false,0,true);
                     }
                     this.Sender.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.StatusChange,false,0,true);
                  }
                  this.Sender.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.SecurityErrorHandler,false,0,true);
               }
               this.Target = new URLRequest();
            }
            this.BaseUrl = "http://g" + Log.GUID + ".api.playtomic.com/tracker/q.aspx?swfid=" + Log.SWFID;
         }
      }
      
      public static function Create() : LogRequest
      {
         var _loc1_:LogRequest = null;
         if(true)
         {
            _loc1_ = Pool.length > 0 ? Pool.pop() as LogRequest : new LogRequest();
            if(true)
            {
               _loc1_.Data = "";
               _loc1_.Ready = false;
            }
            return _loc1_;
         }
         §§goto(addr19);
      }
      
      public function Send() : void
      {
         if(true)
         {
            this.Target.url = this.BaseUrl + "&q=" + this.Data + "&url=" + Log.SourceUrl + "&" + Math.random() + "z";
            this.Sender.load(this.Target);
         }
      }
      
      private function SecurityErrorHandler(param1:SecurityErrorEvent) : void
      {
      }
      
      private function IOErrorHandler(param1:IOErrorEvent) : void
      {
         if(true)
         {
            var _loc2_:*;
            §§push((_loc2_ = §§findproperty(Failed)).Failed);
            if(true)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            _loc2_.Failed = _loc3_;
         }
      }
      
      public function Queue(param1:String) : void
      {
         if(true)
         {
            if(Failed > 3)
            {
               if(true)
               {
                  return;
               }
               addr55:
               this.Ready = true;
            }
            else
            {
               this.Data += (this.Data == "" ? "" : "~") + param1;
               if(this.Data.length > 300)
               {
                  §§goto(addr55);
               }
            }
         }
      }
      
      private function StatusChange(param1:HTTPStatusEvent) : void
      {
      }
      
      public function MassQueue(param1:Array) : void
      {
         var _loc2_:* = 0;
         var _loc3_:LogRequest = null;
         §§push(Failed);
         if(true)
         {
            if(§§pop() > 3)
            {
               return;
            }
            §§push(int(param1.length - 1));
         }
         _loc2_ = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(§§pop() > -1)
            {
               this.Data += (this.Data == "" ? "" : "~") + param1[_loc2_];
               param1.splice(_loc2_,1);
               if(this.Data.length > 300)
               {
                  _loc3_ = Create();
                  _loc3_.MassQueue(param1);
                  this.Ready = true;
                  this.Send();
                  return;
               }
               §§push(_loc2_);
               if(true)
               {
                  continue loop0;
               }
            }
            Log.Request = this;
            return;
         }
      }
      
      public function Dispose(param1:Event = null) : void
      {
         if(true)
         {
            Pool.push(this);
         }
      }
   }
}
