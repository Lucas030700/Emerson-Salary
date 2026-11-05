SALARY & BUDGET PLANNER v31

IMPORTANT: Realtime database setup

1. Deploy the files in this ZIP to the same GitHub Pages repository/site.
2. Open Supabase Dashboard for the project used by this planner.
3. Open SQL Editor, create a new query, and paste the complete contents of
   supabase-setup.sql from this ZIP.
4. Click Run. This safely creates/updates the planner table policies and adds
   public.planner_data to the supabase_realtime publication if it is missing.
5. Open the app on PC and mobile using the same account. Refresh both once.
6. Edit a harmless test field on one device and confirm the other updates
   without refreshing.

The app also retains its cloud polling fallback. Realtime delivery depends on
the Supabase project's Realtime service being enabled and the SQL above being run.

Do not share the Supabase service-role key. The browser app should use only the
project URL and anon/publishable key.
