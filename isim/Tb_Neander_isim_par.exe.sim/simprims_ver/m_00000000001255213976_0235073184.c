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



static void Gate_29_0(char *t0)
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

LAB0:    t1 = (t0 + 2504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1344U);
    t3 = *((char **)t2);
    t2 = (t0 + 2904);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    xsi_vlog_notGate(t7, t3);
    t8 = (t0 + 2904);
    xsi_driver_vfirst_trans(t8, 0, 0);
    t9 = (t0 + 2824);
    *((int *)t9) = 1;

LAB1:    return;
}


extern void simprims_ver_m_00000000001255213976_0235073184_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_0235073184", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000001255213976_0235073184.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2752194091_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2752194091", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2752194091.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_1419771593_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_1419771593", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000001255213976_1419771593.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2734853879_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2734853879", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2734853879.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_3930542926_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_3930542926", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000001255213976_3930542926.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2563409328_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2563409328", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2563409328.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_1461398183_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_1461398183", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000001255213976_1461398183.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_0264275095_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_0264275095", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000001255213976_0264275095.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2534611871_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2534611871", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2534611871.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_3253789404_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_3253789404", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000001255213976_3253789404.didat");
	xsi_register_executes(pe);
}
