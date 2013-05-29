class UtLibTeardown < ActiveRecord::Base

    self.primary_key = :lib_teardown_id

    has_many :ut_teardowns, :class_name => 'UtTeardown', :foreign_key => :lib_teardown_id    
end
