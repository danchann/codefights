function firstDuplicate(a) {
    let found = {};
    for (let i=0; i<a.length; ++i) {
        if (found[a[i]]) {
            return a[i];
        }
        found[a[i]] = a
    }
    return -1;
}