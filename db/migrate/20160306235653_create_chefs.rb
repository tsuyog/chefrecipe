class CreateChefs < ActiveRecord::Migration
  def change
    create_table :chefs do |t|
      t.string :username, :email
      t.timestamps
    end
  end
end
