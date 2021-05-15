class Post < ApplicationRecord
    validates :title, presence: true
    validates :image, presence: true
    validates :content, presence: true
    before_save :censurate

    def censurate
        self.content = self.content.gsub("divulgar", "")
    end
end
