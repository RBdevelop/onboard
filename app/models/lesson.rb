class Lesson < ActiveRecord::Base
	has_attached_file :document, 
	validates_attachment_content_type, :document,
    :content_type => { :content_type => [/\Aimage\/.*\Z/, /\Avideo\/.*\Z/, /\Aaudio\/.*\Z/, /\Aapplication\/.*\Z/]},
    :size => { :in => 0..1.megabytes}
	end
end
