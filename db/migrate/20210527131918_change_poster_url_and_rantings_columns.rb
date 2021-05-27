class ChangePosterUrlAndRantingsColumns < ActiveRecord::Migration[6.0]
  def change
    change_column :movies, :poster_url, :string
    change_column :movies, :rating, :float
  end
end
