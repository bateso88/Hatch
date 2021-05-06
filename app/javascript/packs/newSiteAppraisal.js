$(function () {
  // Event listeners 
  $("#lease-length").on("change", addRentInputs);
  $("#fixed-or-rising").on("change", addRentInputs);

  // Callback
  function addRentInputs() {
    $("#rent-inputs").remove();
    $("#variable-terms").append("<div id='rent-inputs'></div>");

    if($("#fixed-or-rising").val() === "Rising") {
      for(let i = 1; i<=$("#lease-length").val(); i++){
        $("#rent-inputs").append("<div class='form-floating mb-1 rent-year-form'></div>");
        $(".rent-year-form").last().append(`<input type="number" class="form-control" placeholder=0></input><label>Rent Year ${i}</label>`);
      }
    } else {
      $("#rent-inputs").append("<div class='form-floating mb-1 rent-year-form'></div>");
      $(".rent-year-form").last().append(`<input type="number" class="form-control" placeholder=0></input><label>Annual Rent</label>`);
    }
  }
});