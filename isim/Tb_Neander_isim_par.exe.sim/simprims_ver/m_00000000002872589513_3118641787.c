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
    char *t10;

LAB0:    t1 = (t0 + 2664U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1344U);
    t3 = *((char **)t2);
    t2 = (t0 + 1504U);
    t4 = *((char **)t2);
    t2 = (t0 + 3064);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    xsi_vlog_XorGate(t8, 2, t3, t4);
    t9 = (t0 + 3064);
    xsi_driver_vfirst_trans(t9, 0, 0);
    t10 = (t0 + 2984);
    *((int *)t10) = 1;

LAB1:    return;
}


extern void simprims_ver_m_00000000002872589513_3118641787_4154103205_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_4154103205", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_4154103205.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_0909904551_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_0909904551", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_0909904551.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_0705448992_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_0705448992", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_0705448992.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_3953840930_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_3953840930", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_3953840930.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_1449181164_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_1449181164", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_1449181164.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_0124893903_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_0124893903", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_0124893903.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_3132872193_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_3132872193", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_3132872193.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_3672597322_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_3672597322", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_3672597322.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_1731006340_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_1731006340", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_1731006340.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_4259889577_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_4259889577", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_4259889577.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_0349770423_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_0349770423", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_0349770423.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_2407292632_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_2407292632", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_2407292632.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_1716358598_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_1716358598", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_1716358598.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_0722713012_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_0722713012", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_0722713012.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_4135936049_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_4135936049", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_4135936049.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_1263471871_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_1263471871", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_1263471871.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_2348181097_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_2348181097", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_2348181097.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_2530858362_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_2530858362", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_2530858362.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_1816123850_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_1816123850", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_1816123850.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_0586700387_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_0586700387", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_0586700387.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_2670869165_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_2670869165", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_2670869165.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_4285435878_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_4285435878", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_4285435878.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_1118102312_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_1118102312", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_1118102312.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_2980642895_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_2980642895", "isim/Tb_Neander_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_2980642895.didat");
	xsi_register_executes(pe);
}
