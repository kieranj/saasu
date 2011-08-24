require 'spec_helper'

describe "Saasu::Base" do
  
  it "should set the default option for collection_name" do
    Saasu::Invoice.defaults[:collection_name].should eql("invoiceListItem")
  end
  
  it "should set the default option for resource_name" do
    Saasu::Invoice.defaults[:resource_name].should eql("invoice")
  end
  
  describe "fields" do
    
    before do
      file     = open(File.join(File.dirname(__FILE__), "mocks", "invoice_item.xml"))
      xml      = Nokogiri::XML(file).css("invoiceListItem")
      @invoice = Saasu::Invoice.new(xml)
    end
    
    it "should define accessors for all fields listed" do
      @invoice.methods.should include("uid=")
      @invoice.methods.should include("uid")
    end
    
    it "should cast any field listed as a decimal to a float" do
      @invoice.amount_owed.should be_an_instance_of(Float)
    end
    
    it "should cast any field listed as a date to a date" do
      @invoice.date.should be_an_instance_of(Date)
    end
    
    it "should cast any field listed as a integer to a integer" do
      @invoice.uid.should be_an_instance_of(Fixnum)
    end
    
    describe "boolean fields" do
      
      it "should cast any field listed as a boolean, with a value of true as true" do
        @invoice.is_sent.should eql(true)
      end
    
      it "should cast any field listed as a boolean, with a value of false as false" do
        @invoice.requires_follow_up.should eql(false)
      end
      
    end
    
    it "should cast any field listed as a array to a array" do
      @invoice.tags.should be_an_instance_of(Array)
    end
      
  end
  
end