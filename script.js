// Sign-up Form Validation
const signupForm = document.getElementById("signup-form");

signupForm.addEventListener("submit", (event) => {
  event.preventDefault();

  const firstName = document.getElementById("first-name").value;
  const lastName = document.getElementById("last-name").value;
  const mobile = document.getElementById("mobile").value;
  const email = document.getElementById("email").value;
  const address = document.getElementById("address").value;
  const country = document.getElementById("country").value;
  const state = document.getElementById("state").value;
  const city = document.getElementById("city").value;
  const pincode = document.getElementById("pincode").value;

  // Perform validation checks here
  // You can use regular expressions or other validation methods

  // If all validations pass, you can submit the form or perform other actions
  console.log("Sign-up form submitted successfully!");
});

// Login Form Validation
const loginForm = document.getElementById("login-form");
const forgotPasswordLink = document.getElementById("forgot-password");

loginForm.addEventListener("submit", (event) => {
  event.preventDefault();

  const userId = document.getElementById("user-id").value;
  const password = document.getElementById("password").value;

  // Perform validation checks here
  // You can use regular expressions or other validation methods

  // If all validations pass, you can submit the form or perform other actions
  console.log("Login form submitted successfully!");
});

forgotPasswordLink.addEventListener("click", () => {
  // Implement forgot password functionality here
  console.log("Forgot password link clicked!");
});
