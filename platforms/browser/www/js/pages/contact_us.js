//5.0 - Contact Us Page - Start
//
customElements.define('page-contact-us', class extends HTMLElement {

    constructor() {
        super();
    }
    connectedCallback() {
        this.innerHTML = pageHeader('اتصل بنا') + `
      <ion-content class="about-us">
  <div class="background-image"></div>
  <div class="about-us-content">
  <!--<ion-avatar class="myLogo"><img src="img/icon.png"></ion-avatar>-->
      <ion-card>
          <form class="about-form">
              <ion-card-content>
                  <ion-list class="about-us-data">
                      <ion-item>
                          <ion-input id="emailContant" type="email" placeholder="البريد الإلكتروني"></ion-input>
                      </ion-item>
                  </ion-list>
                  <br>
                  <ion-list class="about-us-data">
                      <ion-item>
                          <ion-textarea id="textContact" rows="6" cols="20" placeholder="أدخل ملاحظاتك هنا..."></ion-textarea>
                      </ion-item>
                  </ion-list>
                  <br/>
                  <ion-button onclick="contactUs()" class="send" fill="outline" color="danger">إرسال</ion-button>                   
              </ion-card-content>
          </form>
      </ion-card>
  </div>
</ion-content>
    
  `;

    }

});

function contactUs() {
    if (isEmpty("emailContant") || isEmpty("textContact")) {
        presentToast("أحد الحقول المطلوبة فارغ");
        return false;
    }
    $.post(base_url + "post_contact_us.php", {
        email: document.getElementById("emailContant").value,
        message: document.getElementById("textContact").value,
    })
        .done(function (data) {
            presentToast("تم إرسال الرسالة بنجاح");
            routerCtrl.push("/");
        });
}
//
//5.0 - Contact Us Page - End
//