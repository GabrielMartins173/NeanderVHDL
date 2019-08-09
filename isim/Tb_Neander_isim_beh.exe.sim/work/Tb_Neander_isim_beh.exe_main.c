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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *VL_P_2533777724;
char *IEEE_P_3499444699;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3620187407;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000004134447467_2073120511_init();
    xilinxcorelib_ver_m_00000000001358910285_0042462556_init();
    xilinxcorelib_ver_m_00000000001687936702_3055161089_init();
    xilinxcorelib_ver_m_00000000000277421008_1253011942_init();
    xilinxcorelib_ver_m_00000000001603977570_1595715199_init();
    work_m_00000000000403262735_0468470186_init();
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    vl_p_2533777724_init();
    work_a_2252756781_3212880686_init();
    work_a_1991350011_3212880686_init();
    work_a_1204324589_3212880686_init();
    work_a_3739483802_3212880686_init();
    work_a_0041652292_3212880686_init();
    work_a_3202186285_3212880686_init();
    work_a_3882536024_3212880686_init();
    work_a_2263464102_3212880686_init();
    work_a_1337316234_3212880686_init();
    work_a_3735238183_3212880686_init();
    work_a_0319183883_3212880686_init();
    work_a_0438254740_3212880686_init();
    work_a_0056059633_2372691052_init();


    xsi_register_tops("work_a_0056059633_2372691052");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    VL_P_2533777724 = xsi_get_engine_memory("vl_p_2533777724");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");

    return xsi_run_simulation(argc, argv);

}
