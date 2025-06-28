package
{
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class SH
   {
      
      private static var bgMusic_Channel:SoundChannel;
      
      private static var bgFade_Channel:SoundChannel;
      
      private static var noVol:SoundTransform;
      
      private static var bgMusic_Object:*;
      
      private static var curSounds:Array;
      
      private static var musicVol:SoundTransform;
      
      private static var fadeVol:SoundTransform;
      
      private static var bgMusic_Class:*;
      
      private static var bgFade_Class:*;
      
      private static var bgFade_Object:*;
      
      public function SH()
      {
         super();
      }
      
      public static function stopMusic() : void
      {
         bgMusic_Channel.stop();
      }
      
      public static function fadeToMusic(param1:*) : void
      {
         if(bgFade_Class)
         {
            bgFade_Channel.stop();
         }
         bgFade_Class = param1;
         bgFade_Object = new bgFade_Class();
         bgFade_Channel = bgFade_Object.play(0,1000);
         musicVol.volume = 1;
         fadeVol.volume = 0;
         bgFade_Channel.soundTransform = SD.musicOn ? fadeVol : noVol;
      }
      
      public static function EnterFrame() : void
      {
         var _loc1_:uint = 0;
         if(bgFade_Object)
         {
            musicVol.volume -= 0.025;
            fadeVol.volume += 0.025;
            bgMusic_Channel.soundTransform = SD.musicOn ? musicVol : noVol;
            bgFade_Channel.soundTransform = SD.musicOn ? fadeVol : noVol;
            if(fadeVol.volume >= 1)
            {
               bgMusic_Channel.stop();
               bgMusic_Class = bgFade_Class;
               bgMusic_Object = bgFade_Object;
               bgMusic_Channel = bgFade_Channel;
               bgFade_Class = null;
               bgFade_Object = null;
               bgFade_Channel = null;
            }
         }
         _loc1_ = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            while(§§pop() < curSounds.length)
            {
               --curSounds[_loc1_].timer;
               if(!curSounds.timer)
               {
                  curSounds.splice(_loc1_,1);
               }
               §§push(_loc1_);
               if(true)
               {
                  continue loop0;
               }
            }
            return;
            _loc1_ = §§pop() + 1;
         }
      }
      
      public static function playUnitSound(param1:String, param2:Number, param3:* = null) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:SoundChannel = null;
         var _loc6_:SoundTransform = null;
         if(!SD.soundOn || Game.OLDTIMEY)
         {
            return;
         }
         if(param3)
         {
            _loc4_ = param3;
         }
         else
         {
            _loc4_ = SoundStats.getSound(param1);
         }
         if(!_loc4_)
         {
            return;
         }
         if(inCurSounds(_loc4_))
         {
            return;
         }
         curSounds.push(new SoundStats(_loc4_));
         _loc5_ = new _loc4_().play();
         _loc6_ = new SoundTransform();
         _loc6_.volume = (450 - Math.abs(param2)) / 450;
         if(true)
         {
            if(_loc6_.volume > 0.6)
            {
               if(true)
               {
                  _loc6_.volume = 0.6;
                  if(true)
                  {
                  }
                  addr125:
                  _loc6_.pan = -1;
               }
               addr128:
               _loc5_.soundTransform = _loc6_;
            }
            if(_loc6_.volume < 0.2)
            {
               if(true)
               {
                  _loc6_.volume = 0.2;
                  if(true)
                  {
                  }
                  addr111:
                  _loc6_.pan = 1;
               }
               addr114:
               if(_loc6_.pan < -1)
               {
                  §§goto(addr125);
               }
               §§goto(addr128);
            }
            _loc6_.pan = param2 / 300;
            if(_loc6_.pan > 1)
            {
               §§goto(addr111);
            }
            §§goto(addr114);
         }
      }
      
      public static function setMusicVolume(param1:Number) : void
      {
         musicVol.volume = param1;
         bgMusic_Channel.soundTransform = SD.musicOn ? musicVol : noVol;
      }
      
      public static function setMusic(param1:*) : void
      {
         if(bgMusic_Class == param1)
         {
            return;
         }
         bgMusic_Class = param1;
         if(bgMusic_Channel)
         {
            bgMusic_Channel.stop();
         }
         bgMusic_Object = new bgMusic_Class();
         bgMusic_Channel = bgMusic_Object.play(0,1000);
         if(!SD.musicOn)
         {
            bgMusic_Channel.soundTransform = noVol;
         }
      }
      
      public static function Init() : void
      {
         musicVol = new SoundTransform();
         fadeVol = new SoundTransform();
         noVol = new SoundTransform();
         noVol.volume = 0;
         curSounds = new Array();
      }
      
      public static function playSound(param1:*) : void
      {
         if(SD.soundOn)
         {
            new param1().play();
         }
      }
      
      private static function inCurSounds(param1:*) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:uint = 0;
         if(true)
         {
            _loc2_ = false;
            _loc3_ = 0;
         }
         while(_loc3_ < curSounds.length)
         {
            if(param1 == curSounds[_loc3_].sound)
            {
               if(false)
               {
                  break;
               }
               _loc2_ = true;
               if(true)
               {
                  break;
               }
            }
            else
            {
               _loc3_++;
            }
         }
         return _loc2_;
      }
   }
}

