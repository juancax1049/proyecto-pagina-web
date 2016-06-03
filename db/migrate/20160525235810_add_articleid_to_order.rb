class AddArticleidToOrder < ActiveRecord::Migration
  def change
  add_reference :orders, :article, index: true, foreign_key: true
  end
end
