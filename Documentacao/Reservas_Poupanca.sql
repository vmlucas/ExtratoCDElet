SELECT SAL.NRISC as NUMELETROS, etd.nm_etd as NOME, SAL.CDPAT as PATROCINADORA, 
          SAL.OPCMIG as OPCAO_MIGRACAO, SAL.DTMIGCAD as DATA_MIGRACAO, SAL.VRRESPOUP as RESERVA_POUPANCA
       From PTI_CAD PTI, SALDOSMIGCD SAL, ETD_ELET ETD  
       where SAL.NRISC = '00'||PTI.nu_pti_icr 
           and pti.cd_etd_idt = etd.cd_etd_idt
           and SAL.OPCMIG in (1,2,3) 
       order by SAL.NRISC;