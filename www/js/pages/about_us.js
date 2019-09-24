//4.0 - About Us Page - Start
//
customElements.define('page-about-us', class extends HTMLElement {

    constructor() {
        super();
    }
    connectedCallback() {
        this.innerHTML = pageHeader('حول التطبيق') + `
      <ion-content class="about-us">
  <div class="background-image"></div>
  <div class="about-us-content">
      <!-- <ion-avatar class="myLogo"><img src="img/icon.png"></ion-avatar> -->
      <ion-card>
          <form class="about-form">
              <ion-card-content>
                                    
               <ion-text color="dark">
                  <h5>يتسم المطعم بأنه مكان مميز يمنحك شعورًا بالألفة، وأنيق يشعرك أنك في بيتك، كما أنه كلاسيكي ومريح يمكنك زيارته مع الأصدقاء والزملاء أو مع العائلة لتسترخي وتستمتع بوجبة لذيذة أو لتهرب من حر النهار، لأنك تعرف أن خيارك المفضل موجود دائمًا في قائمة الطعام لدينا.</h5>
                  <br/>
                  <h5>تتضمن لائحة الطعام مجموعة شهية من البرغر والباستا والسندويش والبيتزا والمقبلات والمشروبات الساخنة والباردة، وقد اختيرت بعناية فائقة لوجبات الفطور والغداء والعشاء ليكون فوتو كافيه مكانكم المفضل دائماً.</h5>
                  <br/>
                  <h5>نقدم لكم يوميًا قائمة متكاملة من الأطعمة والمشروبات وبلمسة ذواقة وجريئة لنضمن أنكم تحصلون على أفضل جودة.</h5>
                  <br/>
                  <h5>نحن ملتزمون بتقديم أشهى المأكولات التي نعدّها من مكونات طازجة ذات نوعية ممتازة لنجلب إلى مائدتكم ألذ الأطباق، وننقل إليكم سعادتنا بوجودكم في كافة مناسباتكم.</h5>
                  <br/>
                  <h5>اختر طلبك من قائمتنا المتنوعة من خلال التطبيق واستمتع بخدمة لا مثيل لها.</h5>
                  <br/>
               </ion-text>
                  <div class="otherButton">
                      <ion-row>
                          <ion-col width-33 text-center>
                              <ion-button color="danger">
                                  <ion-icon slot="icon-only" name="logo-facebook"></ion-icon>  
                              </ion-button>                                  
                          </ion-col>
                          <ion-col width-33 text-center>
                              <ion-button  color="danger">
                                  <ion-icon slot="icon-only" name="logo-googleplus"></ion-icon>  
                              </ion-button>                                  
                          </ion-col>
                          <ion-col width-33 text-center>
                              <ion-button color="danger">
                                  <ion-icon slot="icon-only" name="logo-twitter"></ion-icon>  
                              </ion-button>
                          </ion-col>
                      </ion-row>
                  </div>
                  
              </ion-card-content>
          </form>
      </ion-card>
  </div>
</ion-content>
    
  `;

    }

});

//
//4.0 - About Us Page - End
//