package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZNSs9_M_assignEPcjc() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 8);
      _loc6_ = li32(_loc3_ + 4);
      _loc5_ = li32(_loc3_);
      if(_loc6_ == 1)
      {
         si8(_loc1_,_loc5_);
      }
      else
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc6_,_loc2_ + 8);
         si32(_loc5_,_loc2_);
         var _loc4_:* = _loc1_ & 255;
         si32(_loc4_,_loc2_ + 4);
         ESP = _loc2_;
         Fmemset();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
