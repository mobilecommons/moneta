# Generated by generate.rb at 2012-12-02 15:00:09 +0100, heads/master-0-gab73edc
require 'helper'

begin
  store = Juno::Adapters::Couch.new(:db => 'adapter_couch')
  store['foo'] = 'bar'
  store.clear
  store.close

  describe "adapter_couch" do
    let(:store) do
      Juno::Adapters::Couch.new(:db => 'adapter_couch')
    end

    include_context 'juno_store'
    it_should_behave_like 'null_stringkey_stringvalue'
    it_should_behave_like 'store_stringkey_stringvalue'
    it_should_behave_like 'returndifferent_stringkey_stringvalue'
  end
rescue LoadError => ex
  puts "\e[31mTest adapter_couch not executed: #{ex.message}\e[0m"
rescue Exception => ex
  puts "\e[31mTest adapter_couch not executed: #{ex.message}\e[0m"
  puts ex.backtrace.join("\n")
end
