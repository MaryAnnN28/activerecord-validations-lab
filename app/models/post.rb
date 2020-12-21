class Post < ActiveRecord::Base
     validates :title, presence: true
     validates :content, length: { minimum: 200 }
     validates :summary, length: { maximum: 30 }
     validates :category, :inclusion => { :in => %w(Fiction Non-Fiction) }
     validates_with TitleValidator


end
