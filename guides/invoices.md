

# Invoices

Prior to creating an invoice, confirm with the client whether they would like to pay in CAD, USD, EUR, or GBP, and in what country their financial institution is based, then proceed with the following steps.

## Creating an invoice for a client

1. Go to [Quickbooks Online](https://quickbooks.intuit.com/ca/), open the `Invoicing > Customers` tab.

1. If the client is not in the customer list, click `New customer` to create a new profile for the client.

1. Click `Create invoice` on the client you wish to invoice, and use the following settings:
    - Cc.: `finance@hypha.coop`
    - Terms: `Net 15` (may vary by project)
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

1. In the `SALES TAX` column, select one of `HST ON`, `zero-rated`, `exempt`, or `out of scope` for each line item.
    See example below.

1. Review the invoice preview, then click `Save and send` to email the invoice to the client.

| DESCRIPTION | QTY | RATE | AMOUNT | SALES TAX |
|:------------|----:|-----:|-------:|----------:|
| Software development for Jan 2020<br />(52.25 @ USD 60.00 = 3,135.00) | 52.25    | 80.00 | 4,180.00           | zero-rated |
| Software development for Feb 2020<br />(20.00 @ USD 60.00 = 1,200.00) | 20.00    | 80.00 | 1,600.00           | zero-rated |

## Settling an invoice payment

Once the client has paid the invoice, we must check the amount received at our receiving account at [Desjardins](https://www.desjardins.com/ca/) (domestic) or <a href="https://wise.com" data-proofer-ignore>TransferWise</a> (foreign currency), and record the transaction in [Quickbooks Online](https://quickbooks.intuit.com/ca/).

### Domestic

1. After the money arrives to Desjardins, we need to update our records in Quickbooks Online:

    1. In the `Banking` tab, select our `Chequing` account and click `Update` to sync our Desjardins account.

    1. Find the transaction from the client and click on it, then select `Find match` to select the incoming transaction to match.

    1. If there is a discrepancy in the amounts, click the `Resolve` button and change `CATEGORY` to `Bank charges`, and `GST/HST` to `Exempt (0%)` since bank charges are exempt items, then click `Save`.

1. Archive the PDF of the paid and finalized invoice in our [shared drive](https://link.hypha.coop/drive) under the `Invoices` directory with filename `xxxx-project.pdf`, where `xxxx` is the invoice number (e.g. `1001-aether.pdf`).

### Foreign Currency

1. Confirm the correct amount is received, then convert the foreign currency to CAD.
We can either move the money to the CAD balance in TransferWise, or if the amount is large, we can directly deposit the exchanged amount into our Desjardins account.
The following example shows how to do that in a single transaction from TransferWise:

    1. Confirm that the invoice amount of `3,757.50 USD` is received to our USD balance, then click `Send USD`.

    ![transferwise-0](../images/transferwise-0.png)

    ![transferwise-1](../images/transferwise-1.png)

    1. Choose `My business` and enter in our [Desjardins account information](https://github.com/hyphacoop/organizing-private/blob/master/documents/finances/payments.md) for the deposit.

    ![transferwise-2](../images/transferwise-2.png)

    ![transferwise-3](../images/transferwise-3.png)

    1. Note the invoice number in the `Reference` field, then click `Confirm and send`.

    ![transferwise-4](../images/transferwise-4.png)

    In this example, a client in the United States sent **3,757.50 USD** to the Hypha USD account at TransferWise, and we deposited **4,904.11 CAD** at the Hypha CAD account at Desjardins.
    The transaction and exchange fee was **20.61 USD**, and the exchange rate was **1.31235**.

    If invoice amounts are small, we may batch many of them in TransferWise before depositing to Desjardins, but we should still convert foreign currencies to CAD as soon as possible and hold the amount as CAD in our TransferWise CAD balance.

    1. In the USD balance, click on `Download a statement` and download a CSV file for the date range that includes the transaction(s).
    Open the file and multiply the amounts with the exchange rate column, then save.

1. After the money arrives to Desjardins, we need to update our records in Quickbooks Online:

    1. Click on the invoice and add a line item that accommodates for the discrepancy in estimated and actual exchange rates.

        In our example where we deposited **4,904.11 CAD** to Desjardins, if our invoice estimated a CAD `AMOUNT` of **4,950.00 CAD**, we would record an `Exchange rate adjustment @ 1.31235` line item with `-45.89` as `AMOUNT`.
        Make sure you take the exchange rate from the TransferWise CSV.

    1. In the `Banking` tab, select our `Chequing` account and click `Update` to sync our Desjardins account.
        Find the transaction from TransferWise and click on it, and change the `Category` to `TransferWise`, change `Tax code` to `Out of Scope (Sales)` since this is an internal transfer, then click `Add`.

    1. In the `Banking` tab, select our `TransferWise` account to click `File upload` (down arrow next to `Update`) to update our TransferWise account.
        `Browse` and upload the TransferWise CSV we saved earlier, select `TransferWise` as the account, then click `Next` and enter the following:
        - Date: `Column 2`
        - Description: `Column 5`
        - Amount: `Column 3`

    Click `Next` twice, and then `Yes` to import.

    1. Find the transaction from the client and click on it, then select `Find match` to select the incoming transaction to match.
        There should be no discrepancy in the amounts.

    1. Find the transaction from our TransferWise account to Desjardins account, then select `Find match`.
        We expect a discrepancy in the amounts.
        Click the `Resolve` button and change `CATEGORY` to `Bank charges`, then click `Save`.

    1. If there is a discrepancy, click the `Resolve` button and change `CATEGORY` to `Bank charges`, and `GST/HST` to `Exempt (0%)` since bank charges are exempt items, then click `Save`.

1. Archive the PDF of the paid and finalized invoice in our [shared drive](https://link.hypha.coop/drive) under the `Invoices` directory with filename `xxxx-project.pdf`, where `xxxx` is the invoice number (e.g. `1001-aether.pdf`).
