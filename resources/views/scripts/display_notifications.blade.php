<script>
    var notificationsWrapper = $('.dropdown-notifications');
    var notificationsToggle = notificationsWrapper.find('a[data-toggle]');
    var notificationsCountElem = notificationsToggle.find('i[data-count]');
    var notificationsCount = parseInt(notificationsCountElem.data('count'));
    var notifications = notificationsWrapper.find('ul.dropdown-menu');

    if (notificationsCount <= 0) {
        notificationsWrapper.hide();
    }

    // Enable pusher logging - don't include this in production
    Pusher.logToConsole = true;

    var pusher = new Pusher('044d5e42373918d2d4bd', {
        cluster: 'mt1'
        , forceTLS: true
    });

    var channel = pusher.subscribe('my-channel');







    var channel = pusher.subscribe('my-channel');
    channel.bind('my-event', function(data) {
        // alert(JSON.stringify(data));
        console.log(data.message);
        console.log(notificationsCount);

        var existingNotifications = notifications.html();
        var avatar = Math.floor(Math.random() * (71 - 20 + 1)) + 20;
        alert(JSON.stringify(data));
        var newNotificationHtml = `
          <li class="notification active">
              <div class="media">
                <div class="media-left">
                  <div class="media-object">                    
                  </div>
                </div>
                <div class="media-body">
                  <strong class="notification-title">` + data.message + `</strong>
                  <!--p class="notification-desc">Extra description can go here</p-->
                  <div class="notification-meta">
                    <small class="timestamp">about a minute ago</small>
                  </div>
                </div>
              </div>
          </li>
        `;
        notifications.html(newNotificationHtml + existingNotifications);

        notificationsCount += 1;
        notificationsCountElem.attr('data-count', notificationsCount);
        notificationsWrapper.find('.notif-count').text(notificationsCount);
        notificationsWrapper.show();


    });

    // Bind a function to a Event (the full Laravel class)
    // channel.bind('my-event', function(data) {
    //     var existingNotifications = notifications.html();
    //     var avatar = Math.floor(Math.random() * (71 - 20 + 1)) + 20;
    //     alert(JSON.stringify(data));
    //     var newNotificationHtml = `
    //       <li class="notification active">
    //           <div class="media">
    //             <div class="media-left">
    //               <div class="media-object">
    //                 <img src="https://api.adorable.io/avatars/71/`+avatar+`.png" class="img-circle" alt="50x50" style="width: 50px; height: 50px;">
    //               </div>
    //             </div>
    //             <div class="media-body">
    //               <strong class="notification-title">`+data.message+`</strong>
    //               <!--p class="notification-desc">Extra description can go here</p-->
    //               <div class="notification-meta">
    //                 <small class="timestamp">about a minute ago</small>
    //               </div>
    //             </div>
    //           </div>
    //       </li>
    //     `;
    //     notifications.html(newNotificationHtml + existingNotifications);

    //     notificationsCount += 1;
    //     notificationsCountElem.attr('data-count', notificationsCount);
    //     notificationsWrapper.find('.notif-count').text(notificationsCount);
    //     notificationsWrapper.show();
    //   });

</script>
