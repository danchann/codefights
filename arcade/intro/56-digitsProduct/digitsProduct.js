function digitsProduct(product) {
    if(product<10&&product%2>0){return product;}
    if(product==0){return 10;}
    let p = product, result = [];
    for (let i=9; i>1; --i) {
       if (p%i===0) { 
           p=p/i;
           result.unshift(i);
           i=10;
       }
        if (p === 1) break;
    }
    if (p !== 1) return -1;
    return result.length === 0 ? -1 : Number(result.join(''));
}