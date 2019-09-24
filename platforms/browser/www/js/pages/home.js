//
//1.0 - Home Page - Start
//
customElements.define('page-main', class extends HTMLElement {

    constructor() {
        super();
    }
    connectedCallback() {
        this.innerHTML = pageHeader('الصفحة الرئيسية') + `
      <ion-content>
                      <!-- Home Main Silder -->
                      <ion-slides class="banner" id="banner" pager="true">
                      <ion-slide> 
                          <img src='img/banner/home1.jpg' style="background-image: url('img/banner/home1.jpg');">
                      </ion-slide>
                      <ion-slide> 
                          <img src='img/banner/home2.jpg' style="background-image: url('img/banner/home2.jpg');">
                      </ion-slide>
                      <ion-slide> 
                      <img src='img/banner/home3.jpg' style="background-image: url('img/banner/home3.jpg');">
                  </ion-slide>
                    <ion-slide> 
                    <img src='img/banner/home4.jpg' style="background-image: url('img/banner/home4.jpg');">
                </ion-slide>
                      </ion-slides>
                      <p class="para"> اختر نوع الوجبة </p>
                      <!--To display the main menu-->
                      <ion-grid style="padding: 0">
                          <ion-row class="grid-gallery" id="meals-category">

                          </ion-row>
                      </ion-grid>
                  </ion-content>
  `;

        $.get(base_url + "get_meal_type.php", function (data, status) {
            var result = JSON.parse(data);
            for (var i = 0; i < Object.keys(result).length; i++) {
                document.getElementById("meals-category").innerHTML +=
                    "<ion-col class='col-gallery' text-center onclick='openMealCat(" + result[i]["id"] + ");'>" +
                    " <img class='no-stretch' src='" + image_url + result[i]["image"] + "'>" +
                    " <p>" + result[i]["name"] + "</p>" +
                    "</ion-col>";
            }

        });

        //Image Slider
        var slides = document.getElementById('banner');
        slides.options = {
            effect: 'fade',
            speed: 400,
            autoplay: {
                delay: 2500,
            },
        };
    }
});

function openMealCat(id) {
    routerCtrl.push("/foodList/" + id);
}
//
//1.0 - Home Page - End
//