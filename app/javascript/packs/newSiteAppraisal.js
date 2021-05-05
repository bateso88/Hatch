$(function () {
  /* event listeners */
  document.getElementById("lease-length").addEventListener('change', addRentInputs);
  document.getElementById("fixed-or-rising").addEventListener('change', alertWithChoice);
  
  /* functions */
  function alertWithChoice() {
     alert('You chose ' + this.value + '!');
  }

  function addRentInputs() {

    var formField = document.createElement("div");
    formField.setAttribute("class", "form-floating mb-1");

    var rentInput = document.createElement("input");
    rentInput.setAttribute("type", "number");
    rentInput.setAttribute("class", "form-control");
    rentInput.setAttribute("placeholder", 0);
    rentInput.setAttribute("id", "rent-year-1");

    var label = document.createElement("label");
    label.setAttribute("for", "rent-year-1");
    label.innerHTML = `Rent Year ${this.value}`;

    var variableTerms = document.getElementById("variable-terms");
    variableTerms.appendChild(formField);
    formField.appendChild(rentInput);
    formField.appendChild(label);
  }

});