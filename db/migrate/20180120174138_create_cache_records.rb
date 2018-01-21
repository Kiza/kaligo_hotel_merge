class CreateCacheRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :cache_records do |t|
      t.string :key, null: false
      t.string :value, null: false

      t.timestamps
    end

    add_index :cache_records, :key
  end
end
