$(function () {
  // Event Listeners 
  $("#lease-length").on("change", addRentInputs);
  $("#fixed-or-rising").on("change", addRentInputs);

  // Callback
  function addRentInputs() {
    resetRentInputs();
    if($("#fixed-or-rising").val() === "Rising") {
      addRentYearFields();
    } else {
      addAnnualRentField();
    }
  }

  function resetRentInputs() {
    $("#rent-inputs").remove();
    $("#variable-terms").append("<div id='rent-inputs'></div>");
  }

  function addRentYearFields() {
    for(let i = 1; i<=$("#lease-length").val(); i++){
      $("#rent-inputs").append("<div class='form-floating mb-1 rent-year-form'></div>");
      $(".rent-year-form").last().append(`<input type="number" class="form-control rent-input" placeholder=0 id="rent-year-${i}"></input><label>Rent Year ${i}</label>`);
    }
  }

  function addAnnualRentField() {
    $("#rent-inputs").append("<div class='form-floating mb-1 rent-year-form'></div>");
    $(".rent-year-form").last().append(`<input type="number" class="form-control rent-input" placeholder=0 id="annual-rent"></input><label>Annual Rent</label>`);
  }
});