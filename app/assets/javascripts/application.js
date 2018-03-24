// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require rails-ujs
//= require jquery-ui
//= require jquery-ui/effect.all
//= require_tree .
// $ (document).ready(function () {
//   $('#bitcoin').click((event)=> {
//       console.log(event.currentTarget)
//       event.currentTarget.fadeOut();
//   });
// })
//
// $ (document).ready(function () {
//   $('#bitcoin').click(function(){
//
//   })
// })
//

// (function() {
// document.getElementById('customizebtn').addEventListener('submit', event => {
//   event.preventDefault();
//   console.log('Form is submitted!')
// });
// })();

function customizationFormSubmitHandler() {
  // console.log('hi');
  var zoneValue = $('input[name=zone]:checked').val();
  var vehicleValue = $('input[name=vehicle]:checked').val();

  // var x = zoneValue * @commute_count;
  // console.log(zoneValue);
  // // console.log(zoneValue);
  // console.log(vehicleValue);
  if (zoneValue == 1) {
    fareValue = 2.85;
  } else if (zoneValue == 2) {
    fareValue = 4.10;
  } else if (zoneValue == 3) {
    fareValue = 5.60;
  } else {
    fareValue = 3.48;
  };

  console.log(fareValue);

  var customizedTrainSave = '$'' + Math.round(fareValue*(document.getElementById("@commuteCount").innerHTML));
  document.getElementById("@userSavedNotByTrain").innerHTML = customizedTrainSave;
  document.getElementById("moneyshot").innerHTML = customizedTrainSave;
  // console.log(x);
  if (vehicleValue == "compact") {
       mileageValue = .11;
  } else if (vehicleValue == "mid-size") {
        mileageValue = .23;
  } else if (vehicleValue == "SUV") {
        mileageValue = .33;
  } else {
        mileageValue = .16;
  }
  var customizedCarSave ="$"+ Math.round(mileageValue*(document.getElementById("@totalCommuteDistance").innerHTML));
  document.getElementById("@userSavedNotByDriving").innerHTML = customizedCarSave;

  // var x = document.getElementById("myP").innerHTML;
  // document.getElementById("demo").innerHTML = x;

  // document.getElementById("@userSavedNotByTrain").innerHTML = "<%=train%>";
  // $("b").replaceWith("<b>x</b>");
  // $( ".hide2" ).removeClass( "hide2" ).addClass( "show2" );
  // $( ".show1" ).remove();
}
