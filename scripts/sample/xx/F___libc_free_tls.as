package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_ls_2E_o_3A_01458B9F_2D_2A2B_2D_4FF7_2D_8FFE_2D_2EDF72BF4080.*;
   
   public function F___libc_free_tls() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_tls_static_space);
      _loc4_ = li32(_loc3_ + 8);
      _loc1_ = int(_loc4_ + _loc1_);
      _loc1_ = int(_loc1_ + -1);
      _loc4_ = int(0 - _loc4_);
      _loc1_ = _loc1_ & _loc4_;
      _loc4_ = li32(_loc3_);
      _loc1_ = int(_loc4_ - _loc1_);
      _loc4_ = li32(_loc4_ + 4);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F_free();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      F_free();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}