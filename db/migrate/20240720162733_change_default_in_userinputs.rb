class ChangeDefaultInUserinputs < ActiveRecord::Migration[7.1]
  def change
    change_column_default :answers , :username, 'no'
    change_column_default :answers , :input, 'no'
  end
end
