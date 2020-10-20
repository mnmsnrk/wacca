class Category < ActiveHash::Base

  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'メイク・スキンケア' },
    { id: 3, name: 'ベビー・キッズ' },
    { id: 4, name: 'ビジネス関連' },
    { id: 5, name: 'インテリア・DIY' },
    { id: 6, name: 'ゲーム' },
    { id: 7, name: 'スポーツ・レジャー' },
    { id: 8, name: 'カメラ' },
    { id: 9, name: '教育関連' },
    { id: 10, name: 'ハンドメイド' },
    { id: 11, name: 'その他' },
  ]
end
