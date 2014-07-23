$ ->
  $('#left-btn').click ->
    data = { id : 1, name : 'ronald' }
    $.ajax '/choice/choice',
      type: 'GET'
      dataType: 'json'
      data: data
      error: (jqXHR, textStatus, errorThrown) ->
        console.log 'error'
      success: (data, textStatus, jqXHR) ->
        console.log data

  $('#right-btn').click ->
    data = { id : 2, name : 'robben' }
    $.ajax '/choice/choice',
      type: 'GET'
      dataType: 'json'
      data: data
      error: (jqXHR, textStatus, errorThrown) ->
        console.log 'error'
      success: (data, textStatus, jqXHR) ->
        console.log data
