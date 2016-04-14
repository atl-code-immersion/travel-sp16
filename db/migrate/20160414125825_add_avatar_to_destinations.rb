class AddAvatarToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :avatar, :string
  end
end
