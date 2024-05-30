window.onload = function() {
    let
      DescChange = document.getElementById("valedit"),
      mySelect   = document.getElementById("payment"),
      dyna1 = document.getElementById("dyna1"),
      dyna2 = document.getElementById("dyna2"),
      dyna3 = document.getElementById("dyna3")
    ;
  
  
    mySelect.onchange = function(){
  
      switch (mySelect.value)  {
        case 'gcash':
          DescChange.textContent = "Insert your GCash Number: ";
          
          var x = document.createElement("INPUT");
          x.setAttribute("type", "number", "max", 10);
          x.setAttribute("id", "gcnm")
          document.body.appendChild(x);

        break;
        case 'cc':
          
          DescChange.textContent = "Enter your name on the credit card:";
          var x = document.createElement("INPUT");
          x.setAttribute("type", "text");
          x.setAttribute("id", "ccn")
          document.body.appendChild(x);


          dyna1.textContent = "Enter";
        break;
        case 'paypal':
          DescChange.textContent = "For security reasons, PayPal isn''t supported.";
        break;
        case 'cod':
            DescChange.textContent = "Enter your address:";
            break;
        default:
            DescChange.textContent = "Seriously?";

        }
    }
  }