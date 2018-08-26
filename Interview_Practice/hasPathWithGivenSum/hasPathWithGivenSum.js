//
// Definition for binary tree:
// function Tree(x) {
//   this.value = x;
//   this.left = null;
//   this.right = null;
// }
function hasPathWithGivenSum(t, s) {
    if(!t) return s===0;
    
    function traverse(node, sum = 0) {
        
        if(node) {
            console.log(node)
            const newSum = sum + node.value;
        
            if(newSum === s && (!node.left && !node.right)) {
                return true;
            }
            return traverse(node.left, newSum) || traverse(node.right, newSum);   
        }
        return false; 
    }
    return traverse(t)
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
