
# Email

## Creating new inboxes (Administrators)

What you'll need:
- Admin access to [our Mailcow email server](https://link.hypha.coop/email)
- The following user info (from https://link.hypha.coop/employees):
    - preferred email handle e.g., `handle@hypha.coop` (under "@hypha.coop" column)
    - preferred public name (under "Public Name")
    - email they'd like `@hypha.coop` forwarded to (under "Primary Email")
    - Signal-friendly phone number (under "Signal Phone" or "Phone")

_Note: Consider creating a [new GitHub issue in `hyphacoop/organizing`](https://github.com/hyphacoop/organizing/issues/new) to track email onboarding._

1. Sign into Mailcow: https://link.hypha.coop/email
    <details>
      <summary>View Screenshot 🔎</summary>
      <img alt="Screenshot of Mailcow login page" src="images/email-mailbox-1.png" />
    </details>
2. Navigate to "Mailboxes" tab
3. Click "+Add mailbox" button at top-right of screen
    - If the namespace is already taken by an alias, ensure it's not in use before deleting it.
    <details>
      <summary>View Screenshot 🔎</summary>
      <img alt="Screenshot of Mailcow mailbox tab" src="images/email-mailbox-2.png" />
    </details>
4. Fill out the following fields, noting the password:
    - Username: `[use preferred email handle]`
    - Domain: `hypha.coop`
    - Full name: `[use preferred public name]`
    - Quota: `4096`
    - Password: `[auto-generated]`
    - Active: `checked` ☑
    <details>
      <summary>View Screenshot 🔎</summary>
      <img alt="Screenshot of Mailcow mailbox creation popup" src="images/email-mailbox-3.png" />
    </details>

We'll now log in to confirm access, and set up an initial forwarder if requested to make first-time usage simpler.

5. Open an incognito browser and access webmail login: https://mailninja.aseriesoftubez.com/SOGo/
6. Log into the account you just created.
    <details>
      <summary>View Screenshot 🔎</summary>
      <img alt="Screenshot of webmail login screen" src="images/email-mailbox-4.png" />
    </details>
7. Navigate through these menus:  
    `⚙` (top-left) > `Mail` menu item > `Forward` tab
8. Check "Forward incoming mail" and enter provided primary email, clicking "Keep a copy".
    <details>
      <summary>View Screenshot 🔎</summary>
      <img alt="Screenshot of webmail forwarding settings" src="images/email-mailbox-5.png" />
    </details>
9. From your own `@hypha.coop` email, send a welcome email, like this template:
    > Hi XXXX --
    >
    > Yay! Your Hypha email's set up and forwarding to your personal inbox. People can start emailing you at this address immediately, without any extra effort on your part.
    >
    > Your new email (and login): XXX@hypha.coop  
    > Your password: Sent via Signal to XXX-XXX-XXXX
    >
    > Having said that, when you'd like to start _sending_ email as XXX@hypha.coop, you'll need to take some more steps.
    >
    > The next steps will depend on how you like to handle email:
    > - [If you'd like to use it from your existing Gmail account...](#using-gmail)
    > - [If you'd like to use it from our hosted webmail interface...](#using-the-webmail-interface)
    > - [If you'd like to use it from another email client...](#using-your-existing-email-client)
    >
    > Once you're set up, let us know by sending a test email to infra@hypha.coop, ideally with a short emoji-only story. (Keypad mashes a-ok!) We'll send a friendly poke in a week if we haven't heard back.
    >
    > Questions? Feedback? Reach out via infra@hypha.coop or [`#hyphacoop-infra:tomesh.net`](https://chat.tomesh.net/#/room/#hyphacoop-infra:tomesh.net) for chat.
    >
    > In Solidarity,  
    > xxxxx
10. Send a Signal message with the previously noted password, for example: `🍄 hypha email password: xxxxxxxx`

## Using your new inbox (Users)

Accessing your inbox can be done via the hosted webmail interface or by using the same email client you're already using.

What you'll need:
- Your new email address
- Your password (sent to you by admin on initial setup)

### Using the webmail interface

1. Visit our email server: https://link.hypha.coop/email
2. Click on `Webmail` button
3. Enter your username and password:
    - Username is your `@hypha.coop` email
4. Once logged in you can read your emails and configure your user settings.
5. By default your emails are forwarded to your personal email to disable that follow step 1 in `Using your existing email client`.

### Using your existing email client

<sup>These docs are condensed from [Mailcow's in-depth email client configuration docs](https://mailcow.github.io/mailcow-dockerized-docs/client/#host=MailNinja.aseriesoftubez.com&email=maria%40hypha.coop&name=Maria+Sanchez&ui=mailninja.aseriesoftubez.com&port=443&outlookEAS=1&connector=60.0.2). (Substitute your info for that of "Maria Sanchez").</sup>

1. If requested, the emails to your `@hypha.coop` are forwarded to your personal email address by default. If you want to turn off forwarding of your `@hypha.coop` email, log in to webmail (instructions above)
    - Navigate through these menus:  
        `⚙` (top-left) > `Mail` menu item > `Forward` tab
2. Uncheck the "Forward incoming messages", and save.
3. Open your email client.
4. Go to the "add email account" setting in your client.
5. Enter your name that you prefer that will show up in your outgoing emails and email address when prompted.
6. When prompted for username and password use your new email address e.g., `handle@hypha.coop` for username and your password for your new email.
7. Most email clients will auto-detect server settings based on your email address. If your email client does not auto-detect these settings, enter:
    - IMAP: `mailninja.aseriesoftubez.com` Port: 993 (TLS/SSL)
    - SMTP: `mailninja.aseriesoftubez.com` Port: 465 (TLS/SSL)
8. Once added, you should now be able to send from your new email. In your email client, compose an email to hyphacoop@mailinator.com with a short subject and send.
9. Visit [the corresponding cloud inbox](https://www.mailinator.com/v3/index.jsp?zone=public&query=hyphacoop) and confirm your message has arrived, It might take a few minutes.
10. Don’t forget to email Infra WG as mentioned in onboarding email.

For **iOS** and ***macOS*** following these steps will setup your email client and calendar automatically:
1. Login to your [Mailcow Account](https://mailninja.aseriesoftubez.com/) in the Mailbox tab under `Apple connection profile` click on `Email, calendars and contacts IMAP, SMTP, Cal/CardDAV` to download the Apple connection profile.
1. You can open the file right on your device then open the `System Preferences` app and the `Profiles` icon should have a `1` beside it. 
1. Open the `Profiles` settings to install the profile.

### Using Gmail

1. Log into Gmail
2. Go to Gmail settings, by navigating through these menus:  
    `⚙` (top-left) > `Settings` menu item > `Accounts and Import` tab
3. Under "Send mail as", click "Add another email address".
    <details>
      <summary>View Screenshot 🔎</summary>
      <img alt="Screenshot of Gmail settings page" src="https://i.imgur.com/oQMdIS9.png" />
    </details>
5. In the new popup, enter:
    - Name: e.g., `Maria S` (as will appear to email recipients)
    - Email address: e.g., `maria@hypha.coop`
    - Treat as alias: `checked` ☑
    <details>
      <summary>View Screenshot 🔎</summary>
      <img alt="Screenshot of new alias popup" src="https://i.imgur.com/I2RGv80.png" />
    </details>
4. Click "Next", then:
    - SMTP Server: `mailninja.aseriesoftubez.com` (auto-filled)
    - Port: `587` (auto-filled)
    - Username: e.g., `maria@hypha.coop` (ignore auto-filled)
    - Password: `[your password]`
    - TLS: `checked` ☑
    <details>
      <summary>View Screenshot 🔎</summary>
      <img alt="Screenshot of new alias popup" src="https://i.imgur.com/rh3YhK4.png" />
    </details>
5. Click "Add Account".

We'll now send your first email to Mailinator, a cloud inbox that's helpful for email testing. Then you can confirm for yourself whether it works.

5. Back in your Gmail inbox, click "Compose" to create a new email message.
6. Click the "From" address, and select your new email address from the drop-down.
    <details>
      <summary>View Screenshot 🔎</summary>
      <img alt="Screenshot of selecting new email alias" src="https://i.imgur.com/rOEElJ2.png" />
    </details>
8. Enter hyphacoop@mailinator.com as the "To" address, add a short subject and message, and hit send!
9. Visit [the corresponding cloud inbox](https://www.mailinator.com/v3/index.jsp?zone=public&query=hyphacoop) and confirm your message has arrived, it might take a few minutes.
    <details>
      <summary>View Screenshot 🔎</summary>
      <img alt="Screenshot of Mailinator interface" src="https://i.imgur.com/yWNjdue.png" />
    </details>
11. Once it's safely arrived, you're all set! Start sending email!
12. Don't forget to **email Infra WG** as mentioned in onboarding email. 📤🎉
