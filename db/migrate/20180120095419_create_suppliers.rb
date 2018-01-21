class CreateSuppliers < ActiveRecord::Migration[5.1]
  def change
    create_table :suppliers do |t|
      t.string :name, null: false
      t.string :url, null: false
      t.string :api_parser
      t.integer :expire_sec, null: false, default: 300
      t.boolean :alive

      t.timestamps
    end

    add_index :suppliers, :name, unique: true
    add_index :suppliers, :url, unique: true
  end
end
