function digitsProduct($product) {
    if ($product == 0) {
        return 10;
    }
    if ($product == 1) {
        return 1;
    }
    $r = '';
    for ($i = 9; $i > 1; $i--) {
        if ($product % $i == 0) {
            $product = $product / $i;
            $r = "$i$r;
            $i=10;
            if ($product == 1) {
                return (int)$r;
            }
        }
    }
    return -1;
}