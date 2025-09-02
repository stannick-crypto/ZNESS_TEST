FUNCTION ZTEST_RFC_FIORI.
*"----------------------------------------------------------------------
*"*"Lokální rozhraní:
*"  CHANGING
*"     VALUE(TBL_MARA) TYPE  ZMARA
*"----------------------------------------------------------------------

*SELECT MATNR MTART
*FROM MARA
*INTO CORRESPONDING FIELDS OF TABLE TBL_MARA
*UP TO 10 ROWS.
*ENDSELECT.

SELECT * from mara INTO CORRESPONDING FIELDS OF TABLE tbl_mara UP TO 10 rows.

IF SY-SUBRC = 0.
*VALUE FOUND
ENDIF.

ENDFUNCTION.
