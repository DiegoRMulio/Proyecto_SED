/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xc3576ebc */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Diego/Documents/GitHub/Proyecto_SED/codificador.vhd";



static void work_a_0598484678_3990940387_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(15, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3240);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(16, ng0);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t6 = (0 - 3);
    t7 = (t6 * -1);
    t8 = (1U * t7);
    t9 = (0 + t8);
    t1 = (t5 + t9);
    t10 = *((unsigned char *)t1);
    t11 = (t10 == (unsigned char)3);
    if (t11 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t6 = (1 - 3);
    t7 = (t6 * -1);
    t8 = (1U * t7);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB8;

LAB9:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t6 = (2 - 3);
    t7 = (t6 * -1);
    t8 = (1U * t7);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB10;

LAB11:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t6 = (3 - 3);
    t7 = (t6 * -1);
    t8 = (1U * t7);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB12;

LAB13:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(16, ng0);
    t12 = (t0 + 5263);
    t14 = (t0 + 3336);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t12, 2U);
    xsi_driver_first_trans_fast(t14);
    goto LAB6;

LAB8:    xsi_set_current_line(17, ng0);
    t5 = (t0 + 5265);
    t13 = (t0 + 3336);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t5, 2U);
    xsi_driver_first_trans_fast(t13);
    goto LAB6;

LAB10:    xsi_set_current_line(18, ng0);
    t5 = (t0 + 5267);
    t13 = (t0 + 3336);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t5, 2U);
    xsi_driver_first_trans_fast(t13);
    goto LAB6;

LAB12:    xsi_set_current_line(19, ng0);
    t5 = (t0 + 5269);
    t13 = (t0 + 3336);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t5, 2U);
    xsi_driver_first_trans_fast(t13);
    goto LAB6;

}

static void work_a_0598484678_3990940387_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(24, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 3400);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3256);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0598484678_3990940387_init()
{
	static char *pe[] = {(void *)work_a_0598484678_3990940387_p_0,(void *)work_a_0598484678_3990940387_p_1};
	xsi_register_didat("work_a_0598484678_3990940387", "isim/tb_Ascensor_isim_beh.exe.sim/work/a_0598484678_3990940387.didat");
	xsi_register_executes(pe);
}
