package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   
   public function F_floorl() : void
   {
      var _loc2_:* = 0;
      var _loc3_:* = NaN;
      var _loc1_:* = int(ESP);
      _loc2_ = _loc1_;
      _loc1_ = int(_loc1_ - 16);
      _loc3_ = lf64(_loc2_);
      sf64(_loc3_,_loc1_);
      ESP = _loc1_;
      F_floor();
      _loc1_ = int(_loc1_ + 16);
      _loc3_ = Number(st0);
      st0 = _loc3_;
      _loc1_ = _loc2_;
      ESP = _loc1_;
   }
}
