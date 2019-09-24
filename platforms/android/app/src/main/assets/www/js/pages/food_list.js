//2.0 - Food List Page - Start
//
customElements.define('page-food-list', class extends HTMLElement {

    constructor() {
        super();
    }

    connectedCallback() {
        var type_id = getFirstParam();
        this.innerHTML = pageHeader('قائمة الطعام') + `
    <ion-content class="products" id="foodList">
   
    </ion-content>   
  `;
        //Get Data
        $.get(base_url + "get_meals.php?meal_type_id=" + type_id, function (data, status) {
            //Show Results
            var result = JSON.parse(data);
            document.getElementById("foodList").innerHTML = "";
            var resultLength = Object.keys(result).length;
            if (resultLength > 0) {
                for (var i = 0; i < resultLength; i++) {
                    document.getElementById("foodList").innerHTML += `
                    <ion-card onclick="openMeal(`+ result[i]["id"] + `)">
                    <ion-grid>
                        <ion-row>
                            <ion-col size="5" style="height:140px">
                                <img class='avatar-stretch' src="`+ image_url + result[i]["avatar"] + `" style="background-image: url('`+ image_url + result[i]['avatar'] + `');"/>
                            </ion-col>
                            <ion-col size="7" class="mealDetails">
                                <p color="primary" class="prod-title">`+ result[i]["name"] + `</p>
                                <p class="prod-price"> السعر:  `+ result[i]["price"] + ` ل س</p>
                            </ion-col>
                            <p class="prod-desc"> `+ result[i]["description"] + `</p>
                        </ion-row>
                    </ion-grid>
                </ion-card>
   `;
                }
            }
            else {
                document.getElementById("foodList").innerHTML += `
       <ion-item>
       <ion-label>
        <p class="text-center">لا أصناف حتى الآن</p>
        </ion-label>
      </ion-item>`;
            }
        });
    }

});

function openMeal(id) {
    routerCtrl.push("/food/" + id);
}
//
//2.0 - Food List Page - End
//