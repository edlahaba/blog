class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content

      t.timestamps
      t.belongs_to :user, index: true, foreign_key: true
    end
  end
end
