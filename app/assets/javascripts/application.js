// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require bootstrap-sprockets
//= require_tree .

$(function() {
  $('.complete_checkboxes').on("click", function() {
    var checked;
    var val = $(this).prevAll(".rails-id").val();
    if ($(this).is(':checked')) {
      checked = true;
    } else {
      checked = false;
    }
    $.ajax({
      type: "PATCH",
      url: "/notes/" + val + "/update_complete",
      data: {complete: checked}
   });
 });
});

$(function() {
  $( ".sortable" ).sortable({
    placeholder: "ui-state-highlight"
  });
  $( ".sortable" ).disableSelection();
});
// $(function() {
//    $( ".column" ).sortable({
//      connectWith: ".column",
//      handle: ".portlet-header",
//      cancel: ".portlet-toggle",
//      placeholder: "portlet-placeholder ui-corner-all"
//    });
//
//    $( ".portlet" )
//      .addClass( "ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" )
//      .find( ".portlet-header" )
//        .addClass( "ui-widget-header ui-corner-all" )
//        .prepend( "<span class='ui-icon ui-icon-minusthick portlet-toggle'></span>");
//
//    $( ".portlet-toggle" ).click(function() {
//      var icon = $( this );
//      icon.toggleClass( "ui-icon-minusthick ui-icon-plusthick" );
//      icon.closest( ".portlet" ).find( ".portlet-content" ).toggle();
//    });
//  });
