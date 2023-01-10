# Onboarding

Welcome to Hypha! This page is to help those getting situated in our organization.

## Bulletin Board 

Check out the board for announcements and notices! Please feel free to [add your own][bb] and put a readable copy in the [folder][bb-folder].

[![Bulletin Board](https://docs.google.com/drawings/d/e/2PACX-1vScf7VtN05yDlUFNVXcc8dcgY7J_zmAozp-Nvz51cnNQ5cHPJ_Xfdp6u5rChpLBKKDryD0junefuHsZ/pub?w=1433&h=975)][bb-folder]


## Our Virtual Office

We interact with the public though the following channels:

- 📞 +1-437-887-6936 (We have specific guides for [Accessing][accessing-vm] and [Managing][managing-vm] Voicemail)
- 📫 #1308-1403 Royal York Road, Etobicoke, Ontario  M9P 0A1
- 📧 hello@hypha.coop (we have specific guides for [Using][accessing-em] Email)

Instead of a physical place we have virtual office with the following spaces:

- [Matrix Chat][matrix-chat] (`chat.tomesh.net`)
- [GitHub Organization][github-org], with a [task tracker][task-tracker]
- [Google Drive][google-drive] (with both privileged 🔒 and public folders)

We also have the following "helper" tools to navigate our office spaces:

- [Link Shortener][link-shortener] (`link.hypha.coop`)


## Onboarding Checklist

This is a checklist for onboarding new members, workers, and contractors to the Co-operative that should be done by the [Operations WG][operations]. 🚀

### _New workers and contractors will provide..._

- Preferred pronouns
- A permanent and/or mailing address
- A personal email for communications
- A google-friendly email address (this could be a prior personal address or a hypha email can be used once set up)
- A [Signal](https://www.signal.org/)-friendly number 
- A [Matrix](https://matrix.org/) account (feel free to register on the [Toronto Mesh homeserver](https://chat.tomesh.net/#/register) where Hypha rooms exist)
- A [Github](https://github.com/) account
- For members and workers:
  - Their Social Insurance Number (SIN) 
  - Completed `TD1` and `TD1-ON` forms 

### _Operations will..._

#### Set up contractor documents

1. Prepare and provide an Independent Contractor Agreement outlining the service description, contractor relationship, including the Intellectual Property Agreement

#### Set up employee documents, employee record and payroll

1. Prepare and provide an Employee Acknowledgement outlining the job description, employment relationship, including the Intellectual Property Agreement

1. Collect information above and complete [employee record](https://link.hypha.coop/employees)

1. Add member SIN to Passbolt and share access with `People Operations` group.
   Change the member access to the entry as read-only, as this information is for recording keeping and the Member should not be able to modify it

1. Collect encrypted (see [Sensitive Data](/guides/sensitive-data.md) guide) [`TD1` and `TD1-ON` forms](https://www.canada.ca/en/revenue-agency/services/forms-publications/td1-personal-tax-credits-returns.html) to [Drive](https://link.hypha.coop/drive)

1. Add member to Clockify and [as Employee in Wagepoint](/guides/payroll.md#adding-a-new-employee) for payroll

#### Set up communications
##### Google Account
These actions require the `Super Admin` permission.
##### Creating a new user
Login to [Google Admin](https://admin.google.com)
- On the admin home page click on `Add a user`
- Fill in their information
- Leave the `Secondary email` and `Phone number` blank
- Click on `Manage user's password, organizational unit, and profile photo`
- Select `Automatically generate a password`
- Click on `ADD NEW USER` button
- Copy the password
- Send a email to the new user using their personal email with instructions to log in using the password above
- Update the [emails document](email.md) with the new email
- Add the new user to the `everyone` group

##### Google Drive
- Add to [Google Drive][google-drive] and invite to calendars:
    - https://link.hypha.coop/calendar
    - https://link.hypha.coop/availability

##### Signal
An admin user of the `hyphacoop (Emergency Channel)` room needs to add the new employee.
- Open the Signal app and open the room
- Open the room setting
- Click on the `Add members` button
- Enter the number or select the contact of the new employee

##### Matrix (Channels as needed)
If the user already has a Matrix account, they can use their own.
If they don't have an account, send a link to our preferred Matrix server (https://chat.tomesh.net) to register. The access token needed to register is `hyphaworkercoop`.
- Invite the user to mandatory channels 
  - `hyphacoop`
  - `hypha:private-general`
- Invite to other channels as required

*If the user needs to be admin in a room and they are on a homeserver other than `@tomesh.net` only give them a max power of `99`. Giving the user a maximum power of `100` will make it impossible to remove the user from the room.*

##### GitHub

To add users to the repos, someone in the `Owner` group is needed to invite new `Outside collaborators` for contractors and `Members` for employees.
- Login to GitHub and go to `https://github.com/orgs/hyphacoop/people`
- Click the `Invite member` button
- In the search box enter their provided GitHub handle and select the user and click `Invite`
- Invite to repos as needed

##### Slack (As needed)

Open the Slack web app and invite using their @hypha.coop email to the Hypha workspace.

##### Bitwarden (As needed)

These action needs the admin admin user privileges.
- Login to [Bitwarden](https://vault.bitwarden.com/)
- Click on `Organizations` on the top menu
- Click on the Manage tab
- Click on `Invite user` button and invite the user with their @hypha.coop email
  - Make sure `USER TYPE` is set to `User`
  - Under `ACCESS CONTROL` select `This user can access only the selected collections.`
  - Select the collections that the new user should have access to. This can also be modified after the user is created
  - Click save and let the user know about the login instructions

<!-- Links -->
[link-shortener]: https://link.hypha.coop
[accessing-em]: /guides/email.md#using-your-new-inbox-users
[accessing-vm]: /guides/voicemail.md
[managing-vm]: /guides/voicemail.md#managing-voicemail-and-phone-forwarding
[matrix-chat]: https://chat.tomesh.net/#/group/+hyphacoop:tomesh.net
[task-tracker]: https://link.hypha.coop/tasks
[github-org]: https://github.com/hyphacoop/
[google-drive]: https://link.hypha.coop/drive
[bb]: https://docs.google.com/drawings/d/1tpczePR5ky0EkdOGGdfU16irDz-gjdC61p2QGoAKhIE/edit
[bb-folder]: https://drive.google.com/drive/folders/1GenT6xQdSEwUlToKhYdQktGlHW6AgRYN?usp=sharing
[operations]: /initiatives.md#operations
