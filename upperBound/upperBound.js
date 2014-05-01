// This function accepts a number `guess`.  It could be any number, and our challenge
// is to return an appropriate upper bound for it.
//
// The upperBound should be the smallest number in the pattern below that is bigger than the guess.
//
// pattern: 2, 5, 10,
//          20, 50, 100,
//          200, 500, 1000
//
// and so forth.  If the guess is greater than 1000 we should continue the pattern.  For example, a guess of
// 1200 should result in an upperBound of 2000.
//
// see upperBound.test.coffee for more examples!  Write riley@peardeck.com if anything is unclear.

module.exports = function upperBound(guess) {

  var pattern = [2, 5, 10, 20, 50, 100, 200, 500, 1000];

  var continuePattern = function (pattern) {
    var nextFirstNumber = pattern[pattern.length-3];
    pattern.push(nextFirstNumber * 10, nextFirstNumber * 25, nextFirstNumber * 50);
    return pattern;
  };

  var getUpperBound = function (pattern, guess) {
    var theUpperBound;

    for (i=0; i < pattern.length; i++) {
      if (pattern[i] > guess) {
        theUpperBound = pattern[i];
        break;
      }
      if (i === pattern.length - 1) {
        pattern = continuePattern(pattern);
      }
    }
    return theUpperBound;
  };

  return getUpperBound(pattern, guess);
    
};
