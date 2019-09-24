//7.0 - My Bookings Page - Start
//
customElements.define('page-my-bookings', class extends HTMLElement {

  constructor() {
    super();
  }
  connectedCallback() {
    this.innerHTML = pageHeader('حجوزاتي') + `
      <ion-content>
      <!-- List of Text Items -->
      <div id="bookingsData">
      <ion-list id="bookingList">
       
      </ion-list>
</div>
      <!-- Skeleton List -->
      <div id="bookingsSkeleton">
      <ion-list id="booking-list">
        <ion-item>
        <ion-icon name="restaurant" slot="start"></ion-icon>
          <ion-label>
          <ion-skeleton-text animated style="width: 68%">
              <p> <b>تاريخ الحجز</b>:  12-1-2018</p>
          </ion-skeleton-text>
          <ion-skeleton-text animated style="width: 50%">
               <p><b>ساعة الحجز</b>: 12:12</p>
          </ion-skeleton-text>
          <ion-skeleton-text animated style="width: 43%">
              <p><b>عدد المقاعد</b>:  10</p>
          </ion-skeleton-text>
          </ion-label>           
        </ion-item>
      </ion-list>
</div>
      </ion-content>
  `;


    const skeletonEl = document.getElementById('bookingsSkeleton');
    const dataEl = document.getElementById('bookingsData');

    //Get Data
    $.get(base_url + "get_user_bookings.php?user_id=" + localStorage.getItem("user_id"), function (data, status) {
      //Hide Skeleton El
      skeletonEl.style.display = 'none';
      dataEl.style.display = 'block';
      //Show Results
      var result = JSON.parse(data);
      document.getElementById("bookingList").innerHTML = "";
      var resultLength = Object.keys(result).length;
      if (resultLength > 0) {
        for (var i = 0; i < resultLength; i++) {
          document.getElementById("bookingList").innerHTML += `
        <ion-item id="booking` + result[i]["id"] + `">
        <ion-icon name="restaurant" slot="start"></ion-icon>
          <ion-label>
              <p> <b>تاريخ الحجز</b>:  ` + result[i]["date"] + `</p>
         
               <p><b>ساعة الحجز</b>: ` + result[i]["time"] + `</p>
          
              <p><b>عدد المقاعد</b>:  ` + result[i]["seats_number"] + `</p>           
          </ion-label>   
          <ion-note id="cancel-booking" onclick="cancelConfirm(` + result[i]["id"] + `)">
            <ion-icon name="close-circle-outline"></ion-icon>
          </ion-note>
        </ion-item>
     `;
        }
      }
      else {
        setNoBookings();
      }
    });
  }
});

function setNoBookings() {
  document.getElementById("bookingList").innerHTML += `
         <ion-item>
         <ion-label>
          <p class="text-center">لا حجوزات حتى الآن</p>
          </ion-label>
        </ion-item>`;
}

async function cancelConfirm(id) {
  const alertController = document.querySelector('ion-alert-controller');
  await alertController.componentOnReady();

  const alert = await alertController.create({
    header: 'تأكيد!',
    message: 'هل تريد إلغاء الحجز؟',
    buttons: [
      {
        text: 'إلغاء',
        role: 'cancel',
        cssClass: 'secondary',
        handler: (blah) => {
          console.log('Confirm Cancel: blah');
        }
      }, {
        text: 'موافق',
        handler: () => {
          $.post(base_url + "post_cancel_booking.php", {
            booking_id: id,
            user_id: localStorage.getItem("user_id")
          })
            .done(function (data) {
              $("#booking" + id).remove();
              if ($('#bookingList').children().length <= 0) {
                setNoBookings();
              }
            });
        }
      }
    ]
  });
  return await alert.present();
}
//
//7.0 - My Bookings Page - End
//