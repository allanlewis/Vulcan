class UtTestImplResult < ActiveRecord::Base

    self.primary_key = :utir_id

    has_many :ut_test_impl_val_results, :class_name => 'UtTestImplValResult', :foreign_key => :utir_id    
    belongs_to :ut_test_impl, :class_name => 'UtTestImpl', :foreign_key => :uti_id    
    belongs_to :ut_test_result, :class_name => 'UtTestResult', :foreign_key => :utr_id    
    has_many :ut_test_coverage_stats, :class_name => 'UtTestCoverageStat', :foreign_key => :utir_id    
end
