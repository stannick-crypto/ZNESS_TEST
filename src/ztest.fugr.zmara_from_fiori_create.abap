FUNCTION ZMARA_FROM_FIORI_CREATE.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(IV_MATNR) TYPE  MATNR
*"  EXPORTING
*"     VALUE(EV_SUCCESS) TYPE  BOOLEAN
*"----------------------------------------------------------------------

  DATA : ls_ZMARA_FROM_FIORI TYPE ZMARA_FROM_FIORI.

  ls_ZMARA_FROM_FIORI-MANDT = SY-MANDT.
  ls_ZMARA_FROM_FIORI-MATNR = IV_MATNR.

  INSERT INTO ZMARA_FROM_FIORI VALUES ls_ZMARA_FROM_FIORI.

  IF SY-SUBRC = 0.
    EV_SUCCESS = 'X'.
  ENDIF.

ENDFUNCTION.
