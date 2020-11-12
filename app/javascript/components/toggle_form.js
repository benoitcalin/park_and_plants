const toggleForm = () => {
  const button = document.querySelector('.toggle-form');
  const form = document.querySelector('#new-plant');
  button.addEventListener('click', (event) => {
    form.classList.toggle('d-none');
  })
}

export { toggleForm };
