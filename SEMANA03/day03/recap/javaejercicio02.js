////CODIGO DEFI JAVI

function getZeroSums(array) {
  var pairs = [];
  for (var i = 0; i < array.length; i++) {
    for (var j = 0; j < array.length; j++) {
      if (array[i] + array[j] === 0) {
        pairs.push('(' + array[i] + ',' + array[j] + ')');
      }
    }
  }
  return pairs;
}

function zeroCool(array) {
  return exampleArray.reduce(function (finalResult, i, posI) {
    return exampleArray.reduce(function (iterationResult, j, posJ) {
      return i + j === 0
        ? iterationResult.concat('(' + posI + ',' + posJ + ')')
        : iterationResult;
    }, finalResult);
  }, [])
}

var exampleArray = [ 2, -5, 10,  5,  4, -10,  0 ];
console.log(getZeroSums(exampleArray));
console.log(zeroCool(exampleArray));