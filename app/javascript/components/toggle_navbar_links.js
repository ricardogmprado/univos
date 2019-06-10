
const displayFilter = (e) => {
  e.preventDefault();

  var form = document.querySelector('.maincard form')
  var profile = document.querySelector('.profile-show')

  // add class show to form filter element
  if(profile.classList.contains('show')) {
    profile.classList.remove('show')
  }

  form.classList.toggle('show')
}


const displayProfile = (e) => {
  e.preventDefault();

  var form = document.querySelector('.maincard form')
  var profile = document.querySelector('.profile-show')


  if (document.querySelector('.activities.index') != null){
    if(form.classList.contains('show')) {
      form.classList.remove('show')
    }
  }
  profile.classList.toggle('show')
}

export { displayProfile };
export { displayFilter };
