QuestMaster.first_or_create([
  { id: 1, title: 'ドリブルスピード速いのはどっち?', content: 'ドリブルスピード速いのはどっち?', opened_at: 1404486000, closed_at: 1409461200 }
])

Character.first_or_create([
  { id: 1, quest_id: 1, character_id: 1, name: 'ロナウド' },
  { id: 2, quest_id: 1, character_id: 2, name: 'ロッベン' }
])
