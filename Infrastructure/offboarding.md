
# Offboarding 

Follow the steps below to offboard an inactive or departing member, employee or contractor. Use the [offboarding checklist](https://github.com/hyphacoop/handbook/blob/master/templates/checklist-offboarding.md) to track your work.
## Google Account
These actions require the `Super Admin` permissions.
### Export user data
Login to [Google Admin](https://admin.google.com)
- In the `Directory/Users` page click on the user being offboarded
- Click on `Security` and reset their password (keep the new password as you will need it again to download when the export is ready in a few days) 
- On the same page, turn off `Login challenge` for 10 minutes
- In Incognito mode, login as the user by visiting the [Google takeout page](https://google.com/takeout)
- Initiate take out
- Wait till export is complete (1-2 days)
- Log in to [Google takeout download page](https://google.com/takeout/downloads)
- Save exported file(s) when completed
- Rename to `email@hypha.coop-takeout-...`
- Upload to the [Former employee export](https://drive.google.com/drive/folders/1HxS9KvSACFL8b9vsVaqmjU-T5Oc8uHuT) folder in our `Privileged` Google drive
### Delete the user
Log back into [Google Admin](https://admin.google.com)
- In the `Directory/Users` page click on the user being offboarded
- Click on `Delete`
- Move `Drive` and `Brand Accounts` to another `@hypha.coop` user (ask in Matrix who the new owner of the deleted account should be)
- Click Delete
- Open the `Operations` group under `Groups` settings
- Click on `Group information`
- Add an alias for the deleted employee
- Remove the email from the [emails document](email.md)

### Signal
An admin user of the `hyphacoop (Emergency Channel)` room needs to remove the employee being offboarded.
- Open the Signal app and open the room
- Open the room setting
- Click on the user being removed
- Click on `Remove from group`

### Matrix 
Room admins for the relevant channels need to perform these actions.
Removing users from non-public rooms:
- In the room user list click on the user being offboarded
- In the user settings click on `Remove from room`
- Enter a optional reason
- Click `Remove from room` button

If the user you are trying to remove have a power level of `100` and is on the `@tomesh.net` homeserver tell server admins (@asotnetworks or @YurkoWasHere) to help remove the user.

### GitHub
A user in the `Owner` group is needed to remove users.
- Login to GitHub and go to `https://github.com/orgs/hyphacoop/people`
- Click on the ⚙️ button beside the user you want to remove
- Click on `Remove from organization...`

### Slack
Open the Slack web app and remove the user from the Hypha workspace.

### Bitwarden
These action needs the admin admin user privileges.
- Login to [Bitwarden](https://vault.bitwarden.com/)
- Click on `Organizations` on the top menu
- Click on the Manage tab
- Select the user you want to remove
- Click on the ⚙️ button between the `Search` and `Invite user` button
- And click on `Remove`
