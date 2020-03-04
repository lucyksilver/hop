const pubSelection = () => {
  const pubs = document.querySelectorAll(".card-home .form-check-label");
  pubs.forEach((pub) => {
    pub.addEventListener("click", (event) => {
      // event.preventDefault();
      console.log(event.currentTarget);
      console.log(event.currentTarget.classList.contains('card-border'));
      const otherCard = document.querySelector(".card-border");
      if (otherCard) {

        otherCard.classList.remove("card-border");
      }
      event.currentTarget.parentNode.parentNode.classList.toggle('card-border');
    });
  });
};



// const cardBorder = document.getElementById("card-border") => {
//   cardBorder.addEventListener("click", (event) => {
//     event.currentTarget.classList.toggle("card-border");
//   });
// };



export { pubSelection }

