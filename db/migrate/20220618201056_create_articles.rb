class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles, id: :uuid do |t|
      t.string :title
      t.text :body
      t.string :img_url
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
