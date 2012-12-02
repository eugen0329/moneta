# Generated file
require 'helper'

begin
  Juno::Adapters::TokyoCabinet.new(:file => File.join(make_tempdir, "adapter_tokyocabinet_hdb"), :type => :hdb).close

  describe "adapter_tokyocabinet_hdb" do
    before do
      @store = Juno::Adapters::TokyoCabinet.new(:file => File.join(make_tempdir, "adapter_tokyocabinet_hdb"), :type => :hdb)
      @store.clear
    end

    after do
      @store.close.should == nil if @store
    end

    it_should_behave_like 'null_stringkey_stringvalue'
    it_should_behave_like 'store_stringkey_stringvalue'
    it_should_behave_like 'returndifferent_stringkey_stringvalue'

  end
rescue LoadError => ex
  puts "Test adapter_tokyocabinet_hdb not executed: #{ex.message}"
rescue Exception => ex
  puts "Test adapter_tokyocabinet_hdb not executed: #{ex.message}"
  #puts "#{ex.backtrace.join("\n")}"
end