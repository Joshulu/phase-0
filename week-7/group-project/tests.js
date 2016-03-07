// Add the finished solution here when you receive it.
// Refactored Solution

// function Calculate(array) {
//   this.array = array;

//   this.sum = function() {
//     var sum = 0;
//     for (var i in this.array) {
//         sum += this.array[i];
//     }
//     return sum;
//   }

//   this.mean = function() {
//     var count = this.array.length;
//     var result = this.sum()/count;
//     return result;
//   }

//   this.median = function() {
//     var result;
//     var count = this.array.length;
//     this.array.sort();
//     if (count % 2 == 1) {
//         var middleIndex = Math.floor(count/2);
//         result = this.array[middleIndex];
//     } else {
//         var firstMiddleIndex = (count/2)-1;
//         var secondMiddleIndex = count/2;
//         result = (this.array[firstMiddleIndex]+this.array[secondMiddleIndex])/2;
//     }
//     return result;
//   }
// }
// __________________________________________

// user wants to sum a list of numbers
function sum(numArr) {
    var result = 0;
    for (var counter = 0; counter < numArr.length; counter++) {
        result += numArr[counter];
    }
    return result;
}

// user wants to find the average of a list of numbers
function mean(numArr) {
    var sum = 0;
    for (var counter = 0; counter < numArr.length; counter++) {
        sum += numArr[counter];
    }
    return sum/numArr.length;
}

// user wants to find the most common number in a list
function median(numArr) {
    if (numArr.length % 2 == 1) {
        var middleIndex = Math.floor(numArr.length/2);
        return numArr[middleIndex];
    }
    else {
        var firstMiddleIndex = numArr.length/2-1;
        var secondMiddleIndex = numArr.length/2;
        return (numArr[firstMiddleIndex]+numArr[secondMiddleIndex])/2;
    }
}



// __________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)
