package sample.xx
{
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   
   public function F__init() : void
   {
      var _loc3_:* = 0;
      var _loc6_:int = 0;
      var _loc8_:int = 0;
      var _loc7_:int = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      ESP = _loc2_;
      F_flascc_pthreadsInit();
      _loc2_ = int(_loc2_ - 16);
      si32(-1,_loc2_);
      ESP = _loc2_;
      F_uiThreadIdRaw();
      _loc2_ = int(_loc2_ + 16);
      _loc1_ = int(eax);
      if(_loc1_ >= 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(int(_loc3_ - 12),_loc2_);
         ESP = _loc2_;
         F_uiThreadESPInit();
         _loc2_ = int(_loc2_ + 16);
         _loc9_ = 0;
         si32(_loc9_,_loc3_ - 16);
         _loc2_ = int(_loc2_ - 16);
         si32(li32(_loc3_ - 12),_loc2_ + 8);
         si32(int(int(eax) - li32(_loc3_ - 12)),_loc2_ + 4);
         _loc8_ = _loc3_ - 8;
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         F_flascc_uiThreadAttrInit();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         _loc7_ = _loc3_ - 16;
         si32(_loc7_,_loc2_ + 12);
         si32(_uiThreadInitThreadProc,_loc2_ + 8);
         si32(_loc8_,_loc2_ + 4);
         si32(int(_loc3_ - 4),_loc2_);
         ESP = _loc2_;
         F_pthread_create();
         _loc6_ = workerClass.current.getSharedProperty("flascc.uiThread.tcbpp");
         _loc2_ = int(_loc2_ + 16);
         if(int(eax) == 0)
         {
            if(li32(_loc3_ - 16) == 0)
            {
               do
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(1,_loc2_ + 4);
                  si32(_loc7_,_loc2_);
                  ESP = _loc2_;
                  F_avm2_self_msleep();
                  _loc2_ = int(_loc2_ + 16);
                  _loc1_ = li32(_loc3_ - 16);
               }
               while(_loc1_ == 0);
               
            }
            _loc1_ = li32(_loc3_ - 16);
            _loc2_ = int(_loc2_ - 16);
            si32(0,_loc2_ + 8);
            si32(_thrTCB,_loc2_ + 4);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F_avm2_thr_impersonate();
            _loc2_ = int(_loc2_ + 16);
            _loc1_ = int(eax);
            si32(_loc1_,_loc6_);
         }
         else
         {
            si32(-1,_loc6_);
         }
         _loc1_ = li8(_sIsThreaded_2E_b);
         if(_loc1_ == 1)
         {
            threadArbMutexLock();
            _loc9_ = 0;
            if(li8(_sIsThreaded_2E_b) == 1)
            {
               ESP = _loc2_;
               F__sync_synchronize();
               threadArbCondsNotify(-1);
               _loc9_ = li8(_sIsThreaded_2E_b);
            }
         }
         _loc1_ = li32(_loc6_);
         if(_loc1_ != 0)
         {
            while(true)
            {
               _loc5_ = 0;
               if(_loc9_ != 0)
               {
                  ESP = _loc2_;
                  F__sync_synchronize();
                  int(threadArbCondWait(1));
                  ESP = _loc2_;
                  F__sync_synchronize();
                  _loc5_ = li8(_sIsThreaded_2E_b);
               }
               _loc1_ = li32(_loc6_);
               _loc9_ = _loc5_;
               if(_loc1_ != 0)
               {
                  continue;
               }
               break;
            }
         }
         _loc1_ = _loc9_ & 1;
         if(_loc1_ != 0)
         {
            threadArbMutexUnlock();
         }
         _loc2_ = int(_loc2_ - 16);
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         F_flascc_uiThreadAttrDestroy();
         _loc2_ = int(_loc2_ + 16);
      }
      ESP = _loc2_ & -16;
      CModule.runCtors();
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
