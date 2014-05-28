class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :token
      t.string :phone_number

      t.timestamps
    end
  end
end
