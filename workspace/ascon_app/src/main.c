/******************************************************************************
* Copyright (C) 2002 - 2020 Xilinx, Inc.  All rights reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

/*****************************************************************************/
/**
* @file xgpio_example.c
*
* This file contains a design example using the AXI GPIO driver (XGpio) and
* hardware device.  It only uses channel 1 of a GPIO device and assumes that
* the bit 0 of the GPIO is connected to the LED on the HW board.
*
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who  Date     Changes
* ----- ---- -------- -----------------------------------------------
* 1.00a rmm  03/13/02 First release
* 1.00a rpm  08/04/03 Removed second example and invalid macro calls
* 2.00a jhl  12/15/03 Added support for dual channels
* 2.00a sv   04/20/05 Minor changes to comply to Doxygen and coding guidelines
* 3.00a ktn  11/20/09 Minor changes as per coding guidelines.
* 4.1   lks  11/18/15 Updated to use canonical xparameters and
*		      clean up of the comments and code for CR 900381
* 4.3   sk   09/29/16 Modified the example to make it work when LED_bits are
*                     configured as an output. CR# 958644
*       ms   01/23/17 Added xil_printf statement in main function to
*                     ensure that "Successfully ran" and "Failed" strings
*                     are available in all examples. This is a fix for
*                     CR-965028.
* 4.5  sne   06/12/19 Fixed IAR compiler warning.
*
* </pre>
******************************************************************************/

/***************************** Include Files *********************************/

#include "xparameters.h"
#include "xgpio.h"
#include "xil_printf.h"

#include <stdio.h>

#include <xil_io.h>
#include <xgpio_l.h>


/************************** Constant Definitions *****************************/

#define LED 0x01   /* Assumes bit 0 of GPIO is connected to an LED  */

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define GPIO_EXAMPLE_DEVICE_ID  XPAR_AXI_GPIO_NONCE_0_BASEADDR

/*
 * The following constant is used to wait after an LED is turned on to make
 * sure that it is visible to the human eye.  This constant might need to be
 * tuned for faster or slower processor speeds.
 */
#define DELAY     1000000000

/*
 * The following constant is used to determine which channel of the GPIO is
 * used for the LED if there are 2 channels supported.
 */
#define LED_CHANNEL 1


/**************************** Type Definitions *******************************/


/***************** Macros (Inline Functions) Definitions *********************/

#ifdef PRE_2_00A_APPLICATION

/*
 * The following macros are provided to allow an application to compile that
 * uses an older version of the driver (pre 2.00a) which did not have a channel
 * parameter. Note that the channel parameter is fixed as channel 1.
 */
#define XGpio_SetDataDirection(InstancePtr, DirectionMask) \
        XGpio_SetDataDirection(InstancePtr, LED_CHANNEL, DirectionMask)

#define XGpio_DiscreteRead(InstancePtr) \
        XGpio_DiscreteRead(InstancePtr, LED_CHANNEL)

#define XGpio_DiscreteWrite(InstancePtr, Mask) \
        XGpio_DiscreteWrite(InstancePtr, LED_CHANNEL, Mask)

#define XGpio_DiscreteSet(InstancePtr, Mask) \
        XGpio_DiscreteSet(InstancePtr, LED_CHANNEL, Mask)

#endif

/************************** Function Prototypes ******************************/


/************************** Variable Definitions *****************************/

/*
 * The following are declared globally so they are zeroed and so they are
 * easily accessible from a debugger
 */

XGpio Gpio; /* The Instance of the GPIO Driver */

/*****************************************************************************/
/**
*
* The purpose of this function is to illustrate how to use the GPIO
* driver to turn on and off an LED.
*
* @param	None
*
* @return	XST_FAILURE to indicate that the GPIO Initialization had
*		failed.
*
* @note		This function will not return if the test is running.
*
******************************************************************************/
int main(void)
{
    u32 a,b,c,d;
    volatile int Delay;


    Xil_Out32(XPAR_AXI_GPIO_ENABLE_BASEADDR,0x0);

	//plaintext
    Xil_Out32(0x41290000,0x01234567);
    Xil_Out32(0x412A0000,0x89abcdef);
    Xil_Out32(0x412B0000,0x01234567);
    Xil_Out32(0x412C0000,0x89abcdef);

    //key
    Xil_Out32(0x41200000,0x01234567);
    Xil_Out32(0x41210000,0x89abcdef);
    Xil_Out32(0x41220000,0x01234567);
    Xil_Out32(0x41230000,0x89abcdef);

    //nonce
    Xil_Out32(0x41250000,0x01234567);
    Xil_Out32(0x41260000,0x89abcdef);
    Xil_Out32(0x41270000,0x01234567);
    Xil_Out32(0x41280000,0x89abcdef);

    print("Waiting 1\n\r");
    for (Delay = 0; Delay < DELAY; Delay++);

    Xil_Out32(XPAR_AXI_GPIO_ENABLE_BASEADDR,0x1);
    print("Waiting 2\n\r");
    for (Delay = 0; Delay < DELAY; Delay++);
    //for (Delay = 0; Delay < DELAY; Delay++);
        a = Xil_In32(0x412D0000);
        b = Xil_In32(0x412E0000);
        c = Xil_In32(0x412F0000);
        d = Xil_In32(0x41300000);

        printf("%X%X%X%X\n\r",a,b,c,d);
        print("OK\n\r");


        return 0;


}
