$ ->
  $('#left-btn').click ->
    data = { question_id : 1, character_id : 1, name : 'ronald' }
    $.ajax '/choice/choice',
      type: 'GET'
      dataType: 'json'
      data: data
      error: (jqXHR, textStatus, errorThrown) ->
        console.log 'error'
      success: (data, textStatus, jqXHR) ->
        path = "<img src='/assets/character/" + data.question_id + "/" + data.character_id + ".png'>"
        $('#right-img').html(path)
        $('#right-btn').text(data.name)
        console.log data

  $('#right-btn').click ->
    data = { question_id : 1, character_id : 2, name : 'robben' }
    $.ajax '/choice/choice',
      type: 'GET'
      dataType: 'json'
      data: data
      error: (jqXHR, textStatus, errorThrown) ->
        console.log 'error'
      success: (data, textStatus, jqXHR) ->
        path = "<img src='/assets/character/" + data.question_id + "/" + data.character_id + ".png'>"
        $('#left-img').html(path)
        $('#left-btn').text(data.name)
        console.log data

