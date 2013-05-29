class UtLibDynQuery < ActiveRecord::Base

    self.primary_key = :lib_dyn_query_id

    has_many :ut_test_impls, :class_name => 'UtTestImpl', :foreign_key => :lib_dyn_query_id    
end
