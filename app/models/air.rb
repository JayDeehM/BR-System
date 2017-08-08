class Air < ActiveRecord::Base
    belongs_to :user
    
    has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
    ratyrate_rateable "review"
    

    geocoded_by :location   # can also be an IP address
    after_validation :geocode, if: :location_changed?           # auto-fetch coordinates
    
end
