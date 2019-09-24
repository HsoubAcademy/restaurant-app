//3.0 - Food Page - Start
//
customElements.define('page-food', class extends HTMLElement {

    constructor() {
        super();
    }
    connectedCallback() {
        var meal_id = getFirstParam();
        this.innerHTML = pageHeader('الوجبة') + `
      <ion-content class="prodView" id="foodContent">
  
      <!--Displays the heading of the product-->
  
      <ion-grid class="prod-heading">
          <ion-row justify-content-center>
              <ion-col size="12" center align-self-center>
                  <span class="prod-title" id="mealTitle"></span>
              </ion-col>
              </ion-row>
              <ion-row justify-content-center>
              <ion-col size="6" center  align-self-center>
                  <span class="prod-price" id="mealPrice"></span>
              </ion-col>
              <ion-col size="6" align-self-end>
              <!--  <ion-button id="addFavorite"  color="danger">
                      <ion-icon slot="icon-only" name="heart"></ion-icon>  
                  </ion-button>  -->        
              </ion-col>
          </ion-row>
      </ion-grid>
  
      <!--Description of the product -->
      <div class="prod-desc">
          <h5 class="sub-heading">الوصف</h5>
          <p id="mealDesc"></p>
      </div>
  </ion-content>
  `;
        //Get Data
        $.get(base_url + "get_meal_details.php?meal_id=" + meal_id, function (data, status) {
            //Show Results
            var result = JSON.parse(data);
            document.getElementById("mealTitle").innerHTML = result[0]['name'];
            document.getElementById("mealPrice").innerHTML = "السعر:" + result[0]["price"] + " ل س";
            document.getElementById("mealDesc").innerHTML = result[0]['description'];
            var resultLength = Object.keys(result[1]).length;
            $("#foodContent").prepend(`
            <ion-slides class="banner prod-Slide" id="prodSlide" pager="true"> `);
            for (var i = 0; i < resultLength; i++) {

                document.getElementById("prodSlide").innerHTML += `
                <ion-slide>
                    <img src="`+ image_url + result[1][i]['image'] + `" style="background-image: url('`+ image_url + result[1][i]['image'] + `');"/>
                </ion-slide>`;
            }
            $("#foodContent").prepend(`</ion-slides>`);
        });
    }

});

//3.0 - Food Page - End
//