module Saasu
  
  class Invoice < Base
    
    fields "uid"                       => :integer,
           "lastUpdatedUid"            => :string,
           "transactionType"           => :string,
           "date"                      => :date,
           "dueOrExpiryDate"           => :date,
           "utcFirstCreated"           => :date,
           "utcLastModified"           => :date,
           "summary"                   => :string,
           "invoiceNumber"             => :string,
           "purchaseOrderNumber"       => :string,
           "dueDate"                   => :date,
           "ccy"                       => :string,
           "autoPopulateFxRate"        => :boolean,
           "fcToBcFxRate"              => :decimal,
           "paymentCount"              => :integer,
           "totalAmountInclTax"        => :decimal,
           "amountOwed"                => :decimal,
           "paidStatus"                => :string,
           "requiresFollowUp"          => :boolean,
           "isSent"                    => :boolean,
           "layout"                    => :string,
           "status"                    => :string,
           "typeUid"                   => :string,
           "contactUid"                => :integer,
           "contactGivenName"          => :string,
           "contactFamilyName"         => :string,
           "contactOrganisationName"   => :string,
           "shipToContactUid"          => :string,
           "shipToContactFirstname"    => :string,
           "shipToContactLastName"     => :string,
           "shipToContactOrganisation" => :string,
           "tags"                      => :array,
           "totalAmountPaid"           => :decimal,
           "invoiceItems"              => :array
      
      defaults :query_options => { :transaction_type => "s" }
  end
  
end