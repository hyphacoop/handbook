# Sending Invoices

The process for collecting payments from clients is as follows:
1. The project lead enters the billing information for the relevant time period in the `Financial Planning` spreadsheet.
2. A member of the Finance Working Group (WG) creates an invoice and sends it to the client using QuickBooks Online using the information from the spreadsheet.
3. The Operations Coordinator settles the invoice payment after it is received.
4. Monthly bookkeeping and reconciliation of books.

## 1. Populate Financial Planning Spreadsheet (Project Lead)

* If this is the first time the client is being invoiced:
  * Confirm with the client which currency they will be invoiced in, and in what country their financial institution is based.
  * Work with the Finance WG to set up the right invoice template and cost centres.

* Go to the `Customer Invoices` sheet of the `Financial Planning` spreadsheet and fill in the details for the invoice:
  * `Completed by Lead`: Copy the value from the Service Period cell at the top of the sheet (last day of the month), do not enter the current date.
  * `Service Date`: The end date of the provided service. If a client is billed monthly, this would list the last day of the billed month.
  * `Description`
  * `Qty`
  * `Rate (<currency>)`
  * `Sales Tax`
* Notify the Finance WG that the invoice data is ready, either via email or the finance channel in Matrix.

> Access to the `Financial Planning` spreadsheet is controlled by the Finance WG.


## 2. Send Invoice in QuickBooks Online (Finance WG)

### Bookkeper + Hypha process

1. Notify the bookkeeper that invoices are ready to submit.
2. Review the QuickBooks invoice after the bookkeeper sets is up.
3. Send the invoice to the client.

### Hypha-only process

Go to [Quickbooks Online](https://quickbooks.intuit.com/ca/).

If the client has not been set up:
1. Open the `Customers & leads` menu and select `Customers`.
2. Click `New customer`.
3. Enter the client details and click `Save`.

If the project has not been set up:
1. Open the `Projects` menu.
2. Click `New project`.
3. Enter the project details, including the correct client, and click `Save`.

To create an invoice:
1. Open the `Sales` menu and select `Invoices`.
2. Click `Create invoice`
3. Select the Project from the dropdown menu. QuickBooks will autofill all the client information.
4. Select the Location from the dropdown menu that matches the one in the `Financial Planning` spreadsheet.
5. Copy and paste all the line items from the `Financial Planning` spreadsheet:
   * Service Date
   * Description
   * Qty
   * Rate
   * Sales Tax
   * Leave the `Class` column blank
6. At the bottom of the page, click `Customize` to select the invoice template listed in the `Financial Planning` spreadsheet.
   * If a new template is required or the payment information needs to be changed:
      * Select the `Content` tab, click on the bottom section of the template preview to reveal the `Add payment details and footer` section.
      * Enter the [applicable payment information](https://github.com/hyphacoop/organizing-private/blob/master/documents/finances/payments.md), you can look at a previous invoices for examples.
      * Review the invoice preview, then click `Done`.
7. Click `Preview` and review the information. The calculated total must match the one from the `Financial Planning` spreadsheet.
   * If this is the first time the client is being invoiced, the invoice must be reviewed by the project lead before it is sent out.
8. Click `Save and Send` to send the invoice to the client.
9. If the currency is other than CAD, enter the CAD amount from QBO in the `Amount (CAD)` column of the invoice entry in the `Financial Planning spreadsheet`.

## 3. Accounts Receivable on client invoices (Operations Coordinator)

Before sending new ones, review invoices from the previous month(s) in Quickbooks, and send reminders on any items that are overdue.

Ensure each client has paid their invoices each month, and these payments have been matched and applied to invoices in Quickbooks (QB). Most of these come through Wise, or by cheque and direct deposit to our Desjardins account. Refresh feeds in QB to ensure the most up-to-date transactions are available. Invoices are Net 15, and are due roughly mid-month depending on when they were sent out

## Monthly bookkeeping hand-off (Finance WG)

Monthly checklist for hand-off to bookkeeper

1. Accounts Receivable - Match previous month's payments to the client invoices in QB, and send out reminders on any overdue invoices.
2. Make sure all of the receipts have been forwarded to QuickBooks, including contractor invoices
   * Login and download invoice from the Amanah account
3. Desjardins: Login to the account and download the bank statement and Visa statement. Add to the Desjardins folders in Drive.
4. Wagepoint:  Login into the account and download Payroll Register and Posting Journal documents. Add to the Payroll Information folder in Drive. There is usually an email notification from Wagepoint when these documents are available by the 9th or 10th of the month.
5. Ensure that all of the bank feeds in QB have been refreshed and are up to date.
6. Notify the bookkeeper when everything is ready for them to do the monthly bookkeeping
7. The bookkeeper sends a follow up email with their reports when they have completed the bookkeeping for the month.

## Prepare spreadsheet for next cycle (Finance WG)

After all the invoices for the current service period have been processed, the Finance WG must create a snapshot of the Financial Planning spreadsheet and place it in the `Financial Planning Snapshots` folder.

1. If there are any invoices that have not been populated completely, check with the Project Lead to see if they still want to submit an invoice.
2. Click "Make a Copy".
3. Enter `<YYYY>-<MM> Financial Planning` in the Name field.
4. Select the `Financial Planning Snapshots` folder.
5. Check the following boxes:
   * Share it with the same people
   * Copy comments
   * Include resolve comments
6. Click "Make a Copy".
7. Close the newly created file.
8. Back in the `Financial Planning` spreadsheet, set the "Service Period" cell to the next month.
