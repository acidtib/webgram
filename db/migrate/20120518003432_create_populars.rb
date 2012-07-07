class CreatePopulars < ActiveRecord::Migration
  def change
    create_table :populars do |t|
      t.string :name

      t.timestamps
    end
  end
end
