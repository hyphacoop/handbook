# Guides

Guides explain in practical terms how we do stuff. Any Hypha member can
change these.<sup>[1](#references)</sup>

We are inspired by the idea of "protocols" from the [Lab
Book][clear-lab-book] of the [Civic Laboratory for Environmental Action
Research (CLEAR)][clear]

> Protocols are the "attitudes" or "the manner in which one approaches each and
every element in our space." They are different than pure rules or
instructions; they are ways that we establish order and maintain practices
across our group [...] -- They define the way we ought to proceed or behave in
different situations. As such, they are normative, or premised on values,
morals, and an idea of how things ought to be done. They are a manifestation of
our values.

### Contents

- [Invoices](#invoices)
- [Meetings](#meetings)
- [Shortlinks](#shortlinks)
- [Sensitive Data](#sensitive-data)
- [Timesheets](#timesheets)
- [Voicemail](#voicemail)
- [References](#references)

## Invoices

Prior to creating an invoice, confirm with the client whether they would like to pay in CAD, USD, EUR, or GBP, and in what country their financial institution is based, then proceed with the following steps.

### Creating an invoice for a client

1. Go to **Quickbooks Online**, open the `Invoicing > Customers` tab.

1. If the client is not in the customer list, click `New customer` to create a new profile for the client.

1. Click `Create invoice` on the client you wish to invoice, and use the following settings:
    - Cc.: `finance@hypha.coop`
    - Terms: `Net 15`
    - Message on invoice: `[Payment instructions]` (e.g. Please pay USD 3,135.00)
    - Attachments: `[Timesheet PDFs]`

1. At the bottom of the page, click `Customize` to select a style, or create a new style template as needed.

1. If creating a new style template or the payment information needs to be changed, select the `Content` tab, click on the bottom section of the template preview to reveal the `Add payment details and footer` section, then enter the [applicable payment information](https://github.com/hyphacoop/organizing-private/blob/master/documents/finances/payments.md).

    For example:
    ```
    PAYMENT

    By ACH or domestic wire transfer to:

    ACH Transfer No. (ABA): 026073150
    Wire Transfer No. (ABA): 026073008
    Account No.: [REDACTED]
    Beneficiary Name: Hypha Worker Co-operative Inc.
    Beneficiary Address:

        TransferWise
        19 W 24th Street
        New York
        10010
        United States

    Invoice amount will be adjusted to reflect actual exchange rate after payment.
    ```

    This is an invoice for a client based in the United States, payable in USD to our TransferWise account.
    Look at a previous invoice for examples.

    Review the invoice preview, then click `Done`.

1. Fill in the line items and calculate totals.
    See example below.

    All invoices are in CAD, even if the customer is paying in a foreign currency. This means `RATE` and `AMOUNT` columns are in CAD, and if the contract is an hourly rate based on a foreign currency, you can include the information in the `DESCRIPTION` column, and use an estimated CAD equivalent in the `RATE` column and to calculate the `AMOUNT`.

1. Create a `Subtotal` line item.
    See example below.

1. Add a line item for Canadian HST, and if it is not applicable, indicate the reason in the line item `DESCRIPTION`.
    See example below.

1. Review the invoice preview, then click `Save and send` to email the invoice to the client.

| DESCRIPTION | QTY | RATE | AMOUNT |
|:------------|----:|-----:|-------:|
| Software development for Jan 2020<br />(52.25 @ USD 60.00 = 3,135.00) | 52.25    | 80.00 | 4,180.00           |
| Software development for Feb 2020<br />(20.00 @ USD 60.00 = 1,200.00) | 20.00    | 80.00 | 1,600.00           |
|                                                                       |          |       | Subtotal: 5,780.00 |
| HST @ 0%<br />Intellectual property exports, zero-rated               | 5,780.00 | 0     | 0.00               |

### Settling an invoice payment

Once the client has paid the invoice, we must check the amount received at our receiving account at **Desjardins** (domestic) or **TransferWise** (foreign currency), and record the transaction in **Quickbooks Online**.

#### Domestic

1. After the money arrives to Desjardins, we need to update our records in Quickbooks Online:

    1. In the `Banking` tab, select our `Chequing` account and click `Update` to sync our Desjardins account.

    1. Find the transaction from the client and click on it, then select `Find match` to select the incoming transaction to match.

    1. If there is a discrepancy in the amounts, click the `Resolve` button and change `CATEGORY` to `Bank charges`, then click `Save`.

1. Archive the PDF of the paid and finalized invoice in our [shared drive](https://link.hypha.coop/drive) under the `Invoices` directory with filename `xxxx-project.pdf`, where `xxxx` is the invoice number (e.g. `1001-aether.pdf`).

#### Foreign Currency

1. Confirm the correct amount is received, then convert the foreign currency to CAD.
We can either move the money to the CAD balance in TransferWise, or if the amount is large, we can directly deposit the exchanged amount into our Desjardins account.
The following example shows how to do that in a single transaction from TransferWise:

    1. Confirm that the invoice amount of `3,757.50 USD` is received to our USD balance, then click `Send USD`.

    ![transferwise-0](images/transferwise-0.png)

    ![transferwise-1](images/transferwise-1.png)

    1. Choose `My business` and enter in our [Desjardins account information](https://github.com/hyphacoop/organizing-private/blob/master/documents/finances/payments.md) for the deposit.

    ![transferwise-2](images/transferwise-2.png)

    ![transferwise-3](images/transferwise-3.png)

    1. Note the invoice number in the `Reference` field, then click `Confirm and send`.

    ![transferwise-4](images/transferwise-4.png)

    In this example, a client in the United States sent **3,757.50 USD** to the Hypha USD account at TransferWise, and we deposited **4,904.11 CAD** at the Hypha CAD account at Desjardins.
    The transaction and exchange fee was **20.61 USD**, and the exchange rate was **1.31235**.

    If invoice amounts are small, we may batch many of them in TransferWise before depositing to Desjardins, but we should still convert foreign currencies to CAD as soon as possible and hold the amount as CAD in our TransferWise CAD balance.

    1. In the USD balance, click on `Download a statement` and download a CSV file for the date range that includes the transaction(s).
    Open the file and multiply the amounts with the exchange rate column, then save.

1. After the money arrives to Desjardins, we need to update our records in Quickbooks Online:

    1. Click `View/Edit` on the invoice and add a line item that accommodates for the discrepancy in estimated and actual exchange rates.

        In our example where we deposited **4,904.11 CAD** to Desjardins, if our invoice estimated a CAD `AMOUNT` of **4,950.00 CAD**, we would record a `Exchange rate adjustment @ 1.31235` line item with `-45.89` as `AMOUNT`.

    1. In the `Banking` tab, select our `Chequing` account and click `Update` to sync our Desjardins account.
        Find the transaction from TransferWise and click on it, then change the `Category` to `TransferWise` and click `Add`.

    1. In the `Banking` tab, select our `TransferWise` account to click `File upload` (down arrow next to `Update`) to update our TransferWise account.
        `Browse` and upload the TransferWise CSV we saved earlier, click `Next` and enter the following:
        - Date: `Column 2`
        - Description: `Column 5`
        - Amount: `Column 3`

    Click `Next` and then `Import`.

    1. Find the transaction from the client and click on it, then select `Find match` to select the incoming transaction to match.
        There should be no discrepancy in the amounts.

    1. Find the transaction from our TransferWise account to Desjardins account, then select `Find match`.
        We expect a discrepancy in the amounts.
        Click the `Resolve` button and change `CATEGORY` to `Bank charges`, then click `Save`.

    1. If there is a discrepancy, click the `Resolve` button and change `CATEGORY` to `Bank charges`, then click `Save`.

1. Archive the PDF of the paid and finalized invoice in our [shared drive](https://link.hypha.coop/drive) under the `Invoices` directory with filename `xxxx-project.pdf`, where `xxxx` is the invoice number (e.g. `1001-aether.pdf`).

## Meetings

### Scheduling a meeting

Note: Consider whether this meeting might be a global interest to other
members. Skip the steps below at your discretion for low-stakes topics.

- Try to announce your intention to schedule a meeting on a topic and ask
  who's interested in participating. Allow _at least_ 48 hours for people to respond.
- Consider who might be most interested and what timing might work for
  them.
  - Check the [`availability` calendar for travel/vacation plans][availability].
  - Check everyone's [availability `schedules`][schedules].
- If 2-3 candidate timeslots feel obvious from looking at people's
  availabilities:
  - Reserve them all in [Hypha calendar][calendar] immediately, for example: `HOLD:
    Infrastructure Meeting (Option 1)`
  - Ask in chat whether anyone who wants to attend has any blocks on any
    of the options
- If short-notice or speed of booking is important:
  - Claim an open HOLD [:information_source:](/meetings.md#calendar-holds) slot.
    - If time permits or topic isn't an all-hands matter, consider
      leaving the hold available for someone else
    - If claiming a hold, edit the calendar immediately and announce
      meeting in chat
- If your must find a new timeslot:
  - Create a new poll (we currently use [When2Meet](https://www.when2meet.com/))
  - Leave ample time for completion (ideally 1 week)
  - Check on non-responders in following days and send (gentle)
    reminders as needed

### Hosting a meeting

- **Before** the meeting...
  - create a stub agenda as soon as possible (can be done before scheduling)
    - Hint: use [an agenda `template`][template]
  - add the agenda to the [`meetings` index][meetings]
  - update the [organizational calendar][calendar] as early as possible with candidate and finalized time slots
    progresses
  - mention the meeting time in chat, and link the agenda.
  - encourage migration of related actions, decisions and discussions
    into agenda from chat
- **During** the meeting...
  - ask for agenda items (start of meeting)
  - facilitate discussion
  - keep time
  - call attention to action items, upcoming decisions and discussions
- **After** the meeting...
  - add important dates/reminders to calendar
  - review and merge notes
  - update [meeting index][meetings] as best location changes
    (hackmd => review (PR) => file)
  - as needed, set up loomio threads and decisions
  - as needed, send reminders of action items
  - migrate action items into task tracker
  
### Joining a Jitsi Call

💻 **Desktop.** Follow [`link.hypha.coop/calls`](https://link.hypha.coop/calls) to our default conference platform.

📱 **Mobile**
  1. Install the app. [Android][jitsi-android] | [iOS][jitsi-ios]
  2. 🔗 **Visit** call URL to open app, or 📋 **copy-paste** redirected call URL (e.g. `https://jitsi.hypha.coop/hyphacoop`) into app home screen.
  
   [jitsi-android]: http://jitsi.org/android
   [jitsi-ios]: http://jitsi.org/ios

📞 **Phone**
  1. Use the private dial-in number from our [technical Jitsi documentation](https://github.com/hyphacoop/organizing-private/blob/master/documents/infrastructure/jitsi.md).
  2. _After_ prompt, enter conference code `307 314 3734 #`

## Shortlinks

### Managing shortlinks

We use a custom shortlink service at `link.hypha.coop`. It helps us:
- resolve keywords to URLs from any computer,
- make commonly used resources quickly and easily accessible,
- simplify link-sharing in spoken conversations, and
- align on shorthand keywords for resources.

Instructions on creating and managing shortlinks are available in
our [`shortlinks` repo](https://github.com/hyphacoop/shortlinks).

### Accessing shortlinks

> **Hint:** You can use a URL hash to deep-link into an expanded shortlink.
> Example:&nbsp;http://link.hypha.coop/inventory#MailCow

Shortlinks work on their own in the address bar, but for even easier access on your own
workstation, you can **add a "custom search engine" keyword to your
browser**.

This allows you to type something like `h<tab>shortlinks` into the
search bar, and get https://link.hypha.coop/shortlinks

Here's a screencast of how it works on Chrome:

![screenshot of adding/using shortlinks as keywords with custom search
engine set in browser](https://i.imgur.com/2D8B7kS.gif)

Instructions:
[Chrome](https://www.techrepublic.com/article/pro-tip-add-custom-search-engines-in-chrome-for-more-efficient-searching/)
| [Firefox (requires extension)](https://addons.mozilla.org/en-US/firefox/addon/add-custom-search-engine/)

## Sensitive Data

In general, most staff prefer not to use third-party SaaS services, like Google Drive, for storing sensitive information.

We store **short strings** (like SINs or codes) as password entries in Passbolt. These entries should be shared with both a privileged _group_ that needs access (e.g., Finance WG) and the _individual_.

If we must **store sensitive docs** (like PDFs) in a shared drive for convenience (e.g., Google Drive),
we first encrypt them with a password.
We keep this in Passbolt under the entry "Shared Drive: File Encryption".
All employees can access this password.
Simpler encryption schemes are preferred, for example, default PDF encryption.
We recommend any secured `file.pdf` be renamed to `file.encrypted.pdf` for easy discovery.

As a last resort for sensitive docs, a member can choose to have the document **printed and stored** in a folder in the office.

## Timesheets

Members log their work hours using **Clockify**, and project timesheets may be generated to determine the invoice amount each period for some clients, and often for calculating member wages.
This process is done using the Clockify [Summary Report](https://clockify.me/reports/summary).
Saved reports are found under [Saved Reports](https://clockify.me/reports/saved).

Follow these steps to generate and archive your project timesheets:

1. When a project begins, generate a **team project report** in Clockify and save with the name `project_YYYYMM` where `YYYYMM` indicates the first month the project is active (e.g. [aether_201908](https://clockify.me/bookmarks/5db255d9e8cd9c50073f35ad))
1. When a member joins a project, generate a **personal project report** in Clockify and save with the name `project_YYYYMM_xx` where `YYYYMM` indicates the first month the member is active on the project and `xx` is the initials of the member (e.g. [aether_201908_bl](https://clockify.me/bookmarks/5dab94738a17084c0337690d) and [aether_201908_yj](https://clockify.me/bookmarks/5dab94828a17084c03376911))
1. To generate timesheets, open the team or personal project report and export as PDF for the applicable report period (to be sent to client, if applicable)
1. Timesheet PDFs sent to clients or for internal payroll calculation should be archived in our [shared drive](https://link.hypha.coop/drive) under the `Timesheets` directory. In this example:

    ```
    Timesheets
    ↳ aether_201908
      ↳ personal
        ↳ bl
          # Personal timesheets for bl, used to calculate wages
          - clockify-report-2019-08-01-to-2019-08-31.pdf
          - clockify-report-2019-09-01-to-2019-09-30.pdf
          - ...
        ↳ yj
          # Personal timesheets for yj, used to calculate wages
          - clockify-report-2019-08-01-to-2019-08-31.pdf
          - clockify-report-2019-09-01-to-2019-09-30.pdf
          - ...
      ↳ team
          # Team timesheets, used to invoice client
          - clockify-report-2019-08-01-to-2019-08-31.pdf
          - clockify-report-2019-09-01-to-2019-09-30.pdf
          - ...
    ```

## Voicemail

### Accessing Voicemail 

We use a VoIP phone line provider with forwarding and voicemail from [FreePhoneLine.ca](https://www.freephoneline.ca/login). It helps us:

- Have a phone number without tying it to a physical location
- Receive voicemail by email to [members@hypha.coop](mailto:members@hypha.coop)

To access voicemail inbox you can either call remotely or through a configured SIP client.

- Remotely:
  1. Call the dial-in number `14164770355`
  1. Enter our account number `14378876936`
  1. Enter our password: <in our shared password manager [Passbolt](https://pass.hypha.coop/auth/login)>
- SIP client: 
  Dial `*98`

### Managing Voicemail and Phone Forwarding

To record or update the voicemail greeting [access the voicemail](#accessing-voicemail) per above and select the following options:

- 3 - Personal options
- 3 - Greetings 
- 2 - Personal greeting 
- 2 - Record a personal greeting

## References

<sup>1. Inspired by [Enspiral Handbook: Guides](https://handbook.enspiral.com/guides.html)</sup>

<!-- Links -->
   [clear-lab-book]: https://civiclaboratory.nl/clear-lab-book/
   [clear]: http://civiclaboratory.nl
   [availability]: https://link.hypha.coop/availability
   [schedules]: https://link.hypha.coop/schedules
   [meetings]: https://link.hypha.coop/meetings
   [template]: https://link.hypha.coop/template
   [calendar]: https://link.hypha.coop/calendar
   [service-inventory]: https://hackmd.io/WXS9Ie9wQ8OlmIhSpDpdmw?view
