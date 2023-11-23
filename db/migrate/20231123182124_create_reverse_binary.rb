class CreateReverseBinary < ActiveRecord::Migration[7.1]
  def change
    create_table :reverse_binaries do |t|
      t.integer :number

      t.timestamps
    end
  end
end
