$(function () {
  // Event listeners 
  $("#lease-length").change(addRentInputs);
  $("#fixed-or-rising").change(alertWithChoice);

  // Callbacks
  function alertWithChoice() {
     alert('You chose ' + this.value + '!');
  }

  function addRentInputs() {
    $("#variable-terms").append("<div class='form-floating mb-1 rent-year-form'></div>");
    $(".rent-year-form").last().append(`<input type="number" class="form-control" placeholder=0></input><label>Rent Year ${this.value}</label>`);
  }
});