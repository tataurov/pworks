Array.prototype.max = function() {
  return Math.max.apply(null, this);
};

Array.prototype.min = function() {
  return Math.min.apply(null, this);
};

// Remove the same elements from array
// Usage: ['a', 'b', 'c', 'c'].unique() => ['a', 'b', 'c']
// Returns: Array
Array.prototype.unique = function() {
  var o = {}, a = [], i, e;

  for (i = 0; e = this[i]; i++) {
    o[e] = 1
  }
  for (e in o) {
    a.push (e)
  }

  return a;
};