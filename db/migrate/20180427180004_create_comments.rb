class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.column :comment_body, :string
      t.column :post_id, :integer
      t.column :user_id, :integer

      t.timestamps
    end
  end
end
