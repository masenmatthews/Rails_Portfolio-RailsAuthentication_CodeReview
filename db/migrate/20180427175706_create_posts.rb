class CreatePosts < ActiveRecord::Migration[5.2]
    def change
      create_table :questions do |t|
        t.column :user_id, :integer
        t.column :post_title, :string
        t.column :post_body, :string

        t.timestamps
      end
    end
  end
