package sample.xx_monetary_2E_o_3A_55CDA4EF_2D_114E_2D_4B0C_2D_BDAE_2D_88C716C45799
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",100,8),100],
         ".data":[CModule.allocDataSect(modPkgName,".data",2,0),2],
         ".data.rel.ro.local":[CModule.allocDataSect(modPkgName,".data.rel.ro.local",84,16),84],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",12,0),12],
         ".text":[CModule.allocTextSect(modPkgName,".text",452),452]
      };
   }
}
