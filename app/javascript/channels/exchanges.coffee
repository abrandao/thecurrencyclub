$(document).ready ->

  delay = (callback, ms) ->
    timer = 0
    ->
      context = this
      args = arguments
      clearTimeout timer
      timer = setTimeout((->
        callback.apply context, args
        return
      ), ms or 0)
      return

  $("#amount").keyup delay(((e) ->
    if $('form').attr('action') == '/convert'
      $.ajax '/convert',
       type: 'GET'
       dataType: 'json'
       data: {
               source_currency: $("#source_currency").val(),
               target_currency: $("#target_currency").val(),
               amount: $("#amount").val()
             }
       error: (jqXHR, textStatus, errorThrown) ->
        alert textStatus
       success: (data, text, jqXHR) ->
        $('#result').val(data.value)
      return false;
  ), 700)