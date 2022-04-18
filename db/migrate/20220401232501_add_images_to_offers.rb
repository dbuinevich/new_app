class AddImagesToOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :offers, :image, :json
  end
end
