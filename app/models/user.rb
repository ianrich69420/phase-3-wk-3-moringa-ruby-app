class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews

    def favorite_product
        self.products.sort.first
    end

    def remove_reviews(product)
        Review.where(product_id: product.id, user_id: self.id).delete_all
    end
end