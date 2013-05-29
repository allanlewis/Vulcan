class UtLibStartup < ActiveRecord::Base

    self.primary_key = :lib_startup_id

    has_many :ut_startups, :class_name => 'UtStartup', :foreign_key => :lib_startup_id    
end
