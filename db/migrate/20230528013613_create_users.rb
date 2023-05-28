class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.text :public_key
      t.text :private_key

      t.timestamps
    end
  end
end
