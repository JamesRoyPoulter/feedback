class CreateFdbks < ActiveRecord::Migration
  def change
    create_table :fdbks do |t|
      t.string :status
      t.string :date

      t.timestamps
    end
  end
end
