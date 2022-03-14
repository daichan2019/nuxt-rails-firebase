class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false, default: ""
      t.string :uid, null: false, default: ""
      t.index :uid, unique: true

      t.timestamps
    end
  end
end
