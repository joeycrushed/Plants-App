import swal from 'sweetalert';

const initSweetalert = (selector, options = {}) => {
  const swalButton = document.querySelector(selector);
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', (event) => {
      event.preventDefault();
      swal(options);
      setInterval(()=> {
      document.getElementById("new_plant").submit();  
      }, 1500)
    });
  }
};

export { initSweetalert };
