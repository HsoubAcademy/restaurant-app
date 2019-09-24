//
//0.0 - General - Start
//
//Define App Header
function pageHeader(pageTitle) {
    return `
    <ion-header translucent="true">
        <ion-toolbar color="danger">
            <ion-buttons slot="end">
                <!--<ion-button onclick="clickedStar()">
                    <ion-icon slot="icon-only" name="contact"></ion-icon>
                </ion-button>-->
            </ion-buttons>

            <ion-title>` + pageTitle + `</ion-title>

            <ion-buttons slot="start">
                <ion-menu-toggle auto-hide="false">
                    <ion-button>
                        <ion-icon slot="icon-only" name="menu"></ion-icon>
                    </ion-button>
                </ion-menu-toggle>
            </ion-buttons>
        </ion-toolbar>
    </ion-header>
    `
}

//Page Navigation 
function moveTo(page) {
    routerCtrl.push(page);
    menuCtrl.close();
}

//SignOut
function signOut() {
    localStorage.removeItem("user_id");
    $("#signInMenu").show(1);
    $("#menuBook").hide(1);
    $("#menuBooking").hide(1);
    $("#signOutMenu").hide(1);
    routerCtrl.push("signIn");
    menuCtrl.close();
}

//Check Login
if (localStorage["user_id"]) {
    $("#signInMenu").hide(1);
    $("#menuBook").show(1);
    $("#menuBooking").show(1);
    $("#signOutMenu").show(1);
} else {
    $("#signInMenu").show(1);
    $("#menuBook").hide(1);
    $("#menuBooking").hide(1);
    $("#signOutMenu").hide(1);
}

//Get First Param
function getFirstParam() {
    var url = "" + window.location;
    var n = url.lastIndexOf('/');
    var id = url.substring(n + 1);
    return id;
}

//Show Toast
async function presentToast(message) {
    const toastController = document.querySelector('ion-toast-controller');
    await toastController.componentOnReady();

    const toast = await toastController.create({
        message: message,
        duration: 2000,
        color: "danger"
    });
    return await toast.present();
}

//Check Empty 
function isEmpty(id) {
    if (document.getElementById(id).value == "") {
        return true;
    }
    else {
        return false;
    }

}
//
//0.0 - General - End
//
