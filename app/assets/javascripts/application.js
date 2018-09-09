//= require jquery3
//= require popper
//= require rails-ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

function growl(type, message, place) {
  $('<div class="alert alert-' + type + ' alert-growl">' + message + '</div>')
      .appendTo(place)
      .delay(4000)
      .fadeOut(4000, function() {
        $(this).remove()
      });
}
