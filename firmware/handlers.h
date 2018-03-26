#pragma once

typedef void (*HandlerT)(void);

typedef struct HandlersT {
    HandlerT intHandler;
    HandlerT tim0OvfHandler;
    HandlerT tim0CompAHandler;
    HandlerT tim1OvfHandler;
} Handlers;

extern Handlers handlers;

void defaultHandler(void);
