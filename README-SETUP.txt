SALARY & BUDGET PLANNER
Company-agnostic, local-only build. No login. No cloud database.

DATA STORAGE
- Planner settings: browser localStorage key salaryBudgetPlanner
- Work & Pay Records: browser localStorage key salaryMonthlyHistory
- Data stays in the browser/device where it was entered.
- No login, authentication, Supabase, cloud sync, or remote database is used.
- Use the same browser and device to access saved data.
- Clearing browser site data or using private/incognito mode may remove or prevent persistence.

PRIVACY
Planner salary, benefits, expenses, and work records are not uploaded to a cloud database. If hosted online, the hosting provider serves the app files, while planner records remain in browser storage.

FILES
- index.html: planner application
- manifest.json: installable app metadata
- sw.js: offline app cache
- icon-192.png / icon-512.png: app icons

DISPLAY
- The page uses a fixed mobile viewport and disables pinch/double-tap zoom on supported touch browsers.
- Desktop browser zoom shortcuts may still be controlled by the browser itself.


Version 12 Emerson benefits integration:
- Official upon-hiring and regularization benefit catalog preloaded.
- Residence-zone selector for approved OT transportation (Zones 1-4).
- ₱60 OT meal + zone transportation automatically apply only when daily OT is at least 3 hours and marked supervisor-approved.
- Perfect attendance award requires explicit monthly eligibility confirmation and calculates the higher of one day base pay (monthly basic / 22) or ₱1,200.
- Clothing allowance accrues as ₱750 in Mar/Jun/Sep/Dec for regular employees.
- Mid-year and 13th month pay can be marked as received for the selected payroll month.
- Night-shift transport eligibility is manually confirmed per date; amount uses selected zone rate provisionally and should be verified with HR.


Version 14 update: For each supervisor-approved OT day of at least 3 hours, the selected residence-zone transportation allowance is added together with the ₱60 OT meal allowance. Holiday premium is calculated, displayed, and added separately; it is not replaced by the 3-hour OT allowances.


Version 15 update: Removed manual Perfect Attendance, Mid-Year Pay received, and 13th Month Pay received checkboxes. Perfect attendance is now automatically awarded only when every scheduled workday across the payroll cycle is recorded as worked and there are no absences. Mid-year pay is automatically included in June for regular employees. 13th month pay is automatically included in December.
