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
  console.log(zoneValue);
  // console.log(zoneValue);
  console.log(vehicleValue);
  // $("b").replaceWith("<b>x</b>");
  $( ".hide2" ).removeClass( "hide2" ).addClass( "show2" );
  // $( ".show1" ).remove();
}
