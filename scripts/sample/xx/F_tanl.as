package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_tanl() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = NaN;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 32);
      _loc5_ = lf64(_loc3_);
      sf64(_loc5_,_loc3_ - 24);
      _loc1_ = int(_loc3_ - 24);
      _loc1_ = _loc1_ | 4;
      _loc1_ = li32(_loc1_);
      _loc8_ = _loc1_ & 2147483647;
      if(uint(_loc8_) <= 1072243195)
      {
         if(uint(_loc8_) <= 1043333119)
         {
            if(int(_loc5_) != 0)
            {
            }
         }
         _loc2_ = int(_loc2_ - 32);
         si32(0,_loc2_ + 12);
         si32(0,_loc2_ + 8);
         si32(1,_loc2_ + 16);
         sf64(_loc5_,_loc2_);
         ESP = _loc2_;
         F___kernel_tan();
         _loc2_ = int(_loc2_ + 32);
         _loc5_ = Number(st0);
      }
      else if(uint(_loc8_) >= 2146435072)
      {
         _loc5_ = Number(_loc5_ - _loc5_);
      }
      else
      {
         _loc2_ = int(_loc2_ - 16);
         si32(int(_loc3_ - 16),_loc2_ + 8);
         sf64(_loc5_,_loc2_);
         ESP = _loc2_;
         F___ieee754_rem_pio2();
         _loc2_ = int(_loc2_ + 16);
         var _loc4_:* = lf64(_loc3_ - 16);
         var _loc6_:* = lf64(_loc3_ - 8);
         _loc2_ = int(_loc2_ - 32);
         var _loc7_:* = int(eax) << 1;
         _loc7_ = int(1 - (_loc7_ & 2));
         si32(_loc7_,_loc2_ + 16);
         sf64(_loc6_,_loc2_ + 8);
         sf64(_loc4_,_loc2_);
         ESP = _loc2_;
         F___kernel_tan();
         _loc2_ = int(_loc2_ + 32);
         _loc5_ = Number(st0);
      }
      st0 = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
