#ifndef TCP_SERVER_H_
#define TCP_SERVER_H_

#include <stdint.h>
#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

void stackIp_ThreadInit(uint16_t port);

#ifdef __cplusplus
}
#endif

#endif /* TCP_SERVER_H_ */
