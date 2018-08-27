//
// Definition for binary tree:
// function Tree(x) {
//   this.value = x;
//   this.left = null;
//   this.right = null;
// }
function hasPathWithGivenSum(t, s) {
    if(!t) return s===0;
    let sum = 0;
    
    function traverse(node) {
        sum += node.value;
        
        if(sum === s && (!node.left && !node.right)) throw error;
        ;
        
        if(node.left) traverse(node.left);
        if(node.right) traverse(node.right);
        
        sum -= node.value;
        
    }

    try {traverse(t);}
    catch(err) {
        console.log(err);
    }
        
    return false;
}

t = {
    "value": 4,
    "left": {
        "value": 1,
        "left": {
            "value": -2,
            "left": null,
            "right": {
                "value": 3,
                "left": null,
                "right": null
            }
        },
        "right": null
    },
    "right": {
        "value": 3,
        "left": {
            "value": 1,
            "left": null,
            "right": null
        },
        "right": {
            "value": 2,
            "left": {
                "value": -2,
                "left": null,
                "right": null
            },
            "right": {
                "value": -3,
                "left": null,
                "right": null
            }
        }
    }
}

s = 7;

hasPathWithGivenSum(t, s)
