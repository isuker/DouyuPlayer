package sample.xx_copy_2E_o_3A_7E6B78A6_2D_352C_2D_48B7_2D_828B_2D_1704E415A668
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {".text":[CModule.allocTextSect(modPkgName,".text",128),128]};
   }
}
