#include <8051.h>
#define TRUE  1
#define FALSE 0
#define T0_DAT 65535-921
#define TL_0 T0_DAT%256
#define TH_0 T0_DAT/256
#define T100 100
#define PROSZE_O_5 222222;

void inc_sec(void);
void dec_sec(void);
void inc_min(void);
void dec_min(void);
void inc_hour(void);
void dec_hour(void);
void keyboard(void);
void enter_edit_mode(void);
void refresh_display(void);
void refresh_display_edit(void);

__bit __at (0x97) LED;
__bit rec_flag;
__bit send_flag;
__bit t0_flag;
__bit __at (0x96) SEG_OFF;
__bit INTERRUPT_FLAG=FALSE;
__bit edit_mode=FALSE;
__xdata unsigned char * led_wyb = (__xdata unsigned char *) 0xFF30;
__xdata unsigned char * led_led = (__xdata unsigned char *) 0xFF38;
unsigned char kbd;
unsigned char kbdBefore;
unsigned char led_p, led_b,temp_b,temp_p;
int T0counter = 0;
__code unsigned char WZOR[20] = { 0b0111111, 0b0000110,0b1011011, 0b1001111, 0b1100110, 0b1101101,0b1111101, 0b0000111, 0b1111111, 0b1101111,
                                  0b10111111, 0b10000110,0b11011011, 0b11001111, 0b11100110, 0b11101101,0b11111101, 0b10000111, 0b11111111, 0b11101111
                                };
