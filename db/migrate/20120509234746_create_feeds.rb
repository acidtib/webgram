class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
