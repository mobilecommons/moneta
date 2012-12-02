# Generated by generate.rb at 2012-12-02 15:00:09 +0100, heads/master-0-gab73edc
require 'helper'

begin
  store = Juno.build do
    use :Transformer, :key => :bson, :value => :bson
    adapter :Memory
  end
  store['foo'] = 'bar'
  store.clear
  store.close

  describe "transformer_bson" do
    let(:store) do
      Juno.build do
        use :Transformer, :key => :bson, :value => :bson
        adapter :Memory
      end
    end

    include_context 'juno_store'
    it_should_behave_like 'null_hashkey_hashvalue'
    it_should_behave_like 'null_hashkey_stringvalue'
    it_should_behave_like 'null_stringkey_hashvalue'
    it_should_behave_like 'null_stringkey_stringvalue'
    it_should_behave_like 'store_hashkey_hashvalue'
    it_should_behave_like 'store_hashkey_stringvalue'
    it_should_behave_like 'store_stringkey_hashvalue'
    it_should_behave_like 'store_stringkey_stringvalue'
    it_should_behave_like 'returndifferent_hashkey_hashvalue'
    it_should_behave_like 'returndifferent_hashkey_stringvalue'
    it_should_behave_like 'returndifferent_stringkey_hashvalue'
    it_should_behave_like 'returndifferent_stringkey_stringvalue'
  end
rescue LoadError => ex
  puts "\e[31mTest transformer_bson not executed: #{ex.message}\e[0m"
rescue Exception => ex
  puts "\e[31mTest transformer_bson not executed: #{ex.message}\e[0m"
  puts ex.backtrace.join("\n")
end