unsigned char wyswietlacze[6] = {0,0,0,0,0,0};
void incTime(void) {
    int i;
    if(wyswietlacze[5] == 2 && wyswietlacze[4] == 3 && wyswietlacze[3] == 5 && wyswietlacze[2] == 9 && wyswietlacze[1] == 5 && wyswietlacze[0] == 9) {
        for(i = 0; i < 6; i++) {
            `wyswietlacze[i] = 0;
        }
    }
    else {
        wyswietlacze[0]++;
        if(wyswietlacze[0] >= 10) {
            wyswietlacze[0] = 0;
            wyswietlacze[1]++;
        }
        if(wyswietlacze[1] >= 6) {
            wyswietlacze[2]++;
            wyswietlacze[1] = 0;
        }
        if(wyswietlacze[2] >= 10) {
            wyswietlacze[2] = 0;
            wyswietlacze[3]++;
        }
        if(wyswietlacze[3] >= 6) {
            wyswietlacze[3] = 0;
            wyswietlacze[4]++;
        }
        if(wyswietlacze[4] >= 10) {
            wyswietlacze[4] = 0;
            wyswietlacze[5]++;
        }
    }
}
void timer0_isr(void) __interrupt(1) {
    TH0 = TH_0;
    TL0 = TL_0;
    INTERRUPT_FLAG = TRUE;
}
void init_interrupts(void) {
    EA = TRUE;
    ET0 = TRUE;
    TMOD = 0b00000001;
    TH0 = TH_0;
    TL0 = TL_0;
    TR0 = TRUE;
}
void inc_sec(void) {
    wyswietlacze[0]++;
    if(wyswietlacze[0] == 20) {
        wyswietlacze[0] = 10;
        wyswietlacze[1]++;
        if((wyswietlacze[1]-10)*10 + (wyswietlacze[0]-10) >= 60) {
            wyswietlacze[0] = 10;
            wyswietlacze[1] = 10;
        }
    }
}
void dec_sec(void) {
    if(wyswietlacze[0] == 10) {
        wyswietlacze[0] = 19;
        if(wyswietlacze[1] == 10) {
            wyswietlacze[1] = 15;
        }
        else {
            wyswietlacze[1]--;
        }
    }
    else {
        wyswietlacze[0]--;
    }
}
void inc_min(void) {
    wyswietlacze[2]++;
    if(wyswietlacze[2] == 20) {
        wyswietlacze[2] = 10;
        wyswietlacze[3]++;
        if((wyswietlacze[3]-10)*10 + (wyswietlacze[2]-10) >= 60) {
            wyswietlacze[2] = 10;
            wyswietlacze[3] = 10;
        }
    }
}
void dec_min(void) {
    if(wyswietlacze[2] == 10) {
        wyswietlacze[2] = 19;
        if(wyswietlacze[3] == 10) {
            wyswietlacze[3] = 15;
        }
        else {
            wyswietlacze[3]--;
        }
    }
    else {
        wyswietlacze[2]--;
    }
}
void inc_hour(void) {
    wyswietlacze[4]++;
    if(wyswietlacze[4] == 20) {
        wyswietlacze[4] = 10;
        wyswietlacze[5]++;

    }
    if((wyswietlacze[5]-10)*10 + (wyswietlacze[4]-10) >= 24) {
        wyswietlacze[4] = 10;
        wyswietlacze[5] = 10;
    }

}
void dec_hour(void) {
    if(wyswietlacze[4] == 10) {
        wyswietlacze[4] = 19;
        if(wyswietlacze[5] == 10) {
            wyswietlacze[5] = 12;
            wyswietlacze[4] = 13;
        }
        else {
            wyswietlacze[5]--;
        }
    }
    else {
        wyswietlacze[4]--;
    }
}
void keyboard(void) {
    kbd = kbdBefore;
    if(kbd == 0b00000001) { //enter
        if(edit_mode == 1) {
            edit_mode = 0;
            if(temp_p == 0) {
                wyswietlacze[0] -= 10;
                wyswietlacze[1] -= 10;
            }
            else if(temp_p == 1) {
                wyswietlacze[2] -= 10;
                wyswietlacze[3] -= 10;
            }
            else if(temp_p == 2) {
                wyswietlacze[4] -= 10;
                wyswietlacze[5] -= 10;
            }
            temp_p = 0;
        }
        else if(!edit_mode) {
            enter_edit_mode();
            wyswietlacze[0] += 10;
            wyswietlacze[1] += 10;
            //edit_mode = 1;
        }
    }
    if(edit_mode) {
        if(kbd == 0b00000100) { //strza³ka w prawo
            if(temp_p == 0) {
                temp_p = 2;
                wyswietlacze[0] -= 10;
                wyswietlacze[1] -= 10;
                wyswietlacze[4] += 10;
                wyswietlacze[5] += 10;
            }
            else if(temp_p == 1) {
                temp_p = 0;
                wyswietlacze[2] -= 10;
                wyswietlacze[3] -= 10;
                wyswietlacze[0] += 10;
                wyswietlacze[1] += 10;
            }
            else {
                temp_p = 1;
                wyswietlacze[4] -= 10;
                wyswietlacze[5] -= 10;
                wyswietlacze[2] += 10;
                wyswietlacze[3] += 10;
            }
        }
        if(kbd == 0b00100000) { //strza³ka w lewo
            if(temp_p == 2) {
                temp_p = 0;
                wyswietlacze[5] -= 10;
                wyswietlacze[4] -= 10;
                wyswietlacze[0] += 10;
                wyswietlacze[1] += 10;
            }
            else if(temp_p == 1) {
                temp_p = 2;
                wyswietlacze[2] -= 10;
                wyswietlacze[3] -= 10;
                wyswietlacze[4] += 10;
                wyswietlacze[5] += 10;
            }
            else {
                temp_p = 1;
                wyswietlacze[0] -= 10;
                wyswietlacze[1] -= 10;
                wyswietlacze[2] += 10;
                wyswietlacze[3] += 10;
            }
        }
        if(kbd == 0b00001000) { //strza³ka w górê
            if(edit_mode) {
                if(temp_p == 0) {
                    inc_sec();
                }
                if(temp_p == 1) {
                    inc_min();
                }
                if(temp_p == 2) {
                    inc_hour();
                }
            }
        }
        if(kbd == 0b00010000) { //strza³ka w dó³
            if(edit_mode) {
                if(temp_p == 0) {
                    dec_sec();
                }
                if(temp_p == 1) {
                    dec_min();
                }
                if(temp_p == 2) {
                    dec_hour();
                }
            }
        }
    }
}
void enter_edit_mode(void) {
    if(!edit_mode) {
        edit_mode = 1;
        if(INTERRUPT_FLAG != 1) {
            T0counter = 0;
        }
    }
}
void refresh_display(void) {
        SEG_OFF = TRUE;
        *led_wyb = led_b;
        *led_led = WZOR[wyswietlacze[led_p]];
        temp_b = led_b;
        kbdBefore = temp_b;
        SEG_OFF = FALSE;
        if(led_p == 5) {
	        led_p = 0;
	        led_b = 1;
	    }
	    else{
            led_p++;
            led_b = led_b<<1;
		}
}
void main()
{
    int i,k;
    i = 0;
    k = 0;
    led_p = 0;
    led_b = 1;
    temp_b = 1;
    temp_p = 0;
    edit_mode = 0;
    kbd = 0;
    kbdBefore = 0;
    init_interrupts();
    while(TRUE) {
        if(INTERRUPT_FLAG){
            INTERRUPT_FLAG=FALSE;
            refresh_display();
            if(P3_5 && kbd == 0 ) {
                keyboard();
            }
            else if(!P3_5 && kbd == kbdBefore) {
                kbd = 0;
            }
            if(edit_mode && led_p == 5) {
                enter_edit_mode();
            }
            if(!edit_mode) {
                T0counter++;
                if(T0counter == 1000) { 
                    T0counter = 0;
                    incTime();
                //init_interrupts();
            }
        }
		}
    }

}
