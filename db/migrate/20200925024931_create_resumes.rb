class CreateResumes < ActiveRecord::Migration[6.0]
  def change
    create_table :resumes do |t|
      t.references :user,        null: false
      t.text    :introduction,               null: false
      t.integer :category_id,        null: false
      t.integer :prefecture_id,        null: false
      t.integer :price,        null: false
    end
  end
end
