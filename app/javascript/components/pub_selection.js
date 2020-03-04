const pubSelection = () => {
  const pubs = document.querySelectorAll("#new_choice .card-home .form-check-label");
  pubs.forEach((pub) => {
    pub.addEventListener("click", (event) => {
      // event.preventDefault();

      const otherCard = document.querySelector(".card-border");
      if (otherCard) {

        otherCard.classList.remove("card-border");
      }
      event.currentTarget.parentNode.classList.toggle('card-border');
    });
  });
};



// const cardBorder = document.getElementById("card-border") => {
//   cardBorder.addEventListener("click", (event) => {
//     event.currentTarget.classList.toggle("card-border");
//   });
// };



export { pubSelection }

