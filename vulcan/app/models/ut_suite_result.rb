class UtSuiteResult < ActiveRecord::Base

    self.primary_key = :utsr_id

    belongs_to :ut_suite, :class_name => 'UtSuite', :foreign_key => :ut_sid    
    has_many :ut_suite_item_results, :class_name => 'UtSuiteItemResult', :foreign_key => :utsr_id    
    has_many :ut_suite_item_results, :class_name => 'UtSuiteItemResult'    
end
