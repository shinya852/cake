class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.string :name
      #作成日時
      t.datetime :create_at
      #更新日
      t.datetime :updated_at
      t.timestamps
    end
  end
end
