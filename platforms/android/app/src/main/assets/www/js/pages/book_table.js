//6.0 -Book Table Page - Start
//
customElements.define('page-book-table', class extends HTMLElement {

  constructor() {
    super();
  }
  connectedCallback() {
    this.innerHTML = pageHeader('حجز طاولة') + `
      <ion-content class="book-table">
          <img src="img/book_table/2.jpg"/>
          <ion-card class="center-align">
          <ion-item>
       <ion-icon  name="calendar" slot="start"></ion-icon>
              <ion-label>تاريخ الحجز</ion-label>
              <ion-datetime id="date" display-format="MMM DD" value="${new Date().toISOString()}"></ion-datetime>
          </ion-item>
          <ion-item>
          <ion-icon name="time" slot="start"></ion-icon>
              <ion-label>وقت الحجز</ion-label>
              <ion-datetime id="time" display-format="HH:mm" value="${new Date().toISOString()}"></ion-datetime>
          </ion-item>
          <ion-item>
            <ion-icon name="person-add" slot="start"></ion-icon>
            <ion-label>عدد المقاعد</ion-label>
            <ion-input id="seats_number" type="number" value="1"></ion-input>
          </ion-item> 
          <ion-button onclick="bookTable()" class="centerButton" color="danger" fill="outline">حجز</ion-button>
          
        </ion-card>       
      </ion-content>    
  `;


  }

});

function bookTable() {
  if (isEmpty("date") || isEmpty("time") || isEmpty("seats_number")) {
    presentToast("أحد الحقول المطلوبة فارغ");
    return false;
  }
  $.post(base_url + "post_book_table.php", {
    date: document.getElementById("date").value,
    time: document.getElementById("time").value,
    seats_number: document.getElementById("seats_number").value,
    user_id: localStorage.getItem("user_id")
  })
    .done(function (data) {
      routerCtrl.push("/myBookings");
    });
}
//
//6.0 -Book Table Page - End
//