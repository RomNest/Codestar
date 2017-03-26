class Novelty < ActiveRecord::Base
	has_attached_file :image, styles: { medium: "700x500#", small: "350x250#"}
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  	validates :title, presence: true, length: {in: 2..25}
	validates :description, presence: true, length: {in: 5..2500}
	validates :image, presence: true
end
