# Generated by generate.rb at 2012-12-02 15:00:09 +0100, heads/master-0-gab73edc
require 'helper'

begin
  store = Juno::Adapters::TokyoCabinet.new(:file => File.join(make_tempdir, "adapter_tokyocabinet_hdb"), :type => :hdb)
  store['foo'] = 'bar'
  store.clear
  store.close

  describe "adapter_tokyocabinet_hdb" do
    let(:store) do
      Juno::Adapters::TokyoCabinet.new(:file => File.join(make_tempdir, "adapter_tokyocabinet_hdb"), :type => :hdb)
    end

    include_context 'juno_store'
    it_should_behave_like 'null_stringkey_stringvalue'
    it_should_behave_like 'store_stringkey_stringvalue'
    it_should_behave_like 'returndifferent_stringkey_stringvalue'
  end
rescue LoadError => ex
  puts "\e[31mTest adapter_tokyocabinet_hdb not executed: #{ex.message}\e[0m"
rescue Exception => ex
  puts "\e[31mTest adapter_tokyocabinet_hdb not executed: #{ex.message}\e[0m"
  puts ex.backtrace.join("\n")
end
