class PhotoShout < ActiveRecord::Base
   
   do_not_validate_attachment_file_type :image

    has_attached_file :image, styles: {
        shout: "200x200>"
        }
end
