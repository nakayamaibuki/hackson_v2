class CreateAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :answers do |t|
      t.string :username
      t.string :input

      t.timestamps
    end
  end
end
