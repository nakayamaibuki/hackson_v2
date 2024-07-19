class CreateTextdbs < ActiveRecord::Migration[7.1]
  def change
    create_table :textdbs do |t|
      t.text :content

      t.timestamps
    end
  end
end
