# Calendar

## Syncing your SOGo calendar

You can use CalDAV to two-way sync your SOGo calendar with calendar applications on mobile and desktop devices:

For using `Calendar` app on **Android**, install [CalDAV Sync Adapter](https://f-droid.org/en/packages/org.gege.caldavsyncadapter/) from F-Droid, then navigate to `Settings > Accounts` and configure the Sync Adapter with server `https://mailninja.aseriesoftubez.com/SOGo/dav/` and your SOGo credentials. Please make sure the `Account name` is your Hypha email address or you cannot send out invite emails. By default the app has syncing disabled, make sure you enable it.

For ***Thunderbird***, open the calendar tab, click on `+`,  a `Create New Calendar` dialog will pop up. Select `On the Network` button then click next. Select `CalDAV` button, the username is your Hypha email and the location of your personal calendar will be `https://mailninja.aseriesoftubez.com/SOGo/dav/<USER>@hypha.coop/Calendar/personal/` replacing `<USER>` with your username. Keep `Offline Support` selected and click next. The `Name` field should be your Hypha email and the `Email` selector select your Hypha email and click next and your calendar is now added to Thunderbird.

If there are other calendars you want to add from SOGo you can login to SOGo then navigate to the 3 dots beside the calendar you want to add and select `Links to this Calendar` and use the CalDAV link for the location.

For **iOS** and ***macOS***, follow instructions in [Using your existing email client](#using-your-existing-email-client) which also sets up your calendar.

For **other applications and platforms** that support CalDAV, the default calendar is `https://mailninja.aseriesoftubez.com/SOGo/dav/<USER>@hypha.coop/Calendar/personal/`
Some applications may require you to use `https://mailninja.aseriesoftubez.com/SOGo/dav/` or the full path to your calendar, which can be found and copied from within SOGo.

## Creating a shared calendar

We have a shared calendar account which also us to share calendars internally with a group. Using your own account for this purpose will not allow invite emails to be sent out.
1. Login to the shared calendar [SOGo account](https://mailninja.aseriesoftubez.com/SOGo/) with the Virtual Office Shared Calendar credentials on our Passbolt.

1. Navigate to the Calendar interface and create a new calendar

1. Configure shared access by selecting `Sharing...` in the new calendar

1. If there are external collaborators who need `Modify` access, request a SOGo account for them on the `hypha.local` domain and configure as follow

  ![calendar-0](images/calendar-0.png)

1. Optionally, sync with calendar applications using the CalDAV and WebDAV URLs for `Authenticated User Access` and `Public Access`
