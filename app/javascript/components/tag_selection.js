const tagSelection = () => {
  const tags = document.querySelectorAll(".search .tag-card .form-check-label");
  tags.forEach((tag) => {
    tag.addEventListener("click", (event) => {
      event.currentTarget.parentNode.classList.toggle('tag-active');
    });
  });
};



export { tagSelection }

