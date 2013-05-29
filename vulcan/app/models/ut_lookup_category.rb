class UtLookupCategory < ActiveRecord::Base



    has_many :ut_lookup_datatypes, :class_name => 'UtLookupDatatype'    
end
