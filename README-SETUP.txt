SALARY & BUDGET PLANNER
Emerson Salary & Budget Planner with Supabase account login and cloud synchronization.

DATA STORAGE
- Planner settings: browser localStorage key salaryBudgetPlanner
- Work & Pay Records: browser localStorage key salaryMonthlyHistory
- Sign in using the same account on every device.
- Planner settings, payroll history, and benefit selections are stored in the Supabase planner_data table.
- Realtime notifications deliver changes quickly; a 2.5-second database check is also used as a fallback.
- Keep the Supabase project active and retain the planner_data table and its row-level security policies.
- Local browser storage is used as an offline cache. Cloud data is the shared source across devices.

PRIVACY
When signed in, planner salary, benefits, expenses, and work records are stored in the configured Supabase project for cross-device synchronization. Browser localStorage is used as an offline cache.

FILES
- index.html: planner application
- manifest.json: installable app metadata
- sw.js: offline app cache
- icon-192.png / icon-512.png: app icons

DISPLAY
- The page uses a fixed mobile viewport and disables pinch/double-tap zoom on supported touch browsers.
- Desktop browser zoom shortcuts may still be controlled by the browser itself.


Version 28 sync and target slider refinement:
- Cloud writes are queued only when planner data actually changes.
- Routine button taps and unchanged localStorage writes no longer trigger sync.
- Target Remaining slider retains an adjustable range even if the schedule-based OT cap is zero.

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


Version 16 work arrangement update:
- Default Emerson midshift is 1:00 PM–10:00 PM, a 9-hour span including a 1-hour break, for 8 working hours.
- Attendance day selector supports WFH, full office, and split shift.
- Split shift divides the 8 working hours into 4 hours WFH and 4 hours office with a 1-hour break between blocks; choose whether the office block is first or second.
- ₱350 night transportation allowance is automatically added for full-office or split-shift days when the office exit is from 10:00 PM through 6:00 AM. It does not apply to WFH days.
- OT remains recordable on any worked day regardless of WFH/office/split-shift arrangement.


Version 27 synchronization update:
- Avoids cloud writes when the actual planner data has not changed.
- Applies only newer cloud versions and ignores stale/duplicate notifications.
- Realtime Broadcast and Postgres Changes trigger immediate checks; a 2.5-second polling fallback detects updates even if Realtime publication is not configured.
- Remote updates do not echo back as new local edits.
- When there are unsaved local edits, an incoming remote update is not allowed to overwrite them mid-save.
