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
static const char *ng0 = "C:/Users/Diego/Documents/GitHub/Proyecto_SED/ModuloDisplay.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_2749801919_3212880686_p_0(char *t0)
{
    char t11[16];
    char t28[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(24, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3472);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(25, ng0);
    t4 = (t0 + 1832U);
    t8 = *((char **)t4);
    t4 = (t0 + 5888U);
    t9 = (t0 + 5960);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 12;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t14 = (12 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t16 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t8, t4, t9, t11);
    if (t16 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t2 = (t0 + 3680);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 4U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 5888U);
    t5 = (t0 + 5987);
    t9 = (t28 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 12;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t14 = (12 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t15;
    t10 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t11, t4, t2, t5, t28);
    t12 = (t11 + 12U);
    t15 = *((unsigned int *)t12);
    t19 = (1U * t15);
    t1 = (13U != t19);
    if (t1 == 1)
        goto LAB20;

LAB21:    t13 = (t0 + 3744);
    t17 = (t13 + 56U);
    t23 = *((char **)t17);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t10, 13U);
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 5888U);
    t5 = (t0 + 6000);
    t9 = (t11 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 12;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t14 = (12 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t15;
    t1 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t4, t2, t5, t11);
    if (t1 != 0)
        goto LAB22;

LAB24:
LAB23:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(26, ng0);
    t13 = (t0 + 1992U);
    t17 = *((char **)t13);
    t18 = (0 - 3);
    t15 = (t18 * -1);
    t19 = (1U * t15);
    t20 = (0 + t19);
    t13 = (t17 + t20);
    t21 = *((unsigned char *)t13);
    t22 = (t21 == (unsigned char)2);
    if (t22 != 0)
        goto LAB11;

LAB13:    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t14 = (1 - 3);
    t15 = (t14 * -1);
    t19 = (1U * t15);
    t20 = (0 + t19);
    t2 = (t4 + t20);
    t1 = *((unsigned char *)t2);
    t3 = (t1 == (unsigned char)2);
    if (t3 != 0)
        goto LAB14;

LAB15:    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t14 = (2 - 3);
    t15 = (t14 * -1);
    t19 = (1U * t15);
    t20 = (0 + t19);
    t2 = (t4 + t20);
    t1 = *((unsigned char *)t2);
    t3 = (t1 == (unsigned char)2);
    if (t3 != 0)
        goto LAB16;

LAB17:    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t14 = (3 - 3);
    t15 = (t14 * -1);
    t19 = (1U * t15);
    t20 = (0 + t19);
    t2 = (t4 + t20);
    t1 = *((unsigned char *)t2);
    t3 = (t1 == (unsigned char)2);
    if (t3 != 0)
        goto LAB18;

LAB19:
LAB12:    goto LAB9;

LAB11:    xsi_set_current_line(27, ng0);
    t23 = (t0 + 3552);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    *((unsigned char *)t27) = (unsigned char)3;
    xsi_driver_first_trans_delta(t23, 3U, 1, 0LL);
    xsi_set_current_line(28, ng0);
    t2 = (t0 + 5973);
    t5 = (t0 + 3616);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(29, ng0);
    t2 = (t0 + 3552);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 2U, 1, 0LL);
    goto LAB12;

LAB14:    xsi_set_current_line(31, ng0);
    t5 = (t0 + 3552);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t5, 2U, 1, 0LL);
    xsi_set_current_line(32, ng0);
    t2 = (t0 + 5980);
    t5 = (t0 + 3616);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(33, ng0);
    t2 = (t0 + 3552);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 1U, 1, 0LL);
    goto LAB12;

LAB16:    xsi_set_current_line(35, ng0);
    t5 = (t0 + 3552);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t5, 1U, 1, 0LL);
    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 3616);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 7U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 3552);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    goto LAB12;

LAB18:    xsi_set_current_line(39, ng0);
    t5 = (t0 + 3552);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t5, 0U, 1, 0LL);
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 3616);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 7U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 3552);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 3U, 1, 0LL);
    goto LAB12;

LAB20:    xsi_size_not_matching(13U, t19, 0);
    goto LAB21;

LAB22:    xsi_set_current_line(47, ng0);
    t10 = (t0 + 6013);
    t13 = (t0 + 3744);
    t17 = (t13 + 56U);
    t23 = *((char **)t17);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t10, 13U);
    xsi_driver_first_trans_fast(t13);
    goto LAB23;

}


extern void work_a_2749801919_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2749801919_3212880686_p_0};
	xsi_register_didat("work_a_2749801919_3212880686", "isim/tb_Ascensor_isim_beh.exe.sim/work/a_2749801919_3212880686.didat");
	xsi_register_executes(pe);
}
