package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_truncf() : void
   {
      var _loc6_:* = 0;
      var _loc9_:int = 0;
      var _loc1_:* = 0;
      var _loc2_:* = NaN;
      var _loc3_:* = int(ESP);
      _loc6_ = _loc3_;
      _loc3_ = int(_loc3_ - 8);
      _loc2_ = lf32(_loc6_);
      sf32(_loc2_,_loc6_ - 4);
      _loc1_ = li32(_loc6_ - 4);
      var _loc10_:* = int(_loc1_ >>> 23);
      _loc10_ = _loc10_ & 255;
      _loc9_ = _loc10_ + -127;
      if(_loc9_ <= 22)
      {
         if(_loc9_ <= -1)
         {
            var _loc5_:* = 1.00000001504747e30;
            var _loc8_:* = Number(_loc2_ + _loc5_);
            var _loc4_:* = _loc8_;
            _loc8_ = _loc4_;
            _loc5_ = 0;
            var _loc7_:* = _loc5_;
            if(!(_loc8_ <= _loc7_ | _loc8_ != _loc8_ | _loc7_ != _loc7_))
            {
               _loc1_ = _loc1_ & -2147483648;
            }
            addr159:
            si32(_loc1_,_loc6_ - 8);
            _loc2_ = lf32(_loc6_ - 8);
         }
         else
         {
            _loc9_ = 8388607 >>> _loc9_;
            _loc10_ = _loc9_ & _loc1_;
            if(_loc10_ != 0)
            {
               _loc5_ = 1.00000001504747e30;
               _loc8_ = Number(_loc2_ + _loc5_);
               _loc4_ = _loc8_;
               _loc8_ = _loc4_;
               _loc5_ = 0;
               _loc7_ = _loc5_;
               if(!(_loc8_ <= _loc7_ | _loc8_ != _loc8_ | _loc7_ != _loc7_))
               {
                  _loc1_ = _loc1_ & (_loc9_ ^ -1);
               }
               §§goto(addr159);
            }
         }
      }
      else if(_loc9_ == 128)
      {
         _loc8_ = _loc2_;
         _loc8_ = Number(_loc8_ + _loc8_);
         _loc2_ = _loc8_;
      }
      st0 = _loc2_;
      _loc3_ = _loc6_;
      ESP = _loc3_;
   }
}
