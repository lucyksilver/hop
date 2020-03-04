const tagSelection = () => {
  const tags = document.querySelectorAll(".search .card-home .form-check-label");
  tags.forEach((tag) => {
    tag.addEventListener("click", (event) => {
      event.currentTarget.parentNode.classList.toggle('card-border');
    });
  });
};



export { tagSelection }

