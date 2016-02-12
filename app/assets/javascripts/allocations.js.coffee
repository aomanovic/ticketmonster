$ ->
  $(document).on 'change', '#shows_select', (evt) ->
    $.ajax 'update_price_categories',
      type: 'GET'
      dataType: 'script'
      data: {
        show_id: $('#shows_select option:selected').val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic country select OK!")