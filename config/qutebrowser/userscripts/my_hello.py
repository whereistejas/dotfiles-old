#!/usr/bin/env python
# coding=utf-8

from qutescript import userscript


@userscript
def hello_world(request):
    request.send_text('Hello, me! :P')


if __name__ == '__main__':
    hello_world()
