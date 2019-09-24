//8.0 - Sign In Page - Start
//
customElements.define('page-sign-in', class extends HTMLElement {

    constructor() {
        super();
    }
    connectedCallback() {

        this.innerHTML = pageHeader("تسجيل") + `
      <ion-content class="about-us">
  <div class="background-image"></div>
  <div class="about-us-content">
  <!--<ion-avatar class="myLogo"><img src="img/icon.png"></ion-avatar>-->
      <ion-card>
          <form class="about-form">
              <ion-card-content>
              <ion-card-title class="login-title">
              تسجيل دخول / حساب جديد
              </ion-card-title><br/>
                  <ion-list class="about-us-data">
                      <ion-item>
                          <ion-input id="mobile" type="tel" placeholder="رقم الجوال"></ion-input>
                      </ion-item>
                      <ion-item>
                          <ion-input id="password" type="password" placeholder="كلمة المرور"></ion-input>
                      </ion-item>
                  </ion-list>
                  <br/>
                  <ion-button onclick="signIn()" fill="outline" class="send" block color="danger">دخول</ion-button>         
              </ion-card-content>
          </form>
      </ion-card>
  </div>
</ion-content>
  `;
    }
});


function signIn() {
    if (isEmpty("mobile") || isEmpty("password")) {
        presentToast("أحد الحقول المطلوبة فارغ");
        return false;
    }
    $.post(base_url + "post_user.php", {
        mobile: document.getElementById("mobile").value,
        password: document.getElementById("password").value,
    })
        .done(function (data) {
            var result = JSON.parse(data);
            if (result["id"] != 0) {
                localStorage.setItem("user_id", result["id"]);
                $("#signInMenu").hide(1);
                $("#menuBook").show(1);
                $("#menuBooking").show(1);
                $("#signOutMenu").show(1);
                moveTo("/");
            }
            else {
                presentToast("معلومات دخول خطأ");
            }
        });
}

//
//8.0 - Sign In Page - End
//