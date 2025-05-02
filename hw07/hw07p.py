def squrare(n):
    return n * n
def even(n):
    if n % 2 == 0:
        return True
    return False
def odd(n):
    if n % 2 == 0:
        return False
    return True
def pow(base,exp):
    if exp == 1:
        return base
    if even(exp):
       return squrare(pow(base,exp//2))
    else:
        return base * squrare(pow(base,exp//2)) 
    