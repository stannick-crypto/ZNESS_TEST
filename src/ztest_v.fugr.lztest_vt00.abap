*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZTEST_V.........................................*
TABLES: ZTEST_V, *ZTEST_V. "view work areas
CONTROLS: TCTRL_ZTEST_V
TYPE TABLEVIEW USING SCREEN '0001'.
DATA: BEGIN OF STATUS_ZTEST_V. "state vector
          INCLUDE STRUCTURE VIMSTATUS.
DATA: END OF STATUS_ZTEST_V.
* Table for entries selected to show on screen
DATA: BEGIN OF ZTEST_V_EXTRACT OCCURS 0010.
INCLUDE STRUCTURE ZTEST_V.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZTEST_V_EXTRACT.
* Table for all entries loaded from database
DATA: BEGIN OF ZTEST_V_TOTAL OCCURS 0010.
INCLUDE STRUCTURE ZTEST_V.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZTEST_V_TOTAL.

*.........table declarations:.................................*
TABLES: ZTEST                          .
