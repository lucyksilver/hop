const randomizer = () => {
  let counter = 0;
  const elem = document.getElementById("randomBeer");
  const beers = JSON.parse(elem.dataset.beers);
  const card = document.getElementById('card')
  console.log(beers)
  const actual = elem.dataset.actualBeer;
  beers.push(actual);
  const change = () => {
    if (counter < beers.length) {
      elem.innerHTML = beers[counter];
      counter++;
    } else if (counter === beers.length) {
      clearInterval(change);
      card.classList.remove('d-none');
      elem.classList.remove('beer-title');
    }

  }
  setInterval(change, 200);
}

export { randomizer }
