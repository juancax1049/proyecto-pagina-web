class Order < ActiveRecord::Base
has_many :article
has_many :user
end
