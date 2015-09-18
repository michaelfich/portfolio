$(document).on('ready page:load', function() {
  var $menu = $('nav.primary ul'),
      $button = $('nav.primary a.toggle'),
      $icon = $('nav.primary a.toggle i');

  $button.click(function(e) {
    e.preventDefault();
    $menu.slideToggle(function() {
      $icon.toggleClass('fa-bars');
      $icon.toggleClass('fa-times');
    });
  });
});