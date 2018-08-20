int digitsProduct(int product) {
    if (product == 0) return 10;
    if (product < 10) return product;
    int p = product;
    String result = "";
    for (int i = 9; i > 1; i--)
        if (p % i == 0) {    
            p /= i; 
            result = i + result;
            i = 10;
        }
    return p == 1 ? new Integer(result) : -1;
}