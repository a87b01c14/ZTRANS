*----------------------------------------------------------------------*
* Report            : ZTRANS
* Module/####Ŭ#### : #### / TEMP
* T_CODE            :
* Description       : ABAP Text Translation
*----------------------------------------------------------------------*
*  #######  | ##### | ####
*----------------------------------------------------------------------*
* 2013.11.08 | ###### | Initial Release
*----------------------------------------------------------------------*

REPORT  ztrans MESSAGE-ID zsc001.

INCLUDE ztrans_top.
INCLUDE ztrans_cls.
INCLUDE ztrans_m01.
INCLUDE ztrans_f01.

*----------------------------------------------------------------------*
* INITIALIZATION                                                       *
*----------------------------------------------------------------------*
INITIALIZATION.
  PERFORM initialization.

*----------------------------------------------------------------------*
* AT SELECTION-SCREEN
*----------------------------------------------------------------------*
AT SELECTION-SCREEN.
  PERFORM at_sel_scr.


*----------------------------------------------------------------------*
* START-OF-SELECTION
*----------------------------------------------------------------------*
START-OF-SELECTION.

  IF g_error = 'X'. EXIT. ENDIF.

* ISO #### #ڵ### ##ȯ
  PERFORM lxe_t002_check_language.

*  IF PM_EXCEL = 'X'.
*    PERFORM UPLOAD_EXCEL.
*  ELSE.
  PERFORM select_objlist.
  PERFORM read_text.
*  ENDIF.

  PERFORM modi_gt_m.


  CALL SCREEN 0100.
