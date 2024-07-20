class CreateUserinputs < ActiveRecord::Migration[7.1]
  def change
    create_table :userinputs do |t|
      t.string :input

      t.timestamps
    end
  end
end
