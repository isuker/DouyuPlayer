package sample.xx_nwind_2D_sjlj_2E_o_3A_AB7D2B82_2D_CFCA_2D_47B6_2D_8B3C_2D_7E9171E8B0E4
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   
   public function F_uw_install_context() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc7_ = li32(_loc1_);
      _loc6_ = li32(_use_fc_key);
      if(_loc6_ <= -1)
      {
         ESP = _loc2_;
         F_fc_key_init_once();
         _loc6_ = li32(_use_fc_key);
      }
      if(_loc6_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc7_,_loc2_ + 4);
         si32(li32(_fc_key),_loc2_);
         ESP = _loc2_;
         F_pthread_setspecific();
         _loc2_ = int(_loc2_ + 16);
      }
      else
      {
         si32(_loc7_,_fc_static);
      }
      var _loc5_:* = li32(_loc1_);
      var _loc4_:int = _loc5_ + 32;
      longjmp(_loc4_,1);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
