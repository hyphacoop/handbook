# Payroll

This guide describes how to process a payroll run for the pay period. The process is as follows:
1. Verify the Employee Payroll sheet.
2. Collect the Long Term Disability (LTD) deductions.
3. Verify benefit deductions via Wagepoint.
4. Submit payroll via Wagepoint.
5. Save reports.

We use [Wagepoint](https://wagepoint.com) to run payroll. If this is the first time you use Wagepoint, watch this introductory video: [Running your first payroll with Wagepoint - Canada](https://www.youtube.com/watch?v=KfLMcqGTDwE) video.

## 1. Confirm Wages (Operations WG)

* You should have a completed [Employee Payroll](http://link.hypha.coop/payroll) sheet for the pay period ready, which indicates the wage information for each employee.

## 2. Collect Expense Reimbursements (Finance WG)
* Follow the Expense [Reimbursement](expense-reimbursement.md#reimbursement) instructions.

## 3. Collect LTD Deductions (Operations WG)

1. Log into the Co-operators portal using the Plan Sponsor credentials found in BitWarden.
2. Go to the Account Information menu
3. Click 'View Bills`
4. Click `View` for the bill for the relevant time period (usually the second from the top at the time of running payroll)
5. Select `Billing Statement` and click `View`. A PDF version of the bill will open.
6. For each employee, add the values from the `CURRENT PERIOD DETAIL LIST` and `PRIOR PERIOD ADJUSTMENTS DETAIL LIST`:
  - `Premium` column, `Employee` subcolumn
  - `Total Amount Due for Member` row

> Adjustments are optional and typically there will not be any.

## 4. Verify Deductions in Wagepoint (Operations WG)

1. Log into Wagepoint as a user with admin privileges.
2. Click the `EMPLOYEES` tab.
3. Click on an employee's name.
4. Click `DEDUCTIONS`.
5. The `Long-term disability premium` deduction must match the value calculated using the benefits plan billing statement.
6. Repeat steps 3-5 for all employees.

## 5. Submit Payroll in Wagepoint

> The payroll is not submitted until the last step of this procedure, and you must click `SAVE/NEXT` during each step to preserve the "draft" progress.

> You can review past payrolls under the `REPORTS` tab.

### Bookkeeper

1. Log into Wagepoint as a user with admin privileges.
2. Click the `PAYROLL` tab.
3. **Paygroup:** Click `NEXT` (we only have one monthly paygroup).
4. **Paydates:** During the current pay cycle, we settle amounts owed up to the _end of the previous month_.
 - 4.1. Set the pay cycle to cover the previous month (e.g., `First day of pay cycle`: Feb 1, `Last day of pay cycle`:  Feb 28).
 - 4.2. Set the `Pay Date` to be the 15th of the current month (e.g., March 15) or the last working day prior if the 15th happens to land on a weekend or holiday (e.g., March 13).
 - 4.3 Make sure `Off Cycle` is set to `No`.
 - 4.3. Click `NEXT`.
5. **Hours:** Click `SAVE/NEXT` to skip this step (we do not use the `Hourly` pay type).
6. **Salary:** Copy and paste all the entries from the [Employee Payroll](http://link.hypha.coop/payroll) sheet for the current pay cycle for each employee. Ensure that the hours and pay line up, these are the basis for ensuring legal minimum wage:
 - 6.1. `HOURS`: Copy the value from the `Hours` spreadsheet column.
 - 6.2. `CURRENT PAY`: Copy the value from the `Regular / Current Pay` spreadsheet column.
 - 6.3 `PUBLIC HOLIDAY PAY` and `VACATION HRS` must be set to 0.00.
 - 6.4 In the `PAY?` column, select `YES` for any Employee who will be paid in this payroll.
 - Follow 6.1-6.4 for each employee.
 - 6.6 Click `SAVE/NEXT`.

### Finance WG
7. **Process:** Click `VIEW ALL` to verify each Employee's amount, and that we have sufficient funds in our [bank account](https://www.desjardins.com/ca/) to pay the invoice total. Click `APPROVE PAYROLL`.
8. **Confirm:** Confirm the payroll run for this pay period. Payroll will be queued for processing and deposits to Employee accounts will happen on the `Pay Date`.

## 6. Save Reports
Three working days ahead of the `Pay Date`, Wagepoint will withdraw funds from our bank account.

After we receive a notification from Wagepoint that payroll reports are ready, we must upload the following documents for our bookkeeper to update Quickbooks (all of these are available under the `REPORTS` tab in Wagepoint):
- Copy the [Payroll Register](https://secure.wagepoint.com/payrollRegister) and [Posting Journal](https://secure.wagepoint.com/postingJournal) to 🔒 [`Finance > Payroll > Payroll Information`](https://drive.google.com/drive/u/0/folders/13ZFnCm0kFLFfvHc83mDiYX5HkE9r0piT). 
- Send the [Payroll Invoice](https://secure.wagepoint.com/invoice) to the QuickBooks receipt address.