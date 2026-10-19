-- Schema iniziale Supabase per prenotazioni unghie
create table if not exists public.bookings (
  id uuid primary key default gen_random_uuid(),
  customer_name text not null,
  phone text not null,
  appointment_date date not null,
  appointment_time time not null,
  status text not null default 'confirmed' check (status in ('confirmed','cancelled')),
  created_at timestamptz not null default now(),
  constraint valid_booking_time check (
    appointment_time >= time '09:00' and appointment_time <= time '18:00'
    and extract(minute from appointment_time)::int in (0,30)
    and extract(second from appointment_time)::int = 0
  ),
  constraint no_sunday_bookings check (extract(dow from appointment_date) <> 0)
);
create unique index if not exists one_confirmed_booking_per_slot
on public.bookings (appointment_date, appointment_time)
where status = 'confirmed';
alter table public.bookings enable row level security;
-- Non rendere pubblica la tabella bookings: contiene nomi e telefoni.
-- Usa una Edge Function sicura per creare prenotazioni e una vista pubblica
-- che esponga esclusivamente date/orari occupati.
