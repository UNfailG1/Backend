class CreateGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :genres do |t|
      t.string :gen_name

      t.timestamps
    end
  end
end
