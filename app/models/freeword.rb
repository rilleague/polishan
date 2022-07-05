class FreeWord < ActiveHash::Base
  self.data = [
    { id: 1, name: '選択して下さい' },
    { id: 2, name: '脱毛' },
    { id: 3, name: '美肌' },
    { id: 4, name: 'UVケア' },
    { id: 5, name: 'ネイル' },
    { id: 6, name: '化粧' },
    { id: 7, name: 'ニキビ' },
    { id: 8, name: 'アトピー' },
    { id: 9, name: 'スタイリング' },
    { id: 10, name: '美容食品' },
]

  Include ActiveHash::Associations
  has_many :posts
  
end