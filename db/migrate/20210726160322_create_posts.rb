class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|

      t.integer :user_id, null: false
      t.integer :post_id, null: false
      t.string :title, null: false
      t.text :body, null: false
      t.boolean :permit, default: false, null: false
      t.string :git_link
      t.string :pf_link, null: false
      t.string :image_id

      t.timestamps
    end
  end
end
