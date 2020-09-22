class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.integer :account_id
      t.string :title
      t.string :desctiption
      t.string :contact
      t.datetime :date

      t.timestamps
    end
  end
end
