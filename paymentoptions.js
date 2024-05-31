window.onload = function() {
  let DescChange = document.getElementById("valedit");
  let mySelect = document.getElementById("payment");

  mySelect.onchange = function() {
      clearInputs(); // Clear existing input fields

      switch (mySelect.value) {
          case 'gcash':
              DescChange.textContent = "Enter GCash Details:";
              createInput("number", "gcnm", "Enter GCash Number:");
              break;
          case 'cc':
              DescChange.textContent = "Enter Credit Card Details:";
              createInput("text", "ccn", "Enter name on Card:");
              createInput("number", "cvs", "Enter CVS:");
              createInput("text", "cnum", "Enter Credit Card number:");
              break;
          case 'paypal':
              DescChange.textContent = "For security reasons, PayPal isn't supported.";
              break;
          case 'cod':
              DescChange.textContent = "Enter Home Address:";
              createInput("text", "home_addr", "Enter home address:");
              break;
          default:
              DescChange.textContent = "Seriously?";
      }
  }

  // Function to clear input fields
  function clearInputs() {
      clearcontent("gcnm");
      clearcontent("ccn");
      clearcontent("cvs");
      clearcontent("cnum");
      clearcontent("home_addr");
  }

  // Function to create input fields
  function createInput(type, id, placeholderText) {
      let input = document.createElement("input");
      input.setAttribute("type", type);
      input.setAttribute("id", id);
      input.setAttribute("placeholder", placeholderText);
      document.body.appendChild(input);
  }

  // Function to clear input fields
  function clearcontent(elementID) {
      let element = document.getElementById(elementID);
      if (element) {
          element.parentNode.removeChild(element);
      }
  }
}
