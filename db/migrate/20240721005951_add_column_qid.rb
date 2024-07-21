class AddColumnQid < ActiveRecord::Migration[7.1]
  def change
    add_column :answers, :q_id, :integer
  end
end
