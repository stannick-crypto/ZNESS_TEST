*&---------------------------------------------------------------------*
*& Report ZAHOJ
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZAHOJ.

DATA gv_text TYPE zchar_test.
DATA gs_zchar TYPE zchar_test_t.
DATA gt_zchar TYPE STANDARD TABLE OF zchar_test_t.

START-OF-SELECTION.

SELECT  * FROM zchar_test_t INTO TABLE gt_zchar.
  If sy-subrc = 0.
    READ TABLE gt_zchar INTO gs_zchar INDEX 1.
    MOVE gs_zchar-text TO gv_text.
  ELSE.
    gv_text = text-t01.
  ENDIF.

WRITE gv_text.
