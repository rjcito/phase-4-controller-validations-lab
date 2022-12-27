class Post < ApplicationRecord
    #The title cannot be blank
    validates :title, presence: true

    #The category is either "Fiction" or "Non-Fiction"
    validates :category, inclusion: {in: ['Fiction', 'Non-Fiction']}

    #The content is at least 100 characters long
    validates :content, length: {minimum: 100}
    
end
