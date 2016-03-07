// As a user I want:
// To be able to add together, a series of numbers.
//   To have that series be any length and should be added together regarless of the series containing an odd or even amount of numbers
// To be able to do a mean of a series of numbers.
//   Again I want that series to be any length and odd or even amount of numbers in series
// To be able to determine the median of a series of numbers.
//   This should be easier for an odd numbered series.
//   Since no median exists for an even numbered one, I want it to give me the mean of the two middle numbers.

/*
Summary

So for Katherine's, it stops us at the first test.  You did make a sum function, but it was called this.sum instead of simply sum
That's what the test was looking for so it failed thrice for the function names.
I do see that you brought in the this.sum() call instead of rewriting the math for the this.mean function.

For Nick's solution, all tests pass.  The calculations are a bit DRY.
If you continued Katherine's trend of calling the previous function instead of redoing calculations it would be a bit more readable.
