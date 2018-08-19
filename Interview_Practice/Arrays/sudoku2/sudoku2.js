function sudoku2(grid) {
    'use strict'
    let horiArr = [], vertArr = [], boxArr = [];
    for (let i=0; i<grid.length; ++i) {
        // check horizontally
        horiArr = grid[i].filter(x => !isNaN(x))
        if (!hasNoDuplicates(horiArr)) return false
        // check vertically
        for (let j=0; j<grid.length; ++j) {
            !isNaN(grid[j][i]) ? vertArr.push(grid[j][i]):'';
             // check 3x3 box
            if (j===i && (i===0 || i%3 ===0)) {
                for (let k=0; k<grid[i].length; k+=3) {           
                    for(let l=i; l<i+3; ++l) {
                        for(let m=k; m<k+3; ++m) {
                            !isNaN(grid[l][m]) ? boxArr.push(grid[l][m]):'';
                        }
                    }
                    if (!hasNoDuplicates(boxArr)) return false;
                    boxArr = [];
                }
            }
        }
        if (!hasNoDuplicates(vertArr)) return false;
        vertArr = [];
    }
    return true;
}

function hasNoDuplicates(arr){
    return arr.every(function(val){
        return arr.indexOf(val) === arr.lastIndexOf(val)
    })
}