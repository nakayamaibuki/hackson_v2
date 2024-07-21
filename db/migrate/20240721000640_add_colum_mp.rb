class AddColumMp < ActiveRecord::Migration[7.1]
  def change
    add_column :answers, :manner_point, :integer
  end
end
