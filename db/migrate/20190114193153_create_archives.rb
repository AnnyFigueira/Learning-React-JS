class CreateArchives < ActiveRecord::Migration[5.2]
  def change
    create_table :archives do |t|
      t.string :filename
      t.binary :content
      t.references :user, foreign_key: true
      t.boolean :private

      t.timestamps
    end
  end
end
