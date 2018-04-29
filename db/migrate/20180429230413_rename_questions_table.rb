class RenameQuestionsTable < ActiveRecord::Migration[5.2]
  def change
    rename_table :questions, :posts
  end
end
