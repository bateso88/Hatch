$(function () {
  hideRentFields();
  showAnnualRentField();

  // Event Listeners 
  $("#lease-length").on("change", updateRentInputs);
  $("#fixed-or-rising").on("change", updateRentInputs);
  $("#variable-terms").on('change', updateTotalRent);

  // Callbacks
  function updateRentInputs() {
    hideRentFields()
    if($("#fixed-or-rising").val() === "Rising") {
      showRentYearFields();
    } else {
      showAnnualRentField();
    }
  }

  function showRentYearFields() {
    for(let i = 1; i<=$("#lease-length").val(); i++){
      $(`#rent-year-${i}`).show();
    }
  }

  function showAnnualRentField() {
    $("#annual-rent").show();
  }

  function hideRentFields() {
    $(".rent-year-form").hide()
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