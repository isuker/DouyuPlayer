package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F___lo0bits_D2A() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc8_:* = 0;
      var _loc10_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc10_ = li32(_loc1_);
      var _loc9_:* = _loc10_ & 7;
      if(_loc9_ != 0)
      {
         _loc8_ = 0;
         if((_loc10_ & 1) == 0)
         {
            _loc9_ = _loc10_ & 2;
            if(_loc9_ != 0)
            {
               _loc9_ = int(_loc10_ >>> 1);
               si32(_loc9_,_loc1_);
               _loc8_ = 1;
            }
            else
            {
               _loc9_ = int(_loc10_ >>> 2);
               si32(_loc9_,_loc1_);
               _loc8_ = 2;
            }
         }
      }
      else
      {
         _loc7_ = int(_loc10_ >>> 16);
         _loc6_ = _loc10_ & 65535;
         if(_loc6_ != 0)
         {
            _loc7_ = _loc10_;
         }
         _loc10_ = int(_loc7_ >>> 8);
         _loc8_ = _loc7_ & 255;
         if(_loc8_ != 0)
         {
            _loc10_ = _loc7_;
         }
         _loc5_ = int(_loc10_ >>> 4);
         _loc7_ = _loc10_ & 15;
         if(_loc7_ != 0)
         {
            _loc5_ = _loc10_;
         }
         _loc10_ = int(_loc5_ >>> 2);
         _loc4_ = _loc5_ & 3;
         if(_loc4_ != 0)
         {
            _loc10_ = _loc5_;
         }
         _loc5_ = 16;
         if(_loc6_ != 0)
         {
            _loc5_ = 0;
         }
         _loc6_ = _loc5_ | 8;
         if(_loc8_ != 0)
         {
            _loc6_ = _loc5_;
         }
         _loc8_ = _loc6_ | 4;
         if(_loc7_ != 0)
         {
            _loc8_ = _loc6_;
         }
         _loc6_ = _loc8_ | 2;
         if(_loc4_ != 0)
         {
            _loc6_ = _loc8_;
         }
         _loc9_ = _loc10_ & 1;
         if(_loc9_ == 0)
         {
            _loc10_ = int(_loc10_ >>> 1);
            _loc6_ = int(_loc6_ + 1);
            _loc8_ = 32;
            if(_loc10_ != 0)
            {
            }
         }
         si32(_loc10_,_loc1_);
         _loc8_ = _loc6_;
      }
      eax = _loc8_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
