# Finance 🚧

This document outlines finance and accounting practices of Hypha Worker Co-operative, including:

- List of accounts at our financial institutions
- Client invoicing and accepted payment methods
- Member payroll and expense reimbursements
- Tools and procedures for bookkeeping, accounting, and tax remittances

## Financial Accounts

- Financial institution: **Desjardins**
- Account type: business chequing
- Payment requirements from account:
  - `<= CAD$200`: sign-off by **one** signing member in the Finance WG
  - ` > CAD$200`: sign-off by **two** signing members in the Finance WG

Hypha is expected to conduct business with clients from other countries and is ready to [accept funds in CAD, USD, EUR, and GBP](https://transferwise.com/help-smart/11/getting-started/2571907/what-currencies-do-you-support).
We use **TransferWise** to minimize transaction and currency exchange fees.
Our TransferWise account has local accounts in Canada, United States, Europe, and the United Kingdom, so we can bill clients as a local financial institution in their local currency.
Our TransferWise account does not require multiple signatures, and the Finance WG is responsible for transferring money into our main Desjardins account when accumulated funds exceed a CAD 10,000 threshold, or earlier as deemed appropriate.

## Invoicing Clients

Hypha charges clients on a sliding scale, and projects may be billed hourly, weekly, monthly, or per project, depending on the specifics of each project.
The recommended practice is to send an invoice every month, or a quote if the amount for the month is small and at the discretion of the project.

In cases where an invoice is not collected in time for payroll, or failed to be collected altogether, this is treated as a cost to the Co-operative and we strongly advocate that this not affect the timely payroll to the Member.

In order to create invoices and to collect payments, there are three general steps that need to be performed in order.

### Generating Timesheets

For clients with billing models that require tracked work hours, **Clockify** is used to generate timesheets for determining the invoice amount each period, and often for calculating Member wages.
These timesheets are archived in our [shared drive](https://link.hypha.coop/drive) under the `Timesheets` directory and may be attached to invoices at client request.

Refer to the guides for [Timesheets](/guides.md#timesheets) to generate and archive your project timesheets.

### Generating Invoices

Refer to the guides for [Invoices](/guides.md#invoices) and generate an invoice in **Quickbooks Online** based on the project pricing structure (e.g. timesheet hours and project rate) and payment information.

In general, the client is responsible for paying applicable HST and transaction costs charged by their financial institution, and Hypha pays the cost of receiving the payment (e.g. cost of receiving a wire).
Invoices are sent to clients and are preferably due 2 weeks after the invoice date (i.e. Net 15), after which a late fee may be charged for each additional week.

### Settling Payments

After client payments are collected at our **Desjardins** or **TransferWise** accounts, we need to:

1. Move money to the appropriate accounts at our financial institutions
1. Record exchange rates and transaction costs
1. Update our bookkeeping records in **Quickbooks Online**
1. Finalize and archive invoices

Refer to the guides for [Invoices](/guides.md#invoices) to handle the settling of payments with someone from the Finance WG.

## Member Payroll

Member wages are paid on the **pay day**, which is the **15th of each month** or the last working day prior if the 15th happens to land on a holiday.
A Member's wage is calculated based on the billable hours of work rendered up to the end of the previous month.
For example:

> The March 15 pay day covers the "pay period" of March, and it pays for the work rendered throughout the month of February.

Before the **7th of each month**, Members must submit payroll information to the [Employee Payroll](https://link.hypha.coop/payroll) sheet in order to be paid for the current pay period.

All wages, expense reimbursements, and withheld taxes are managed using Wagepoint and Quickbooks Online, which are linked to our main Desjardins account.

### Calculating Member Wages

Each Member's wage for a pay period is calculated based on the projects and roles they participate in, and it usually varies from month to month.

Pay from billable project work will have a percent-based portion (the "clip") deducted from it to fund administrative costs and collective programs of the Co-operative.
Collective programs, current and prospective, include:

- Vacation pay
- Public holiday pay
- CPP & EI employer contributions
- Member health benefits (future)
- Solidarity projects fund (future)
- Member & co-op development fund (future)
- Reserve fund (future)
- Other collective expenses of the Co-operative

The **regular pay** of a Member is calculated with:

```
REGULAR_PAY = (1 - CLIP) * BILLED_AMOUNT (before transaction costs)
```

The **clip** is currently set at **25%** and is the same across all projects over a period, but can be revised as necessary by consensus.

In addition to the regular pay, Members are entitled to:

- 5% public holiday pay based on the regular pay amount
- 4% vacation pay based on the regular + public holiday pay amount
- CPP & EI employer contributions

These annualized amounts are calculated and included for each pay period.
You can use the [Wage Calculator](https://link.hypha.coop/wage) to determine these amounts.

After tax withholdings and other applicable deductions (e.g. CPP & EI employee contributions), the net amount is electronically transferred to the Member's bank account on pay day using **Wagepoint**.
Refer to the guides for [Payroll](/guides.md#payroll) to set up the payroll run for each pay period.

### Expense Reimbursement

Member expenses eligible for reimbursement should be submitted to the [Expense Reimbursement](https://link.hypha.coop/expenses) sheet and receipts uploaded to [Employee Expenses](https://link.hypha.coop/receipts) in the same quarter they are incurred.
Reimbursement amounts are paid out with wages on the next pay day, but does not appear on tax forms.

Follow the guides for [Expense Reimbursement](/guides.md#expense-reimbursement) to submit an eligible expense.

### Work on Public Holidays

The Co-operative recommends Members to not work on a public holiday, but in the case where Members voluntarily chooses to, or under special circumstances, they will receive regular wages with "substitute time off", and there should be no expectation of "public holiday plus premium pay".
Since Members have variable hours of work per period, and a 5% annualized public holiday pay is included in Member wages in every pay period, Members are already adequately compensated for any "substitute time off".
Therefore, wages for work performed on public holidays are calculated without "premium pay", and this policy is compliant with the [Employment Standards Act of Ontario](https://www.ontario.ca/document/your-guide-employment-standards-act-0/public-holidays).

### Reporting & Remitting Taxes

Hypha has the following [program accounts][program-accounts] with the Canada Revenue Agency (CRA):

   [program-accounts]: https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/changes-your-business/adding-accounts-your-business-number-bn.html

- ☑️ `RC0001` **Corporate Income Tax (RC)** is filed/reported and remitted/paid each tax year
- ☑️ `RP0001` **Payroll Deduction (RP)** is reported and paid each pay period
- 🔜 `RT0001` **GST/HST (RT)** is [reported and paid][sales-tax-how] each filing period (TBD)

   [sales-tax-how]: https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/gst-hst-businesses/account-register.html#once

As a non-profit organization, our co-operative has tax-exempt status and pays no corporate income tax.

The Finance WG is responsible for bookkeeping and calculating wage deductions using Quickbooks Online, then reporting and remitting withheld wages to CRA each month.
These remittances are handled through Wagepoint on their [non-accelerated remittance schedule][wagepoint-remittance].

   [wagepoint-remittance]: https://wagepoint.kayako.com/article/2-add-company-and-payroll-information

At the end of each calendar year, Hypha's accountant will send a T4 to each Member and to CRA for personal income tax filings.
The accountant will also file annual tax returns for each fiscal year-end, set on **June 30**, and coordinate with the Finance WG to facilitate filings and remittances.
