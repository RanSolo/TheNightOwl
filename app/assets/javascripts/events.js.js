(function() {
  $(document).on('ready page:load', function() {
    return $('.date').datepicker({
      format: 'dd-mm-yyyy',
      autoclose: true,
      todayHighlight: true,
      language: 'fr'
    });
  });

}).call(this);
