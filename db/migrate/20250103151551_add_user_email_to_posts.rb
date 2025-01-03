class AddUserEmailToPosts < ActiveRecord::Migration[7.2]
  def change
    add_column :posts, :user_email, :string
  end
end
