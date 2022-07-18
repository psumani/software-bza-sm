#ifndef SPI_FUNC_H
#define SPI_FUNC_H

#ifdef __cplusplus
extern "C"
{
#endif
	
#include "defines/type.h"
#include "defines/sif_zim_def.h"

#include "lpc32xx_lib/lpc32xx_spi.h"


/***********************************************************************
 * SPI device configuration commands (IOCTL commands and arguments)
 **********************************************************************/

/* Structure for setting up SPI parameters */
typedef struct
{
  /* Number of data bits, must be between 4 and 16 */
  UNS_32 databits;
  /* Flag used to set clock polarity high between frames when in
     SPI mode */
  BOOL_32 highclk_spi_frames;
  /* Flag used to set clock out phase, use TRUE to capture serial
     data on the second clock transition of the frame, or FALSE to
     use the first clock transition of the frame */
  BOOL_32 usesecond_clk_spi;
   /* Serial clock rate */

  UNS_32 spi_clk;
  /* Flag used to select MSB option */
  BOOL_32 msb;
  /* Flag used to select transmit/receive functionality */
  BOOL_32 transmitter;
  /* Flag used to select busy control */
  BOOL_32 busy_halt;
  /* Flag used to select busy signal polarity if used */
  BOOL_32 busy_polarity;
  /* Flag used to select usage of SPI_DATIO/DATIN pins */
  BOOL_32 unidirectional;
} SPI_CONFIG_T;

/* Callbacks for SPI */
typedef struct
{
  /* Transmit callback when more data is needed */
  PFV txcb;
  /* Receive callback */
  PFV rxcb;
} SPI_CBS_T;

/* SPI device commands (IOCTL commands) */
typedef enum
{
  /* Enable or disable the SPI, use arg = 0 to disable, arg = 1
     to enable */
  SPI_ENABLE,
  /* Setup the SPI controller, use arg as a pointer to type
     SPI_CONFIG_T */
  SPI_CONFIG,
  /* Quick Tx/Rx update */
  SPI_TXRX,
  /* Setup callbacks, use arg as a pointer to type SPI_CB_T */
  SPI_SET_CALLBACKS,
  /* Clear SPI interrupts */
  SPI_CLEAR_INTS,
  /* Clear SPI Rx buffer */
  SPI_CLEAR_RX_BUFFER,
  /* Get a SPI status, use an argument type of SPI_IOCTL_STS_T
     as the argument to return the correct status */
  SPI_GET_STATUS,
  /* Drive SSEL line, use an argument to set the level */
  SPI_DRIVE_SSEL,
  /* Make a delay after the last elemnt is sent in case the
     Frame Counter is not used */
  SPI_DELAY,
  SPI_ONLYDELAY
} SPI_IOCTL_CMD_T;

/* SPI device arguments for SPI_GET_STATUS command (IOCTL arguments) */
typedef enum
{
  /* Returns SPI clock rate in Hz */
  SPI_CLOCK_ST,
  /* Returns masked pending interrupts */
  SPI_PENDING_INTS_ST,
  /* Returns raw pending interrupts */
  SPI_RAW_INTS_ST
} SPI_IOCTL_STS_T;

/***********************************************************************
 * SPI driver API functions
 **********************************************************************/

 /* SPI1 interrupt handler */
void spi1_int(void);

/* SPI2 interrupt handler */
void spi2_int(void);

/* SPI configuration block */
INT_32 spi_ioctl(INT_32 devid,
                 INT_32 cmd,
                 INT_32 arg);

/* SPI write function - the buffer must be aligned on a 16-bit
   boundary if the data size is 9 bits or more */
INT_32 spi_write(INT_32 spi_id, void *buf, INT_32 count);

/* SPI read function - the buffer must be aligned on a 16-bit
   boundary if the data size is 9 bits or more */
INT_32 spi_read(INT_32 spi_id, void *buf, INT_32 count);
INT_32 spi_iceread(INT_32 spi_id, void *buf, INT_32 count);
INT_32 spi_writeread(INT_32 spi_id, void *wrbuf, INT_32 nWrite,void *rdbuf,INT_32 nRead);
/* Open the SPI */
INT_32 spi_open(INT_32 spi_id,UNS_32 arg);
/* Close the SPI */

INT_32 spi_close(INT_32 devid);



void Init_SPI(void);

#ifdef __cplusplus
}
#endif

#endif

