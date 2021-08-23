// madLib

function madLib(verb, adj, noun) {
  return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`
}

// isSubstring

function isSubstring(phrase, subphrase) {
  return phrase.includes(subphrase);
}

// fizzBuzz

function fizzBuzz(array) {
  const fizzBuzzArr = [];

  array.forEach(el => {
    if ((el % 3 === 0) ^ (el % 5 === 0)) {
      fizzBuzzArr.push(el);
    }
  });

  return fizzBuzzArr;
}