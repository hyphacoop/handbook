
# Payroll

This guide describes how to use our payroll service provider, [Wagepoint](https://wagepoint.com), to set up a payroll run for the pay period.
You should have a completed [Employee Payroll](http://link.hypha.coop/payroll) sheet for the pay period ready, which indicates the wage information for each Employee that you will need to enter into Wagepoint.

If this is the first time you use Wagepoint, please first review the [Running your first payroll with Wagepoint - Canada](https://www.youtube.com/watch?v=KfLMcqGTDwE) video.

## Running payroll

1. Log into Wagepoint as a user with admin privileges.

1. Visit the `PAYROLL` tab.

1. **Paygroup:** Hit `NEXT` since we only have one monthly paygroup.

    ![payroll-running-payroll-0](../images/payroll-running-payroll-0.png)

1. **Paydates:** Set the pay cycle to cover the current month (e.g., March 1-31) and the `Pay Date` to be the 15th of the current month (e.g., March 15) or the last working day prior if the 15th happens to land on a holiday (e.g., March 13).
    During that period, we settle amounts owed up to the _end of the previous month_ (e.g., Feb 29).

    ![payroll-running-payroll-1](../images/payroll-running-payroll-1.png)
    
    Set the dates as per the above, and hit `NEXT`.
    Nothing is finalized until the last step, and you must hit `SAVE/NEXT` during each step to preserve "draft" progress.

1. **Hours:** Hit `SAVE/NEXT` to skip since we currently do not use the `Hourly` pay type.

1. **Salary:** Enter `HOURS`, `CURRENT PAY`, `EXPENSE REIMBURSEMENT`, and `PUBLIC HOLIDAY PAY` according to the [Employee Payroll](http://link.hypha.coop/payroll) sheet for the pay period.
    Ensure that hours and pay line up, as these are the basis for ensuring legal minimum wage.

    The `VACATION HRS` for everyone is `0` due to our variable work hours and that annualized amounts will be paid out each pay period.
    
    In the `PAY?` column, select `YES` for any Employee who will be paid in this payroll.

    You can review past payrolls under the `REPORTS` tab.

1. **Process:** Click `VIEW ALL` to verify each Employee's amount, and that we have sufficient funds in our [bank account](https://www.desjardins.com/ca/) to pay the invoice total.
    Click `APPROVE PAYROLL`.

1. **Confirm:** Confirm the payroll run for this pay period.
    It will be queued for processing and deposits to Employee accounts will happen on the `Pay Date`.

1. Three working days ahead of the `Pay Date`, Wagepoint will withdraw funds from our bank account.
    After we receive a notification from Wagepoint that payroll reports are ready, we need to upload the following PDFs for our bookkeeper to update Quickbooks once per month:
    - [Payroll Register](https://secure.wagepoint.com/payrollRegister) and [Posting Journal](https://secure.wagepoint.com/postingJournal) to 🔒 [`Finance > Payroll > Payroll Information`](https://drive.google.com/drive/u/0/folders/1wWo9KqNwWdUK5d-jkApV3id_Y_dpftT9)
    - [Payroll Invoices](https://secure.wagepoint.com/invoice) to 🔒 [`Finance > Expenses > Wagepoint Receipts`](https://drive.google.com/drive/u/0/folders/19kHFXd50bw6x-sw9qEVnAGMkwpd1i2Vv)

## Adding a new employee

1. Log into Wagepoint as a user with admin privileges.

1. Click the `EMPLOYEES` tab and then the `ADD NEW EMPLOYEE` button at the bottom right corner.

1. Add stub details for new employee.
    Since we calculate wages per pay period outside of Wagepoint, set:
    -  Pay Type: `Yearly`
    -  Pay Rate: `0`

    ![payroll-new-employee-0](../images/payroll-new-employee-0.png)

1. Return to the `EMPLOYEES` tab and click the Employee's name.
    You should now be on their profile, specifically `THE PERSON` tab, which you can fill out with info from our [employee records](https://link.hypha.coop/employees).

    ![payroll-new-employee-1](../images/payroll-new-employee-1.png)

    Fill out everything you can, but leave `External ID` blank.

1. In the `THE JOB` tab, set up the Employee with the salaried method:
    - Pay Type: `Yearly`
    - Annual Salary: `$0.00`
    - Expected Hour per Week: `0.00`
    - Job Title: `No title`
    - Department: `Salary`
    - Vacation will: `be paid out each pay`

    ![payroll-new-employee-2](../images/payroll-new-employee-2.png)

1. In the `TAX INFO` tab, set up the Employee's tax info based on the `TD1` and `TD1-ON` forms they submitted.
    For example:

    ![payroll-new-employee-3](../images/payroll-new-employee-3.png)

1. In the `DIRECT DEPOSIT` tab, set up the bank account for direct deposit based on account information or a void cheque they submitted.

1. Return to the "Employee" tab listing, and use the "mail" icon to send an invite to the Employee to Wagepoint.

    ![payroll-new-employee-4](../images/payroll-new-employee-4.png)
    