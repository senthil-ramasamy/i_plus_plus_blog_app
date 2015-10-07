class Post < ActiveRecord::Base
	has_many :comments
	has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "800x300" }
end
