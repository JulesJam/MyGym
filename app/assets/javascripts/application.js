// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require tether
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .
$(document).on('turbolinks:load', function() {

  var $ul = $('#users');
  var $lis = $ul.find('li');

  $('#sort').on('click', function() {
    var button = this;
    $lis.sort(function(a, b) {
      if($(button).text() === "ASC") {
        return $(a).data('searchstring') > $(b).data('searchstring');
      } else {
        return $(a).data('searchstring') < $(b).data('searchstring');
      }
    }).each(function() {
      $(this).appendTo($ul);
    });

    if($(button).text() === "ASC") {
      $(button).text("DESC");
    } else {
      $(button).text("ASC");
    }
    return false;
  });

  $('#search').on('keyup', function() {
    var input = this;
    $lis.each(function() {
      var searchString = $(input).val().toLowerCase();
      var textToMatch = $(this).data('searchstring').toLowerCase();

      if(textToMatch.match(searchString)) {
        $(this).show();
      } else {
        $(this).hide();
      }
    });
  });
});