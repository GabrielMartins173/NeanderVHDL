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



static void NetDecl_36_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 3208U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 5440);
    t3 = *((char **)t2);
    t4 = ((((char*)(t3))) + 40U);
    t5 = *((char **)t4);
    t4 = (t0 + 3872);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t5 + 4);
    t13 = *((unsigned int *)t5);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t4, 0, 0U);
    t18 = (t0 + 3776);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Gate_38_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 3456U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1888U);
    t3 = *((char **)t2);
    t2 = (t0 + 2048U);
    t4 = *((char **)t2);
    t2 = (t0 + 3936);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    xsi_vlog_bufIf0Gate(t8, t3, t4);
    t9 = (t0 + 3936);
    xsi_driver_vfirst_trans_bufif(t9, 0, 0);
    t10 = (t0 + 3792);
    *((int *)t10) = 1;

LAB1:    return;
}


extern void simprims_ver_m_00000000001867363923_1692233196_2145020544_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_2145020544", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_2145020544.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_0354261571_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_0354261571", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_0354261571.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_3028728101_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_3028728101", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_3028728101.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_1865857453_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_1865857453", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_1865857453.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_3893966075_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_3893966075", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_3893966075.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_3018650085_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_3018650085", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_3018650085.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_4171868292_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_4171868292", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_4171868292.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_2391595093_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_2391595093", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_2391595093.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001867363923_1692233196_1733935451_init()
{
	static char *pe[] = {(void *)NetDecl_36_0,(void *)Gate_38_1};
	xsi_register_didat("simprims_ver_m_00000000001867363923_1692233196_1733935451", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000001867363923_1692233196_1733935451.didat");
	xsi_register_executes(pe);
}