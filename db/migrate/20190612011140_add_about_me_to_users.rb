class AddAboutMeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :about_me, :string
  end
end
