#line 1 "C:/Users/rherr/Downloads/Ken/septimoSemestre/arquitecturaDeComputadoras/Tareas/GlcdCamionMovimiento/mikroC/GlcdCamionMovimiento.c"
char GLCD_DataPort at PORTD;
 sbit GLCD_CS1 at RB0_bit;
 sbit GLCD_CS2 at RB1_bit;
 sbit GLCD_RS at RB2_bit;
 sbit GLCD_RW at RB3_bit;
 sbit GLCD_EN at RB4_bit;
 sbit GLCD_RST at RB5_bit;
 sbit GLCD_CS1_Direction at TRISB0_bit;
 sbit GLCD_CS2_Direction at TRISB1_bit;
 sbit GLCD_RS_Direction at TRISB2_bit;
 sbit GLCD_RW_Direction at TRISB3_bit;
 sbit GLCD_EN_Direction at TRISB4_bit;
 sbit GLCD_RST_Direction at TRISB5_bit;


int i;
void main() {
ANSEL=0;
ANSELH=0;
TRISB=0;
TRISD=0;
Glcd_Init();
Glcd_Fill(0);

for(i=0; i<=115; i++){
Glcd_Rectangle(i+15,40,i+75,5,1);
Glcd_Rectangle(i+76,40,i+115,20,1);
Glcd_Rectangle(i+86,30,i+105,20,1);
Glcd_Circle(i+30,50,10,1);
Glcd_Circle(i+60,50,10,1);
Glcd_Circle(i+100,50,10,1);
Glcd_V_Line(30,40,i+96,1);
Glcd_Dot(i+95,25,1);

Glcd_Dot(i+60,50,1);
Glcd_Dot(i+30,50,1);
Glcd_Dot(i+100,50,1);

Glcd_Write_Text("UMG",i+34,3,1);
Glcd_Fill(0);
}

}
