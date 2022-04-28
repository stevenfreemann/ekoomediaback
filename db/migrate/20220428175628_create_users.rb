class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :nickname, null: false, index: { unique: true }
      t.string :email, null: false, index: {name: 'unique_emails'}
      t.string :phone, null: false
      t.integer :age, null: false
      t.timestamps
    end
  end
end
