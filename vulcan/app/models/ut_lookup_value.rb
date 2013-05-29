class UtLookupValue < ActiveRecord::Base



    belongs_to :ut_lookup_datatype, :class_name => 'UtLookupDatatype', :foreign_key => :data_id    
end
