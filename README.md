# Saasu

This gem provide a ruby wrapper to the Saasu api.

## Installation

    gem install saasu
    
## Getting Started

Usage is currently limited to fetching invoices.

Firstly setup the library with your api\_key and file\_uid

    Saasu::Base.api_key  = key
    Saasu::Base.file_uid = uid

To fetch all invoices

    invoices = Saasu::Invoice.all
    
You can pass in any conditions as a hash. The keys should be in snake case.

    invoices = Saasu::Invoice.all(:transaction_type => "s", :paid_status => "Unpaid")
    
For a complete list of supported options see the [Saasu API Reference](http://help.saasu.com/api/http-get/)
    
To fetch a single invoice by its uid

    invoice = Saasu::Invoice.find(uid)
    
## Copyright

Copyright (c) 2011 Kieran Johnson. See LICENSE for details.