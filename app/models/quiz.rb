class Quiz < ActiveRecord::Base
	has_attached_file :document, 
	validates_attachment_content_type, :document,
    :content_type => { :content_type => [/\Aimage\/.*\Z/, /\Aaudio\/.*\Z/, /\Aapplication\/.*\Z/]},
    :size => { :in => 0..1.megabytes}
	end
end
