class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    def leave_review(user, star_rating, comment)
        Review.create(product_id: self.id, user_id: user.id, star_rating: star_rating, comment: comment)
    end

    def print_all_reviews
        puts self.reviews.each { |review| review.print_review }
    end

    def average_rating
        ratings = self.reviews.map { |review| review.star_rating }
        ratings.sum / ratings.size.to_f
    end
end