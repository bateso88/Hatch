$(function () {
  $(".rent-year-form").hide()
  $(".projection-form").hide()
  $("#annual-rent").show();
  $("#projection-year-1").show();

  // Event Listeners 
  $("#lease-length").on("change", updateRentInputsAndProjections);
  $("#fixed-or-rising").on("change", updateRentInputs);
  $("#variable-terms").on('change', updateTotalRent);
  $("#projections").on('change', updateTotalProjections);

  // Callbacks

  function updateRentInputsAndProjections() {
    updateRentInputs();
    $(".projection-form").hide()
    for(let i = 1; i<=$("#lease-length").val(); i++){
      $(`#projection-year-${i}`).show("slow");
    }
  };


  function updateRentInputs() {
    $(".rent-year-form").hide()
    if($("#fixed-or-rising").val() === "Rising") {
      showRentYearFields();
    } else {
      $("#annual-rent").show("slow");
    }
  }

  function showRentYearFields() {
    for(let i = 1; i<=$("#lease-length").val(); i++){
      $(`#rent-year-${i}`).show("slow");
    }
  }

  function updateTotalRent() {
    let rent = [];
    if($("#fixed-or-rising").val() === "Rising") {
      for(let i = 1; i<=$("#lease-length").val(); i++){
        rent.push($(`#rent-year-${i} input`).val())
      }
    } else {
      for(let i = 1; i<=$("#lease-length").val(); i++){
        rent.push($(`#annual-rent input`).val())    
      }
    }
    $("#overall-rent").val(rent)
  }

  function updateTotalProjections() {
    let projections = []
    for(let i = 1; i<=$("#lease-length").val(); i++){
      projections.push($(`#projection-year-${i} input`).val())
    }
    $("#overall-projections").val(projections)
  }
});