function chessKnight(cell) {
    let min = 1, max = 8, move = 0;
    let x = cell.charCodeAt(0)-96, y = Number(cell.substr(1, 1));
    // move to left
    if (x+1 >= min && x+1 <= max && y+2 >= min && y+2 <= max) move++ // topLeft
    if (x+2 >= min && x+2 <= max && y+1 >= min && y+1 <= max) move++ // leftTop
    if (x+2 >= min && x+2 <= max && y-1 >= min && y-1 <= max) move++ // leftBottom
    if (x+1 >= min && x+1 <= max && y-2 >= min && y-2 <= max) move++ // bottomLeft
    // move to right
    if (x-1 >= min && x-1 <= max && y+2 >= min && y+2 <= max) move++ // topRight
    if (x-2 >= min && x-2 <= max && y+1 >= min && y+1 <= max) move++ // rightTop
    if (x-2 >= min && x-2 <= max && y-1 >= min && y-1 <= max) move++ // rightBottom
    if (x-1 >= min && x-1 <= max && y-2 >= min && y-2 <= max) move++ // bottomRight

    return move;
}

cell = "a1"
chessKnight(cell)




