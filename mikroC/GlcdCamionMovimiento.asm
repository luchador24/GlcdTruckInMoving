
_main:

;GlcdCamionMovimiento.c,17 :: 		void main() {
;GlcdCamionMovimiento.c,18 :: 		ANSEL=0;
	CLRF       ANSEL+0
;GlcdCamionMovimiento.c,19 :: 		ANSELH=0;
	CLRF       ANSELH+0
;GlcdCamionMovimiento.c,20 :: 		TRISB=0;
	CLRF       TRISB+0
;GlcdCamionMovimiento.c,21 :: 		TRISD=0;
	CLRF       TRISD+0
;GlcdCamionMovimiento.c,22 :: 		Glcd_Init();
	CALL       _Glcd_Init+0
;GlcdCamionMovimiento.c,23 :: 		Glcd_Fill(0);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;GlcdCamionMovimiento.c,25 :: 		for(i=0; i<=115; i++){
	CLRF       _i+0
	CLRF       _i+1
L_main0:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main4
	MOVF       _i+0, 0
	SUBLW      115
L__main4:
	BTFSS      STATUS+0, 0
	GOTO       L_main1
;GlcdCamionMovimiento.c,26 :: 		Glcd_Rectangle(i+15,40,i+75,5,1);
	MOVLW      15
	ADDWF      _i+0, 0
	MOVWF      FARG_Glcd_Rectangle_x_upper_left+0
	MOVLW      40
	MOVWF      FARG_Glcd_Rectangle_y_upper_left+0
	MOVLW      75
	ADDWF      _i+0, 0
	MOVWF      FARG_Glcd_Rectangle_x_bottom_right+0
	MOVLW      5
	MOVWF      FARG_Glcd_Rectangle_y_bottom_right+0
	MOVLW      1
	MOVWF      FARG_Glcd_Rectangle_color+0
	CALL       _Glcd_Rectangle+0
;GlcdCamionMovimiento.c,27 :: 		Glcd_Rectangle(i+76,40,i+115,20,1);
	MOVLW      76
	ADDWF      _i+0, 0
	MOVWF      FARG_Glcd_Rectangle_x_upper_left+0
	MOVLW      40
	MOVWF      FARG_Glcd_Rectangle_y_upper_left+0
	MOVLW      115
	ADDWF      _i+0, 0
	MOVWF      FARG_Glcd_Rectangle_x_bottom_right+0
	MOVLW      20
	MOVWF      FARG_Glcd_Rectangle_y_bottom_right+0
	MOVLW      1
	MOVWF      FARG_Glcd_Rectangle_color+0
	CALL       _Glcd_Rectangle+0
;GlcdCamionMovimiento.c,28 :: 		Glcd_Rectangle(i+86,30,i+105,20,1);
	MOVLW      86
	ADDWF      _i+0, 0
	MOVWF      FARG_Glcd_Rectangle_x_upper_left+0
	MOVLW      30
	MOVWF      FARG_Glcd_Rectangle_y_upper_left+0
	MOVLW      105
	ADDWF      _i+0, 0
	MOVWF      FARG_Glcd_Rectangle_x_bottom_right+0
	MOVLW      20
	MOVWF      FARG_Glcd_Rectangle_y_bottom_right+0
	MOVLW      1
	MOVWF      FARG_Glcd_Rectangle_color+0
	CALL       _Glcd_Rectangle+0
;GlcdCamionMovimiento.c,29 :: 		Glcd_Circle(i+30,50,10,1);
	MOVLW      30
	ADDWF      _i+0, 0
	MOVWF      FARG_Glcd_Circle_x_center+0
	MOVF       _i+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      FARG_Glcd_Circle_x_center+1
	MOVLW      50
	MOVWF      FARG_Glcd_Circle_y_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_y_center+1
	MOVLW      10
	MOVWF      FARG_Glcd_Circle_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_radius+1
	MOVLW      1
	MOVWF      FARG_Glcd_Circle_color+0
	CALL       _Glcd_Circle+0
;GlcdCamionMovimiento.c,30 :: 		Glcd_Circle(i+60,50,10,1);
	MOVLW      60
	ADDWF      _i+0, 0
	MOVWF      FARG_Glcd_Circle_x_center+0
	MOVF       _i+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      FARG_Glcd_Circle_x_center+1
	MOVLW      50
	MOVWF      FARG_Glcd_Circle_y_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_y_center+1
	MOVLW      10
	MOVWF      FARG_Glcd_Circle_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_radius+1
	MOVLW      1
	MOVWF      FARG_Glcd_Circle_color+0
	CALL       _Glcd_Circle+0
;GlcdCamionMovimiento.c,31 :: 		Glcd_Circle(i+100,50,10,1);
	MOVLW      100
	ADDWF      _i+0, 0
	MOVWF      FARG_Glcd_Circle_x_center+0
	MOVF       _i+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      FARG_Glcd_Circle_x_center+1
	MOVLW      50
	MOVWF      FARG_Glcd_Circle_y_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_y_center+1
	MOVLW      10
	MOVWF      FARG_Glcd_Circle_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_radius+1
	MOVLW      1
	MOVWF      FARG_Glcd_Circle_color+0
	CALL       _Glcd_Circle+0
;GlcdCamionMovimiento.c,32 :: 		Glcd_V_Line(30,40,i+96,1);
	MOVLW      30
	MOVWF      FARG_Glcd_V_Line_y_start+0
	MOVLW      40
	MOVWF      FARG_Glcd_V_Line_y_end+0
	MOVLW      96
	ADDWF      _i+0, 0
	MOVWF      FARG_Glcd_V_Line_x_pos+0
	MOVLW      1
	MOVWF      FARG_Glcd_V_Line_color+0
	CALL       _Glcd_V_Line+0
;GlcdCamionMovimiento.c,33 :: 		Glcd_Dot(i+95,25,1);
	MOVLW      95
	ADDWF      _i+0, 0
	MOVWF      FARG_Glcd_Dot_x_pos+0
	MOVLW      25
	MOVWF      FARG_Glcd_Dot_y_pos+0
	MOVLW      1
	MOVWF      FARG_Glcd_Dot_color+0
	CALL       _Glcd_Dot+0
;GlcdCamionMovimiento.c,35 :: 		Glcd_Dot(i+60,50,1);
	MOVLW      60
	ADDWF      _i+0, 0
	MOVWF      FARG_Glcd_Dot_x_pos+0
	MOVLW      50
	MOVWF      FARG_Glcd_Dot_y_pos+0
	MOVLW      1
	MOVWF      FARG_Glcd_Dot_color+0
	CALL       _Glcd_Dot+0
;GlcdCamionMovimiento.c,36 :: 		Glcd_Dot(i+30,50,1);
	MOVLW      30
	ADDWF      _i+0, 0
	MOVWF      FARG_Glcd_Dot_x_pos+0
	MOVLW      50
	MOVWF      FARG_Glcd_Dot_y_pos+0
	MOVLW      1
	MOVWF      FARG_Glcd_Dot_color+0
	CALL       _Glcd_Dot+0
;GlcdCamionMovimiento.c,37 :: 		Glcd_Dot(i+100,50,1);
	MOVLW      100
	ADDWF      _i+0, 0
	MOVWF      FARG_Glcd_Dot_x_pos+0
	MOVLW      50
	MOVWF      FARG_Glcd_Dot_y_pos+0
	MOVLW      1
	MOVWF      FARG_Glcd_Dot_color+0
	CALL       _Glcd_Dot+0
;GlcdCamionMovimiento.c,39 :: 		Glcd_Write_Text("UMG",i+34,3,1);
	MOVLW      ?lstr1_GlcdCamionMovimiento+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      34
	ADDWF      _i+0, 0
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;GlcdCamionMovimiento.c,40 :: 		Glcd_Fill(0);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;GlcdCamionMovimiento.c,25 :: 		for(i=0; i<=115; i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;GlcdCamionMovimiento.c,41 :: 		}
	GOTO       L_main0
L_main1:
;GlcdCamionMovimiento.c,43 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
