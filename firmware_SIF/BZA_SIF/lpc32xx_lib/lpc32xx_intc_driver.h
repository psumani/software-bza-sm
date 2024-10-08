/***********************************************************************
 * $Id:: lpc32xx_intc_driver.h 8090 2011-09-14 13:57:49Z ing03005      $
 *
 * Project: LPC32xx interrupt driver
 *
 * Description:
 *     This file contains driver support for the LPC32xx interrupt
 *     driver.
 *
 ***********************************************************************
 * Software that is described herein is for illustrative purposes only
 * which provides customers with programming information regarding the
 * products. This software is supplied "AS IS" without any warranties.
 * NXP Semiconductors assumes no responsibility or liability for the
 * use of the software, conveys no license or title under any patent,
 * copyright, or mask work right to the product. NXP Semiconductors
 * reserves the right to make changes in the software without
 * notification. NXP Semiconductors also make no representation or
 * warranty that such application will be suitable for the specified
 * use without further testing or modification.
 *********************************************************************/

#ifndef LPC32XX_INTC_DRIVER_H
#define LPC32XX_INTC_DRIVER_H

#include "lpc32xx_intc.h"

/* Optimization to remove unwanted functions during
 * linking using Keil tool-chain.  */
#ifndef FUNC_SECTION
# ifdef __ARMCC_VERSION
# define FUNC_SECTION(x) __attribute__ ((section (x)))
#else
# define FUNC_SECTION(x)
# endif
#endif

#ifdef __cplusplus
extern "C"
{
#endif


/* ARM exception vector enumerations */
typedef enum
{
  RESET_VEC,
  UNDEFINED_INST_VEC,
  SWI_VEC,
  PREFETCH_ABORT_VEC,
  DATA_ABORT_VEC,
  IRQ_VEC,
  FIQ_VEC
} VECTOR_T;

/* External interrupt type enumerations */
typedef enum
{
  ACTIVE_LOW,
  ACTIVE_HIGH,
  FALLING_EDGE,
  RISING_EDGE
} INTERRUPT_TYPE_T;

/***********************************************************************
 * Interrupt driver functions
 **********************************************************************/

/* Initialize the interrupt controller */
void int_initialize(UNS_32 vectbladdr) FUNC_SECTION(".intinit");

/* Install an new ARM exception vector handler */
void int_install_arm_vec_handler(VECTOR_T handler_id,
                                 PFV handler_ptr) FUNC_SECTION(".intinsvec");

/* Install an IRQ interrupt function for an internal interrupt */
BOOL_32 int_install_irq_handler(INTERRUPT_SOURCE_T source,
                                PFV func_ptr) FUNC_SECTION(".intirqhan");

/* Install an IRQ interrupt function for an external interrupt */
BOOL_32 int_install_ext_irq_handler(INTERRUPT_SOURCE_T source,
                                    PFV func_ptr,
                                    INTERRUPT_TYPE_T type,
                                    int high) FUNC_SECTION(".inteirqhan");
/* Enable an interrupt */
void int_enable(INTERRUPT_SOURCE_T source) FUNC_SECTION(".inten");

/* Disable an interrupt */
void int_disable(INTERRUPT_SOURCE_T source) FUNC_SECTION(".intdis");

/* Check to see if a unmasked interrupt is pending */
BOOL_32 int_pending(INTERRUPT_SOURCE_T source) FUNC_SECTION(".intpend");

/* Check to see if a raw interrupt is pending */
BOOL_32 int_raw_pending(INTERRUPT_SOURCE_T source) FUNC_SECTION(".intrpend");

/* Check to see if an interrupt is enabled */
BOOL_32 int_enabled(INTERRUPT_SOURCE_T source) FUNC_SECTION(".intsten");

/* Clear a pending (latched) interrupt */
BOOL_32 int_clear(INTERRUPT_SOURCE_T source) FUNC_SECTION(".intclr");

/* Setup an interrupt as an IRQ (FALSE) or and FIQ (TRUE) */
BOOL_32 int_setup_irq_fiq(INTERRUPT_SOURCE_T source,
                          BOOL_32 use_fiq) FUNC_SECTION(".intsetirq");

#ifdef __cplusplus
}
#endif

#endif /* LPC32XX_INTC_DRIVER_H */
