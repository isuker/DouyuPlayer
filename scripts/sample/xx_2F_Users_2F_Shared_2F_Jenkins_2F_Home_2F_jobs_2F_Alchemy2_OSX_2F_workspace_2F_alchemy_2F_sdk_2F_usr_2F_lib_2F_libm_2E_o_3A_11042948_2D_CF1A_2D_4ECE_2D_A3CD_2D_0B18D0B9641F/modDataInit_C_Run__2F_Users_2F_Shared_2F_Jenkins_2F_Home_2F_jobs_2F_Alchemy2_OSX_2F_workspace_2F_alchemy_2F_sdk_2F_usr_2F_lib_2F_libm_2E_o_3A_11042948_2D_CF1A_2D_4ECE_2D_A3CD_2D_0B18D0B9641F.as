package sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F
{
   import sample.xx.ram;
   
   function modDataInit_C_Run__2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F(param1:Object) : void
   {
      var _loc6_:int = param1[".bss"][0];
      ram.position = _loc6_;
      ram.writeBytes(new DS0());
      var _loc5_:int = param1[".data"][0];
      ram.position = _loc5_;
      ram.writeBytes(new DS1());
      var _loc4_:int = param1[".rodata"][0];
      ram.position = _loc4_;
      ram.writeBytes(new DS2());
      var _loc2_:int = param1[".rodata.cst8"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS3());
      var _loc3_:int = param1[".rodata.cst16"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS4());
   }
}