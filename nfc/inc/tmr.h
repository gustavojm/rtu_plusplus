#ifndef TMR_H_
#define TMR_H_

#include <stdint.h>
#include <stdbool.h>

#include "board.h"

class tmr {
public:
    tmr(LPC_TIMER_T *lpc_timer, CHIP_RGU_RST_T rgu_timer_rst,
            CHIP_CCU_CLK_T clk_mx_timer,
            IRQn_Type timer_IRQn);

    int32_t set_freq(uint32_t tick_rate_hz);

    void start();

    void stop();

    uint32_t is_started();

    bool match_pending();

private:
    bool started;
    LPC_TIMER_T *lpc_timer;
    CHIP_RGU_RST_T rgu_timer_rst;
    CHIP_CCU_CLK_T clk_mx_timer;
    IRQn_Type timer_IRQn;
};

#endif /* TMR_H_ */
