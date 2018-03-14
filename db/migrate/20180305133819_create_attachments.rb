class CreateAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :attachments do |t|
      t.string :att_name
      t.decimal :att_size
      t.string :att_location_path
      t.references :comment, foreign_key: true

      t.timestamps
    end
  end
end
