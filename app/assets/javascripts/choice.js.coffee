$ ->
  $('#left-choice-btn').click ->
    quest_id = $('#left-choice-btn').attr('data-quest-id')
    l_character_id = $('#left-choice-btn').attr('data-character-id')
    r_character_id = $('#right-choice-btn').attr('data-character-id')
    data = { quest_id : quest_id, l_character_id : l_character_id, r_character_id : r_character_id }
    $.ajax '/choice/choice',
      type: 'GET'
      dataType: 'json'
      data: data
      error: (jqXHR, textStatus, errorThrown) ->
        console.log 'error'
      success: (data, textStatus, jqXHR) ->
        path = "<img class='right-img' src='/images/character/" + data.quest_id + "/" + data.character_id + ".png'>"
        $('#right-img').html(path)
        $('#right-choice-btn').text(data.name)
        $('#right-choice-btn').attr('data-character-id', data.character_id)
        console.log data

  $('#right-choice-btn').click ->
    quest_id = $('#right-choice-btn').attr('data-quest-id')
    l_character_id = $('#left-choice-btn').attr('data-character-id')
    r_character_id = $('#right-choice-btn').attr('data-character-id')
    data = { quest_id : quest_id, l_character_id : l_character_id, r_character_id : r_character_id }
    $.ajax '/choice/choice',
      type: 'GET'
      dataType: 'json'
      data: data
      error: (jqXHR, textStatus, errorThrown) ->
        console.log 'error'
      success: (data, textStatus, jqXHR) ->
        path = "<img class='left-img' src='/images/character/" + data.quest_id + "/" + data.character_id + ".png'>"
        $('#left-img').html(path)
        $('#left-choice-btn').text(data.name)
        $('#left-choice-btn').attr('data-character-id', data.character_id)
        console.log data

  $('#left-modal-done-btn').click ->
    quest_id = $('#left-choice-btn').attr('data-quest-id')
    l_character_id = $('#left-choice-btn').attr('data-character-id')
    location.href = '/choice/done?qid=' + quest_id + '&cid=' + l_character_id

  $('#right-modal-done-btn').click ->
    quest_id = $('#right-choice-btn').attr('data-quest-id')
    r_character_id = $('#right-choice-btn').attr('data-character-id')
    location.href = '/choice/done?qid=' + quest_id + '&cid=' + r_character_id

