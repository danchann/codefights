function rotateImage(a) {
    let result = []
    for (let i=0; i<a[0].length; ++i) {
        result[i] = [];
        for (let j=0; j<a.length; ++j) {
            result[i].unshift(a[j][i])
        }
    }
    return (result)
}