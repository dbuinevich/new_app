class AddOffersToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :offers, :user, index: true
  end
end
