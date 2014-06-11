class CreatePurrs < ActiveRecord::Migration
  def change
    create_table :purrs do |t|

      t.timestamps
    end
  end
end
