# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 0) do

  create_table "ut_lib_dyn_queries", :primary_key => "lib_dyn_query_id", :force => true do |t|
    t.string    "lib_dyn_query_name",  :limit => 120, :null => false
    t.string    "lib_dyn_query_class", :limit => 120, :null => false
    t.text      "lib_dyn_query",                      :null => false
    t.timestamp "created_on",          :limit => 6,   :null => false
    t.string    "created_by",          :limit => 120, :null => false
    t.timestamp "updated_on",          :limit => 6,   :null => false
    t.string    "updated_by",          :limit => 120, :null => false
  end

  add_index "ut_lib_dyn_queries", ["lib_dyn_query_name"], :name => "ut_lib_dyn_queries_name", :unique => true

  create_table "ut_lib_startups", :primary_key => "lib_startup_id", :force => true do |t|
    t.string    "lib_startup_name",  :limit => 120, :null => false
    t.string    "lib_startup_class", :limit => 120, :null => false
    t.text      "lib_startup",                      :null => false
    t.timestamp "created_on",        :limit => 6,   :null => false
    t.string    "created_by",        :limit => 120, :null => false
    t.timestamp "updated_on",        :limit => 6,   :null => false
    t.string    "updated_by",        :limit => 120, :null => false
  end

  add_index "ut_lib_startups", ["lib_startup_name"], :name => "ut_lib_startups_name", :unique => true

  create_table "ut_lib_teardowns", :primary_key => "lib_teardown_id", :force => true do |t|
    t.string    "lib_teardown_name",  :limit => 120, :null => false
    t.string    "lib_teardown_class", :limit => 120, :null => false
    t.text      "lib_teardown",                      :null => false
    t.timestamp "created_on",         :limit => 6,   :null => false
    t.string    "created_by",         :limit => 120, :null => false
    t.timestamp "updated_on",         :limit => 6,   :null => false
    t.string    "updated_by",         :limit => 120, :null => false
  end

  add_index "ut_lib_teardowns", ["lib_teardown_name"], :name => "ut_lib_teardowns_name", :unique => true

  create_table "ut_lib_validations", :primary_key => "lib_validation_id", :force => true do |t|
    t.string    "lib_validation_name",  :limit => 120, :null => false
    t.string    "lib_validation_class", :limit => 120, :null => false
    t.text      "lib_validation",                      :null => false
    t.timestamp "created_on",           :limit => 6,   :null => false
    t.string    "created_by",           :limit => 120, :null => false
    t.timestamp "updated_on",           :limit => 6,   :null => false
    t.string    "updated_by",           :limit => 120, :null => false
  end

  add_index "ut_lib_validations", ["lib_validation_name"], :name => "ut_lib_validations_name", :unique => true

  create_table "ut_lookup_categories", :force => true do |t|
    t.string    "name",       :limit => 120
    t.timestamp "created_on", :limit => 6,   :null => false
    t.string    "created_by", :limit => 120, :null => false
    t.timestamp "updated_on", :limit => 6,   :null => false
    t.string    "updated_by", :limit => 120, :null => false
  end

  add_index "ut_lookup_categories", ["name"], :name => "ut_lookup_categories_uk1", :unique => true

  create_table "ut_lookup_datatypes", :force => true do |t|
    t.string    "cat_id",      :limit => 40
    t.decimal   "type_id"
    t.string    "type_string", :limit => 120
    t.timestamp "created_on",  :limit => 6,   :null => false
    t.string    "created_by",  :limit => 120, :null => false
    t.timestamp "updated_on",  :limit => 6,   :null => false
    t.string    "updated_by",  :limit => 120, :null => false
  end

  add_index "ut_lookup_datatypes", ["cat_id", "type_string"], :name => "ut_lookup_datatypes_uk1", :unique => true
  add_index "ut_lookup_datatypes", ["cat_id"], :name => "ut_lookup_dts_cat_id_ix"

  create_table "ut_lookup_values", :force => true do |t|
    t.string    "data_id",    :limit => 40
    t.text      "value"
    t.timestamp "created_on", :limit => 6,   :null => false
    t.string    "created_by", :limit => 120, :null => false
    t.timestamp "updated_on", :limit => 6,   :null => false
    t.string    "updated_by", :limit => 120, :null => false
  end

  add_index "ut_lookup_values", ["data_id"], :name => "ut_lookup_values_ut_looku_ix"

  create_table "ut_metadata", :primary_key => "name", :force => true do |t|
    t.string "value", :limit => 2000, :null => false
  end

  create_table "ut_startups", :primary_key => "startup_id", :force => true do |t|
    t.string    "ut_id",          :limit => 40
    t.string    "ut_sid",         :limit => 40
    t.integer   "index_no",                      :precision => 38, :scale => 0, :null => false
    t.text      "startup"
    t.string    "lib_startup_id", :limit => 40
    t.timestamp "created_on",     :limit => 6,                                  :null => false
    t.string    "created_by",     :limit => 120,                                :null => false
    t.timestamp "updated_on",     :limit => 6,                                  :null => false
    t.string    "updated_by",     :limit => 120,                                :null => false
  end

  add_index "ut_startups", ["lib_startup_id"], :name => "ut_startups_lib_validn_ix"
  add_index "ut_startups", ["ut_id"], :name => "ut_startups_test_ix"
  add_index "ut_startups", ["ut_sid"], :name => "ut_startups_suite_ix"

  create_table "ut_suite", :primary_key => "ut_sid", :force => true do |t|
    t.boolean   "coverage",                  :precision => 1, :scale => 0
    t.string    "name",       :limit => 120,                               :null => false
    t.timestamp "created_on", :limit => 6,                                 :null => false
    t.string    "created_by", :limit => 120,                               :null => false
    t.timestamp "updated_on", :limit => 6,                                 :null => false
    t.string    "updated_by", :limit => 120,                               :null => false
  end

  create_table "ut_suite_item_results", :id => false, :force => true do |t|
    t.string    "utsr_id",    :limit => 40,  :null => false
    t.string    "utr_id",     :limit => 40
    t.string    "utr_nsid",   :limit => 40
    t.decimal   "sequence",                  :null => false
    t.timestamp "created_on", :limit => 6,   :null => false
    t.string    "created_by", :limit => 120, :null => false
    t.timestamp "updated_on", :limit => 6,   :null => false
    t.string    "updated_by", :limit => 120, :null => false
  end

  add_index "ut_suite_item_results", ["utr_id"], :name => "ut_suite_item_results_fk2"
  add_index "ut_suite_item_results", ["utr_nsid"], :name => "ut_suite_item_results_fk3"
  add_index "ut_suite_item_results", ["utsr_id", "utr_id", "utr_nsid"], :name => "ut_suite_item_results_uk", :unique => true
  add_index "ut_suite_item_results", ["utsr_id"], :name => "ut_suite_item_results_fk1"

  create_table "ut_suite_items", :id => false, :force => true do |t|
    t.string    "ut_sid",     :limit => 40,  :null => false
    t.string    "ut_id",      :limit => 40
    t.string    "ut_nsid",    :limit => 40
    t.string    "run_start",  :limit => 1,   :null => false
    t.string    "run_tear",   :limit => 1,   :null => false
    t.decimal   "sequence",                  :null => false
    t.timestamp "created_on", :limit => 6,   :null => false
    t.string    "created_by", :limit => 120, :null => false
    t.timestamp "updated_on", :limit => 6,   :null => false
    t.string    "updated_by", :limit => 120, :null => false
  end

  add_index "ut_suite_items", ["ut_id"], :name => "ut_suite_items_ix3"
  add_index "ut_suite_items", ["ut_nsid"], :name => "ut_suite_items_ix2"
  add_index "ut_suite_items", ["ut_sid", "ut_id", "ut_nsid"], :name => "ut_suite_items_uk", :unique => true
  add_index "ut_suite_items", ["ut_sid"], :name => "ut_suite_items_ix1"

  create_table "ut_suite_results", :primary_key => "utsr_id", :force => true do |t|
    t.string    "ut_sid",              :limit => 40,                                 :null => false
    t.string    "name",                :limit => 120,                                :null => false
    t.string    "status",              :limit => 20,                                 :null => false
    t.string    "message",             :limit => 2000
    t.string    "startup_status",      :limit => 20
    t.string    "startup_message",     :limit => 2000
    t.string    "startup_start_time",  :limit => 20
    t.string    "startup_end_time",    :limit => 20
    t.decimal   "startup_duration"
    t.string    "teardown_status",     :limit => 20
    t.string    "teardown_message",    :limit => 2000
    t.string    "teardown_start_time", :limit => 20
    t.string    "teardown_end_time",   :limit => 20
    t.decimal   "teardown_duration"
    t.boolean   "coverage",                            :precision => 1, :scale => 0, :null => false
    t.timestamp "run_date",            :limit => 6,                                  :null => false
    t.timestamp "created_on",          :limit => 6,                                  :null => false
    t.string    "created_by",          :limit => 120,                                :null => false
    t.timestamp "updated_on",          :limit => 6,                                  :null => false
    t.string    "updated_by",          :limit => 120,                                :null => false
  end

  add_index "ut_suite_results", ["ut_sid"], :name => "ut_suite_results_ix"

  create_table "ut_teardowns", :primary_key => "teardown_id", :force => true do |t|
    t.string    "ut_id",           :limit => 40
    t.string    "ut_sid",          :limit => 40
    t.integer   "index_no",                       :precision => 38, :scale => 0, :null => false
    t.text      "teardown"
    t.string    "lib_teardown_id", :limit => 40
    t.timestamp "created_on",      :limit => 6,                                  :null => false
    t.string    "created_by",      :limit => 120,                                :null => false
    t.timestamp "updated_on",      :limit => 6,                                  :null => false
    t.string    "updated_by",      :limit => 120,                                :null => false
  end

  add_index "ut_teardowns", ["lib_teardown_id"], :name => "ut_teardowns_lib_validn_ix"
  add_index "ut_teardowns", ["ut_id"], :name => "ut_teardowns_test_ix"
  add_index "ut_teardowns", ["ut_sid"], :name => "ut_teardowns_suite_ix"

  create_table "ut_test", :primary_key => "ut_id", :force => true do |t|
    t.string    "name",            :limit => 120,                               :null => false
    t.string    "object_name",     :limit => 120,                               :null => false
    t.string    "object_type",     :limit => 120,                               :null => false
    t.string    "object_owner",    :limit => 120,                               :null => false
    t.string    "object_call",     :limit => 120
    t.string    "connection_name", :limit => 120
    t.boolean   "coverage",                       :precision => 1, :scale => 0
    t.timestamp "created_on",      :limit => 6,                                 :null => false
    t.string    "created_by",      :limit => 120,                               :null => false
    t.timestamp "updated_on",      :limit => 6,                                 :null => false
    t.string    "updated_by",      :limit => 120,                               :null => false
  end

  add_index "ut_test", ["name"], :name => "ut_test_uk1", :unique => true

  create_table "ut_test_arguments", :primary_key => "arg_id", :force => true do |t|
    t.string    "ut_id",              :limit => 40
    t.string    "owner",              :limit => 30,  :null => false
    t.string    "object_name",        :limit => 30
    t.string    "package_name",       :limit => 30
    t.decimal   "object_id",                         :null => false
    t.string    "overload",           :limit => 40
    t.string    "argument_name",      :limit => 30
    t.decimal   "position",                          :null => false
    t.decimal   "sequence",                          :null => false
    t.decimal   "data_level",                        :null => false
    t.string    "data_type",          :limit => 30
    t.decimal   "default_length"
    t.string    "in_out",             :limit => 9
    t.decimal   "data_length"
    t.decimal   "data_precision"
    t.decimal   "data_scale"
    t.decimal   "radix"
    t.string    "character_set_name", :limit => 44
    t.string    "type_owner",         :limit => 30
    t.string    "type_name",          :limit => 30
    t.string    "type_subname",       :limit => 30
    t.string    "type_link",          :limit => 128
    t.string    "pls_type",           :limit => 30
    t.decimal   "char_length"
    t.string    "char_used",          :limit => 1
    t.timestamp "created_on",         :limit => 6,   :null => false
    t.string    "created_by",         :limit => 120, :null => false
    t.timestamp "updated_on",         :limit => 6,   :null => false
    t.string    "updated_by",         :limit => 120, :null => false
  end

  add_index "ut_test_arguments", ["ut_id"], :name => "ut_test_arguments_ix"

  create_table "ut_test_coverage_stats", :primary_key => "utc_id", :force => true do |t|
    t.string    "utir_id",     :limit => 40
    t.string    "uti_id",      :limit => 40
    t.string    "unit_owner",  :limit => 30
    t.string    "unit_name",   :limit => 30
    t.decimal   "line"
    t.decimal   "total_occur"
    t.decimal   "total_time"
    t.string    "text",        :limit => 4000
    t.timestamp "created_on",  :limit => 6,    :null => false
    t.string    "created_by",  :limit => 120,  :null => false
    t.timestamp "updated_on",  :limit => 6,    :null => false
    t.string    "updated_by",  :limit => 120,  :null => false
  end

  add_index "ut_test_coverage_stats", ["uti_id"], :name => "ut_test_cov_stats_ut_t_ix1"
  add_index "ut_test_coverage_stats", ["utir_id"], :name => "ut_test_cov_stats_ut_t_ix2"

  create_table "ut_test_impl", :primary_key => "uti_id", :force => true do |t|
    t.string    "ut_id",                 :limit => 40,  :null => false
    t.string    "name",                  :limit => 120, :null => false
    t.string    "expected_return",       :limit => 20
    t.string    "expected_return_error", :limit => 200
    t.text      "dynamic_value_query"
    t.string    "lib_dyn_query_id",      :limit => 40
    t.timestamp "created_on",            :limit => 6,   :null => false
    t.string    "created_by",            :limit => 120, :null => false
    t.timestamp "updated_on",            :limit => 6,   :null => false
    t.string    "updated_by",            :limit => 120, :null => false
  end

  add_index "ut_test_impl", ["lib_dyn_query_id"], :name => "ut_test_lib_dyn_queries_ix"
  add_index "ut_test_impl", ["ut_id", "name"], :name => "ut_test_impl_uk1", :unique => true
  add_index "ut_test_impl", ["ut_id"], :name => "ut_test_impl_ut_test_ix"

  create_table "ut_test_impl_arg_results", :primary_key => "utiar_id", :force => true do |t|
    t.string    "utir_id",    :limit => 40
    t.string    "uti_id",     :limit => 40,   :null => false
    t.string    "arg_id",     :limit => 40,   :null => false
    t.string    "name",       :limit => 120
    t.string    "status",     :limit => 20,   :null => false
    t.string    "message",    :limit => 2000
    t.timestamp "run_date",   :limit => 6,    :null => false
    t.timestamp "created_on", :limit => 6,    :null => false
    t.string    "created_by", :limit => 120,  :null => false
    t.timestamp "updated_on", :limit => 6,    :null => false
    t.string    "updated_by", :limit => 120,  :null => false
  end

  add_index "ut_test_impl_arg_results", ["arg_id"], :name => "ut_test_impl_arg_results_ix2"
  add_index "ut_test_impl_arg_results", ["uti_id"], :name => "ut_test_impl_arg_results_ix1"
  add_index "ut_test_impl_arg_results", ["utir_id"], :name => "ut_test_impl_arg_results_ix3"

  create_table "ut_test_impl_arguments", :id => false, :force => true do |t|
    t.string    "uti_id",       :limit => 40,                                                  :null => false
    t.string    "arg_id",       :limit => 40,                                                  :null => false
    t.text      "input_value"
    t.text      "output_value"
    t.boolean   "test_outval",                 :precision => 1, :scale => 0, :default => true, :null => false
    t.timestamp "created_on",   :limit => 6,                                                   :null => false
    t.string    "created_by",   :limit => 120,                                                 :null => false
    t.timestamp "updated_on",   :limit => 6,                                                   :null => false
    t.string    "updated_by",   :limit => 120,                                                 :null => false
  end

  add_index "ut_test_impl_arguments", ["arg_id"], :name => "ut_test_impl_arguments_ut_ix1"
  add_index "ut_test_impl_arguments", ["uti_id"], :name => "ut_test_impl_arguments_ut_ix2"

  create_table "ut_test_impl_results", :primary_key => "utir_id", :force => true do |t|
    t.string    "uti_id",              :limit => 40,   :null => false
    t.string    "utr_id",              :limit => 40,   :null => false
    t.string    "name",                :limit => 120,  :null => false
    t.string    "status",              :limit => 20,   :null => false
    t.string    "message",             :limit => 2000
    t.string    "start_time",          :limit => 20
    t.string    "end_time",            :limit => 20
    t.decimal   "duration"
    t.string    "startup_status",      :limit => 20
    t.string    "startup_message",     :limit => 2000
    t.string    "startup_start_time",  :limit => 20
    t.string    "startup_end_time",    :limit => 20
    t.decimal   "startup_duration"
    t.string    "op_call_status",      :limit => 20
    t.string    "op_call_message",     :limit => 2000
    t.string    "op_call_start_time",  :limit => 20
    t.string    "op_call_end_time",    :limit => 20
    t.decimal   "op_call_duration"
    t.string    "teardown_status",     :limit => 20
    t.string    "teardown_message",    :limit => 2000
    t.string    "teardown_start_time", :limit => 20
    t.string    "teardown_end_time",   :limit => 20
    t.decimal   "teardown_duration"
    t.timestamp "run_date",            :limit => 6,    :null => false
    t.timestamp "created_on",          :limit => 6,    :null => false
    t.string    "created_by",          :limit => 120,  :null => false
    t.timestamp "updated_on",          :limit => 6,    :null => false
    t.string    "updated_by",          :limit => 120,  :null => false
  end

  add_index "ut_test_impl_results", ["uti_id"], :name => "ut_test_impl_results_ut_t_ix1"
  add_index "ut_test_impl_results", ["utr_id"], :name => "ut_test_impl_results_ut_t_ix2"

  create_table "ut_test_impl_val_results", :primary_key => "utivr_id", :force => true do |t|
    t.string    "utir_id",        :limit => 40
    t.string    "uti_id",         :limit => 40,   :null => false
    t.string    "val_id",         :limit => 40,   :null => false
    t.string    "val_type",       :limit => 40,   :null => false
    t.string    "status",         :limit => 20,   :null => false
    t.string    "message",        :limit => 2000
    t.string    "val_start_time", :limit => 20
    t.string    "val_end_time",   :limit => 20
    t.decimal   "val_duration"
    t.timestamp "run_date",       :limit => 6
    t.timestamp "created_on",     :limit => 6,    :null => false
    t.string    "created_by",     :limit => 120,  :null => false
    t.timestamp "updated_on",     :limit => 6,    :null => false
    t.string    "updated_by",     :limit => 120,  :null => false
  end

  add_index "ut_test_impl_val_results", ["uti_id"], :name => "ut_test_impl_val_res_ix2"
  add_index "ut_test_impl_val_results", ["utir_id"], :name => "ut_test_impl_val_res_ix3"
  add_index "ut_test_impl_val_results", ["val_id"], :name => "ut_test_impl_val_res_ix1"

  create_table "ut_test_results", :primary_key => "utr_id", :force => true do |t|
    t.string    "ut_id",           :limit => 40,                                 :null => false
    t.string    "name",            :limit => 120,                                :null => false
    t.string    "status",          :limit => 20,                                 :null => false
    t.string    "message",         :limit => 2000
    t.boolean   "coverage",                        :precision => 1, :scale => 0, :null => false
    t.string    "test_user_name",  :limit => 120
    t.string    "connection_name", :limit => 120
    t.timestamp "run_date",        :limit => 6,                                  :null => false
    t.timestamp "created_on",      :limit => 6,                                  :null => false
    t.string    "created_by",      :limit => 120,                                :null => false
    t.timestamp "updated_on",      :limit => 6,                                  :null => false
    t.string    "updated_by",      :limit => 120,                                :null => false
  end

  add_index "ut_test_results", ["ut_id"], :name => "ut_test_results_ut_test_ix1"

  create_table "ut_validations", :primary_key => "validation_id", :force => true do |t|
    t.string    "uti_id",            :limit => 40,                                                   :null => false
    t.integer   "index_no",                         :precision => 38, :scale => 0,                   :null => false
    t.text      "validation"
    t.string    "lib_validation_id", :limit => 40
    t.boolean   "apply_validation",                 :precision => 1,  :scale => 0, :default => true, :null => false
    t.timestamp "created_on",        :limit => 6,                                                    :null => false
    t.string    "created_by",        :limit => 120,                                                  :null => false
    t.timestamp "updated_on",        :limit => 6,                                                    :null => false
    t.string    "updated_by",        :limit => 120,                                                  :null => false
  end

  add_index "ut_validations", ["lib_validation_id"], :name => "ut_validations_lib_validn_ix"
  add_index "ut_validations", ["uti_id"], :name => "ut_validations_test_impl_ix"

  add_foreign_key "ut_lookup_datatypes", "ut_lookup_categories", :column => "cat_id", :name => "ut_lookup_datatypes_ut_lo_fk1", :dependent => :delete

  add_foreign_key "ut_lookup_values", "ut_lookup_datatypes", :column => "data_id", :name => "ut_lookup_values_ut_looku_fk1", :dependent => :delete

  add_foreign_key "ut_startups", "ut_lib_startups", :column => "lib_startup_id", :primary_key => nil, :name => "ut_startups_lib_validn_fk1", :dependent => :delete
  add_foreign_key "ut_startups", "ut_suite", :column => "ut_sid", :primary_key => nil, :name => "ut_startups_suite_fk1", :dependent => :delete
  add_foreign_key "ut_startups", "ut_test", :column => "ut_id", :primary_key => nil, :name => "ut_startups_test_fk1", :dependent => :delete

  add_foreign_key "ut_suite_item_results", "ut_suite_results", :column => "utr_nsid", :primary_key => nil, :name => "ut_suite_item_results_fk3", :dependent => :delete
  add_foreign_key "ut_suite_item_results", "ut_suite_results", :column => "utsr_id", :primary_key => nil, :name => "ut_suite_item_results_fk1", :dependent => :delete
  add_foreign_key "ut_suite_item_results", "ut_test_results", :column => "utr_id", :primary_key => nil, :name => "ut_suite_item_results_fk2", :dependent => :delete

  add_foreign_key "ut_suite_items", "ut_suite", :column => "ut_nsid", :primary_key => nil, :name => "ut_suite_items_fk3", :dependent => :delete
  add_foreign_key "ut_suite_items", "ut_suite", :column => "ut_sid", :primary_key => nil, :name => "ut_suite_items_fk1", :dependent => :delete
  add_foreign_key "ut_suite_items", "ut_test", :column => "ut_id", :primary_key => nil, :name => "ut_suite_items_fk2", :dependent => :delete

  add_foreign_key "ut_suite_results", "ut_suite", :column => "ut_sid", :primary_key => nil, :name => "ut_suite_results_fk1", :dependent => :delete

  add_foreign_key "ut_teardowns", "ut_lib_teardowns", :column => "lib_teardown_id", :primary_key => nil, :name => "ut_teardowns_lib_validn_fk1", :dependent => :delete
  add_foreign_key "ut_teardowns", "ut_suite", :column => "ut_sid", :primary_key => nil, :name => "ut_teardowns_suite_fk1", :dependent => :delete
  add_foreign_key "ut_teardowns", "ut_test", :column => "ut_id", :primary_key => nil, :name => "ut_teardowns_test_fk1", :dependent => :delete

  add_foreign_key "ut_test_arguments", "ut_test", :column => "ut_id", :primary_key => nil, :name => "ut_test_arguments_fk", :dependent => :delete

  add_foreign_key "ut_test_coverage_stats", "ut_test_impl", :column => "uti_id", :primary_key => nil, :name => "ut_test_cov_stats_ut_t_fk1", :dependent => :delete
  add_foreign_key "ut_test_coverage_stats", "ut_test_impl_results", :column => "utir_id", :primary_key => nil, :name => "ut_test_cov_stats_ut_t_fk2", :dependent => :delete

  add_foreign_key "ut_test_impl", "ut_lib_dyn_queries", :column => "lib_dyn_query_id", :primary_key => nil, :name => "ut_test_lib_dyn_queries_fk1", :dependent => :delete
  add_foreign_key "ut_test_impl", "ut_test", :column => "ut_id", :primary_key => nil, :name => "ut_test_impl_ut_test_fk1", :dependent => :delete

  add_foreign_key "ut_test_impl_arg_results", "ut_test_arguments", :column => "arg_id", :primary_key => nil, :name => "ut_test_impl_arg_results__fk2", :dependent => :delete
  add_foreign_key "ut_test_impl_arg_results", "ut_test_impl", :column => "uti_id", :primary_key => nil, :name => "ut_test_impl_arg_results__fk1", :dependent => :delete

  add_foreign_key "ut_test_impl_arguments", "ut_test_arguments", :column => "arg_id", :primary_key => nil, :name => "ut_test_impl_arguments_ut_fk1", :dependent => :delete
  add_foreign_key "ut_test_impl_arguments", "ut_test_impl", :column => "uti_id", :primary_key => nil, :name => "ut_test_impl_arguments_ut_fk2", :dependent => :delete

  add_foreign_key "ut_test_impl_results", "ut_test_impl", :column => "uti_id", :primary_key => nil, :name => "ut_test_impl_results_ut_t_fk1", :dependent => :delete
  add_foreign_key "ut_test_impl_results", "ut_test_results", :column => "utr_id", :primary_key => nil, :name => "ut_test_impl_results_ut_t_fk2", :dependent => :delete

  add_foreign_key "ut_test_impl_val_results", "ut_test_impl", :column => "uti_id", :primary_key => nil, :name => "ut_test_impl_val_res_fk2", :dependent => :delete
  add_foreign_key "ut_test_impl_val_results", "ut_test_impl_results", :column => "utir_id", :primary_key => nil, :name => "ut_test_impl_val_res_fk3", :dependent => :delete
  add_foreign_key "ut_test_impl_val_results", "ut_validations", :column => "val_id", :primary_key => nil, :name => "ut_test_impl_val_res_fk1", :dependent => :delete

  add_foreign_key "ut_test_results", "ut_test", :column => "ut_id", :primary_key => nil, :name => "ut_test_results_ut_test_fk1", :dependent => :delete

  add_foreign_key "ut_validations", "ut_lib_validations", :column => "lib_validation_id", :primary_key => nil, :name => "ut_validations_lib_validn_fk1", :dependent => :delete
  add_foreign_key "ut_validations", "ut_test_impl", :column => "uti_id", :primary_key => nil, :name => "ut_validations_test_impl_fk1", :dependent => :delete

end
