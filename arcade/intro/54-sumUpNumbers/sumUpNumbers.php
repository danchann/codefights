function sumUpNumbers($inputString) {
    preg_match_all('/\d+/', $inputString, $matches );
    return array_sum($matches[0]);
}
