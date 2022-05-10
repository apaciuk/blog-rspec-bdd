class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts, id: :uuid do |t|
      t.string :title
      t.text :body
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.integer :views, default: 0

      t.timestamps
    end
  end
end
