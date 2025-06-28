package
{
   public class PopupData
   {
      
      public var unit:*;
      
      public var i:uint;
      
      public var x:Number;
      
      public var y:Number;
      
      public var upgrade:UpgradeType;
      
      public var isSpell:Boolean;
      
      public function PopupData(param1:Number)
      {
         super();
         x = 0;
         y = param1;
         i = 0;
         unit = null;
         upgrade = null;
         isSpell = false;
      }
   }
}

