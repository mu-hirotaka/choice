QuestMaster.first_or_create([
  { id: 1, title: 'ドリブルスピード速いのはどっち?', content: 'ドリブルスピード速いのはどっち?', opened_at: 1404486000, closed_at: 1409461200 }
])

Character.first_or_create([
  { id: 1, quest_id: 1, character_id: 1, name: 'ロナウド' },
  { id: 2, quest_id: 1, character_id: 2, name: 'ロッベン' },
  { id: 3, quest_id: 1, character_id: 3, name: '宮市' },
  { id: 4, quest_id: 1, character_id: 4, name: 'バレンシア' },
  { id: 5, quest_id: 1, character_id: 5, name: 'ベイル' },
  { id: 6, quest_id: 1, character_id: 6, name: 'レノン' },
  { id: 7, quest_id: 1, character_id: 7, name: 'ウォルコット' },
  { id: 8, quest_id: 1, character_id: 8, name: 'メッシ' },
  { id: 9, quest_id: 1, character_id: 9, name: 'ルーニー' },
  { id: 10, quest_id: 1, character_id: 10, name: 'リベリー' },
  { id: 11, quest_id: 1, character_id: 11, name: 'サンチェス' }
])
