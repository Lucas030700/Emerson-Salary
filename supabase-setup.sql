-- Emerson Salary Planner Cloud: run this once in Supabase SQL Editor.
create table if not exists public.planner_data (
  user_id uuid primary key references auth.users(id) on delete cascade,
  planner_state jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.planner_data enable row level security;

drop policy if exists "Users can read own planner" on public.planner_data;
create policy "Users can read own planner"
on public.planner_data for select to authenticated
using (auth.uid() = user_id);

drop policy if exists "Users can insert own planner" on public.planner_data;
create policy "Users can insert own planner"
on public.planner_data for insert to authenticated
with check (auth.uid() = user_id);

drop policy if exists "Users can update own planner" on public.planner_data;
create policy "Users can update own planner"
on public.planner_data for update to authenticated
using (auth.uid() = user_id)
with check (auth.uid() = user_id);
