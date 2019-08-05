#!/usr/bin/env python
# coding=utf-8

from qutescript import userscript
import os

@userscript
def read_url(request):
    url=str(request.url)
    # os.chdir('/home/tsanap/')
    with open('ytb-url', 'a+') as f:
        os.chdir('/home/tsanap/')
        f.write(url+"\n")

if __name__ == '__main__':
    read_url()
