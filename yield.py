import sys
def countdown(n):
    if n >0:
        print('hello world')
        yield n
    countdown(n-1)
         