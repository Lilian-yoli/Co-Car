const signupName = document.getElementById("signupName");
const signupEmail = document.getElementById("signupEmail");
const signupPassword = document.getElementById("signupPassword");
const signupPhone = document.getElementById("signupPhone");
const signinEmail = document.getElementById("signinEmail");
const signinPassword = document.getElementById("signinPassword");
const singupSubmit = document.getElementById("signupSubmit");
const singinSubmit = document.getElementById("signinSubmit");

singupSubmit.addEventListener("click", () => {
  const signupInfo = {
    signupName: signupName.value,
    signupEmail: signupEmail.value,
    signupPassword: signupPassword.value,
    signupPhone: signupPhone.value
  };
  console.log(signupInfo);
  fetch("/api/1.0/user/signup", {
    method: "POST",
    body: JSON.stringify(signupInfo),
    headers: { "Content-Type": "application/json" }
  }).then((response) => {
    return response.json();
  }).then((data) => {
    if (!data.error) {
      console.log(data);
      window.localStorage.setItem("acees_token", data.data.access_token);
      // document.location.href
    } else {
      alert(data.error);
    }
  });
});

singinSubmit.addEventListener("click", () => {
  const signinInfo = {
    signinEmail: signinEmail.value,
    signinPassword: signinPassword.value
  };
  console.log(signinInfo);
  fetch("/api/1.0/user/signin", {
    method: "POST",
    body: JSON.stringify(signinInfo),
    headers: { "Content-Type": "application/json" }
  }).then((response) => {
    return response.json();
  }).then((data) => {
    if (!data.error) {
      console.log("signin:", data);
      window.localStorage.setItem("access_token", data.access_token);
      document.location.href = "http://localhost:3000/api/1.0/index.html";
    } else {
      alert(data.error);
    }
  });
});
