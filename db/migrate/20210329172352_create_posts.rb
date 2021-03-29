class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :message, :limit => 140
      t.references :parent, index: true

      t.timestamps
    end
  end
end
