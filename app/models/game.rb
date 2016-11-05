class Game < ActiveRecord::Base
	has_attached_file :image_file, styles: {large: "750x500>", medium: "450x450>", small: "300x250>", tiny: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image_file, content_type: /\Aimage\/.*\z/
end
