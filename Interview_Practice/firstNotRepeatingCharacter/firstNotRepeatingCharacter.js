function firstNotRepeatingCharacter(s) {
    let found = {};
    s = s.split('')
    for (let i=0; i < s.length; ++i) {
           found[s[i]] = (found[s[i]]+1) || 1 
    }
    if (Object.values(found).indexOf(1) > -1) {
        return Object.keys(found).find(key => found[key] === 1)
    } else {
        return (`_`) 
    }
}
