#ifndef SPAWN_H_
#define SPAWN_H_

#include "platform.h"

typedef struct {
    pid_t pid;
    bool done;
} Subproc;

#endif /* SPAWN_H_ */
