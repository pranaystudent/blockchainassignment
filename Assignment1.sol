pragma solidity 0.5.16; 

contract MyCompany {
    
    address public BeachTShirts = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 ;
    
    address public Threads = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2 ;
    
    struct orders {
        uint quantity ;
    }
    
    struct invoiceno {
         uint quantity ;
         uint orderno ;
        }
        
    uint invoiceseq;
    
    uint OrderSent;
        
    event OrderSent(uint quantity);
    
    event PriceSent(address BeachTShirts , uint orderno, uint price);
    
    event InvoiceSent(address BeachTShirts, uint invoiceno, uint orderno);

    
    
    
    
    function sendInvoice(uint orderno) public {

    require(orders[orderno].init);

    require(Threads == msg.sender);
     invoiceseq++;
    
      invoices[invoiceseq] = Invoice(orderno, invoiceseq, true);
      
      InvoiceSent(BeachTShirts,invoiceseq, orderno);



    

    
  }
  
