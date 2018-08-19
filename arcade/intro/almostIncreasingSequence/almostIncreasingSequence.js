function almostIncreasingSequence(sequence) {
    let seq_false = 0;
    for (let i=0; i<sequence.length-1; i++) {
      if (sequence[i] >= sequence[i+1]){
        seq_false++;
        if (seq_false === 2) {
          return false
        } else if (sequence.length - (i+1) >= 2 && sequence[i-1] >= sequence[i+1] && sequence[i+2] <= sequence[i]) {
          return false
        }
      }       
    }
    return true
  }  