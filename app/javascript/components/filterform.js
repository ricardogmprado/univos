const clickCheckbox = () => {
    let buttons = document.querySelectorAll(".select-category")
    if (buttons.length > 0){
    buttons.forEach((button) => {
    button.addEventListener("click", (e) => {
    let id = e.target.dataset.category;
    let container = document.querySelector(`#${id}cnt`)
    let checkbox = document.querySelector(`#${id}`)
    container.classList.toggle("selected");
    if (checkbox.checked) {
      checkbox.checked = false;
    } else {
      checkbox.checked = true;
    }
    })
  })

    }
}


const keepSelected = () => {
  const categoyform  = document.querySelector("#category-form")
  if (categoyform) {
      let checkboxes = document.querySelectorAll("#category-form input[type=checkbox]")
  checkboxes.forEach((checkbox) => {
    let id = checkbox.id
    let container = document.querySelector(`#${id}cnt`)
    if (checkbox.checked){
      container.classList.add("selected")
    }
  })
  }
}

export { clickCheckbox }
export { keepSelected }
