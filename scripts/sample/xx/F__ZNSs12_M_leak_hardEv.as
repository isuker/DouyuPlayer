package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZNSs12_M_leak_hardEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:int = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F__ZNKSs6_M_repEv();
      _loc2_ = int(_loc2_ + 16);
      _loc5_ = eax;
      ESP = _loc2_;
      F__ZNSs12_S_empty_repEv();
      _loc4_ = eax;
      if(_loc5_ != _loc4_)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F__ZNKSs6_M_repEv();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         si32(int(eax),_loc2_);
         ESP = _loc2_;
         F__ZNKSs4_Rep12_M_is_sharedEv();
         _loc2_ = int(_loc2_ + 16);
         _loc4_ = eax;
         if(_loc4_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(0,_loc2_ + 12);
            si32(0,_loc2_ + 8);
            si32(0,_loc2_ + 4);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F__ZNSs9_M_mutateEjjj();
            _loc2_ = int(_loc2_ + 16);
         }
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F__ZNKSs6_M_repEv();
         _loc2_ = int(_loc2_ + 16);
         _loc4_ = eax;
         _loc2_ = int(_loc2_ - 16);
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         F__ZNSs4_Rep13_M_set_leakedEv();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
