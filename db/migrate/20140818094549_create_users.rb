class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.text :interest

      t.timestamps
    end
  end
end
