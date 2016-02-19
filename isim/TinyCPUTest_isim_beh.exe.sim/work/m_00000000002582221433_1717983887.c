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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Muhsin/Desktop/140L/TinyCPU/TinyCPU/Mux8x1.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {2, 0};
static int ng4[] = {3, 0};
static int ng5[] = {4, 0};
static int ng6[] = {5, 0};
static int ng7[] = {6, 0};
static int ng8[] = {7, 0};



static void Always_36_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;

LAB0:    t1 = (t0 + 3968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 4288);
    *((int *)t2) = 1;
    t3 = (t0 + 4000);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);

LAB5:    xsi_set_current_line(38, ng0);
    t5 = (t0 + 2328U);
    t6 = *((char **)t5);
    t5 = (t0 + 2488U);
    t7 = *((char **)t5);
    t5 = (t0 + 2648U);
    t8 = *((char **)t5);
    xsi_vlogtype_concat(t4, 32, 3, 3U, t8, 1, t7, 1, t6, 1);

LAB6:    t5 = ((char*)((ng1)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 32, t5, 32);
    if (t9 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t9 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t9 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t9 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t9 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t9 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t9 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng8)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t9 == 1)
        goto LAB21;

LAB22:
LAB23:    goto LAB2;

LAB7:    xsi_set_current_line(40, ng0);
    t10 = (t0 + 1048U);
    t11 = *((char **)t10);
    t10 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t10, t11, 0, 0, 8, 0LL);
    goto LAB23;

LAB9:    xsi_set_current_line(41, ng0);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t5, 0, 0, 8, 0LL);
    goto LAB23;

LAB11:    xsi_set_current_line(42, ng0);
    t3 = (t0 + 1368U);
    t5 = *((char **)t3);
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t5, 0, 0, 8, 0LL);
    goto LAB23;

LAB13:    xsi_set_current_line(43, ng0);
    t3 = (t0 + 1528U);
    t5 = *((char **)t3);
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t5, 0, 0, 8, 0LL);
    goto LAB23;

LAB15:    xsi_set_current_line(44, ng0);
    t3 = (t0 + 1688U);
    t5 = *((char **)t3);
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t5, 0, 0, 8, 0LL);
    goto LAB23;

LAB17:    xsi_set_current_line(45, ng0);
    t3 = (t0 + 1848U);
    t5 = *((char **)t3);
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t5, 0, 0, 8, 0LL);
    goto LAB23;

LAB19:    xsi_set_current_line(46, ng0);
    t3 = (t0 + 2008U);
    t5 = *((char **)t3);
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t5, 0, 0, 8, 0LL);
    goto LAB23;

LAB21:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 2168U);
    t5 = *((char **)t3);
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t5, 0, 0, 8, 0LL);
    goto LAB23;

}


extern void work_m_00000000002582221433_1717983887_init()
{
	static char *pe[] = {(void *)Always_36_0};
	xsi_register_didat("work_m_00000000002582221433_1717983887", "isim/TinyCPUTest_isim_beh.exe.sim/work/m_00000000002582221433_1717983887.didat");
	xsi_register_executes(pe);
}
