$ ->
  $('#left-choice-btn').click ->
    data = { question_id : 1, character_id : 1, name : 'ronald' }
    $.ajax '/choice/choice',
      type: 'GET'
      dataType: 'json'
      data: data
      error: (jqXHR, textStatus, errorThrown) ->
        console.log 'error'
      success: (data, textStatus, jqXHR) ->
        path = "<img class='right-img' src='/images/character/" + data.question_id + "/" + data.character_id + ".png'>"
        $('#right-img').html(path)
        $('#right-choice-btn').text(data.name)
        console.log data

  $('#right-choice-btn').click ->
    data = { question_id : 1, character_id : 2, name : 'robben' }
    $.ajax '/choice/choice',
      type: 'GET'
      dataType: 'json'
      data: data
      error: (jqXHR, textStatus, errorThrown) ->
        console.log 'error'
      success: (data, textStatus, jqXHR) ->
        path = "<img class='left-img' src='/images/character/" + data.question_id + "/" + data.character_id + ".png'>"
        $('#left-img').html(path)
        $('#left-choice-btn').text(data.name)
        console.log data

