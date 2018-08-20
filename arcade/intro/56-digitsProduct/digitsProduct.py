def digitsProduct(product): 
    if product ==0:
        return 10
    if product < 10:
        return product
    p = product
    r = ''
    for i in range(9,1):
        if p % i == 0:
            p/= i
            r = i + r
            i = 9
            print(r)
        if p == 1: break
            
    if p == 1:
        return r
    else:
        return -1