<?php

  include_once("./PagSeguroLibrary/PagSeguroLibrary.php");

  $paymentRequest = new PagSeguroPaymentRequest();  
  
  $paymentRequest->setCurrency("BRL");  

  // Referenciando a transação do PagSeguro em seu sistema  
  $paymentRequest->setReference("REF123");  
    
  // URL para onde o comprador será redirecionado (GET) após o fluxo de pagamento  
  $paymentRequest->setRedirectUrl("http://www.lojamodelo.com.br");  
    
  // URL para onde serão enviadas notificações (POST) indicando alterações no status da transação  
  $paymentRequest->addParameter('notificationURL', 'http://www.lojamodelo.com.br/nas');  

?>