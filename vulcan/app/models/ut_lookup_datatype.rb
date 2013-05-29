class UtLookupDatatype < ActiveRecord::Base



    belongs_to :ut_lookup_category, :class_name => 'UtLookupCategory', :foreign_key => :cat_id    
    has_many :ut_lookup_values, :class_name => 'UtLookupValue'    
end
