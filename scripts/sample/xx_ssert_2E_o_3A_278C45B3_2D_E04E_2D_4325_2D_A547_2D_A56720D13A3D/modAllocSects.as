package sample.xx_ssert_2E_o_3A_278C45B3_2D_E04E_2D_4325_2D_A547_2D_A56720D13A3D
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",104,16),104],
         ".text":[CModule.allocTextSect(modPkgName,".text",161),161]
      };
   }
}
