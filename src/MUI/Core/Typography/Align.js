exports._eqAlignProp = function(left){ return function(right){ return left === right }};
exports._ordAlignProp = function(left){ return function(right){ return (left === right) ? 0 : (left > right) ? 1 : -1 }};