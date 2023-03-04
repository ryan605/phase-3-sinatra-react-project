class CreateUsers < ActiveRecord::Migration[6.1]
  
  #  has_many :projects,foreign_key: :user_id
  
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :first_name
      t.string :last_name
      t.integer :user_id 
      t.timestamps
    end
  end
end
