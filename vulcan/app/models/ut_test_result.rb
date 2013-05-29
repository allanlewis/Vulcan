class UtTestResult < ActiveRecord::Base

    self.primary_key = :utr_id

    has_many :ut_test_impl_results, :class_name => 'UtTestImplResult', :foreign_key => :utr_id    
    belongs_to :ut_test, :class_name => 'UtTest', :foreign_key => :ut_id    
    has_many :ut_suite_item_results, :class_name => 'UtSuiteItemResult', :foreign_key => :utr_id    
end
