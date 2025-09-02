FUNCTION ZMARA_FROM_FIORI_GET.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(IV_MATNR) TYPE  MATNR OPTIONAL
*"  EXPORTING
*"     VALUE(ET_ZMARA_FROM_FIORI) TYPE  ZMARA_FROM_FIORI
*"----------------------------------------------------------------------

  IF IV_MATNR IS NOT INITIAL.
    SELECT * FROM ZMARA_FROM_FIORI INTO ET_ZMARA_FROM_FIORI WHERE MATNR = IV_MATNR. ENDSELECT.
  ELSE.
    SELECT * FROM ZMARA_FROM_FIORI INTO ET_ZMARA_FROM_FIORI. ENDSELECT.
  ENDIF.

ENDFUNCTION.
