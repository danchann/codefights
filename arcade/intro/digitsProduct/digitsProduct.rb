def digitsProduct(product)
    return 10 if product == 0
    return 1  if product == 1
    p = product
    result = ""
    for i in (9).downto(2)
        while p % i == 0    
            p /= i 
            result = String(i) + result
            puts i
        end
     end   
    p == 1 ? Integer(result) : -1
end