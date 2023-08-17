class Article < ApplicationRecord
    before_validation do
        puts 'before validation'
    end
    after_validation do
        puts 'after validation'
    end
    before_save do
        puts 'before save'
    end
    before_create do
        puts 'before create'
    end
    after_create do
        puts 'after create'
    end
    after_save do
        puts 'after save'
    end
    belongs_to :user
    has_many :article_categories
    has_many :categories, through: :article_categories
    validates :title, presence: true, length: {minimum: 6, maximum: 50}
    validates :description, presence: true, length: {minimum: 10, maximum: 500}
end
