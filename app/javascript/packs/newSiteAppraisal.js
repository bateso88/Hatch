$(function () {
  $(".rent-year-form").hide()
  $("#annual-rent").show();

  // Event Listeners 
  $("#lease-length").on("change", updateRentInputs);
  $("#fixed-or-rising").on("change", updateRentInputs);
  $("#variable-terms").on('change', updateTotalRent);

  // Callbacks
  function updateRentInputs() {
    $(".rent-year-form").hide()
    if($("#fixed-or-rising").val() === "Rising") {
      showRentYearFields();
    } else {
      $("#annual-rent").show();
    }
  }

  function showRentYearFields() {
    for(let i = 1; i<=$("#lease-length").val(); i++){
      $(`#rent-year-${i}`).show();
    }
  }

  function updateTotalRent() {
    let rentArray = [];
    if($("#fixed-or-rising").val() === "Rising") {
      for(let i = 1; i<=$("#lease-length").val(); i++){
        rentArray.push($(`#rent-year-${i} input`).val())
      }
    } else {
      for(let i = 1; i<=$("#lease-length").val(); i++){
        rentArray.push($(`#annual-rent input`).val())    
      }
    }
    $("#overall-rent").val(rentArray)
  }
});