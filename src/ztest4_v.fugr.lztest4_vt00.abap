*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZTEST4..........................................*
DATA:  BEGIN OF STATUS_ZTEST4                        .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZTEST4                        .
CONTROLS: TCTRL_ZTEST4
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZTEST4                        .
TABLES: ZTEST4                         .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
