# Generated by generate.rb at 2012-12-02 15:00:09 +0100, heads/master-0-gab73edc
require 'helper'

begin
  store = Juno.new(:GDBM, :file => File.join(make_tempdir, "simple_gdbm"))
  store['foo'] = 'bar'
  store.clear
  store.close

  describe "simple_gdbm" do
    let(:store) do
      Juno.new(:GDBM, :file => File.join(make_tempdir, "simple_gdbm"))
    end

    include_context 'juno_store'
    it_should_behave_like 'null_objectkey_objectvalue'
    it_should_behave_like 'null_objectkey_stringvalue'
    it_should_behave_like 'null_objectkey_hashvalue'
    it_should_behave_like 'null_stringkey_objectvalue'
    it_should_behave_like 'null_stringkey_stringvalue'
    it_should_behave_like 'null_stringkey_hashvalue'
    it_should_behave_like 'null_hashkey_objectvalue'
    it_should_behave_like 'null_hashkey_stringvalue'
    it_should_behave_like 'null_hashkey_hashvalue'
    it_should_behave_like 'store_objectkey_objectvalue'
    it_should_behave_like 'store_objectkey_stringvalue'
    it_should_behave_like 'store_objectkey_hashvalue'
    it_should_behave_like 'store_stringkey_objectvalue'
    it_should_behave_like 'store_stringkey_stringvalue'
    it_should_behave_like 'store_stringkey_hashvalue'
    it_should_behave_like 'store_hashkey_objectvalue'
    it_should_behave_like 'store_hashkey_stringvalue'
    it_should_behave_like 'store_hashkey_hashvalue'
    it_should_behave_like 'returndifferent_objectkey_objectvalue'
    it_should_behave_like 'returndifferent_objectkey_stringvalue'
    it_should_behave_like 'returndifferent_objectkey_hashvalue'
    it_should_behave_like 'returndifferent_stringkey_objectvalue'
    it_should_behave_like 'returndifferent_stringkey_stringvalue'
    it_should_behave_like 'returndifferent_stringkey_hashvalue'
    it_should_behave_like 'returndifferent_hashkey_objectvalue'
    it_should_behave_like 'returndifferent_hashkey_stringvalue'
    it_should_behave_like 'returndifferent_hashkey_hashvalue'
    it_should_behave_like 'marshallable_key'
  end
rescue LoadError => ex
  puts "\e[31mTest simple_gdbm not executed: #{ex.message}\e[0m"
rescue Exception => ex
  puts "\e[31mTest simple_gdbm not executed: #{ex.message}\e[0m"
  puts ex.backtrace.join("\n")
end
