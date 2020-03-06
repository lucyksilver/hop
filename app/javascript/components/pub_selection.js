const pubSelection = () => {
  const pubs = document.querySelectorAll("#new_choice .pub-card .form-check-label");
  pubs.forEach((pub) => {
    pub.addEventListener("click", (event) => {
      // event.preventDefault();

      const otherCard = document.querySelector(".pub-card-active");
      if (otherCard) {

        otherCard.classList.remove("pub-card-active");
      }
      event.currentTarget.parentNode.classList.toggle('pub-card-active');
    });
  });
};



// const cardBorder = document.getElementById("card-border") => {
//   cardBorder.addEventListener("click", (event) => {
//     event.currentTarget.classList.toggle("card-border");
//   });
// };



export { pubSelection }

