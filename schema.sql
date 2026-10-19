-- Schema di partenza NON sufficiente da solo per una produzione sicura.
-- Non raccogliere dati sanitari o firme in questo schema senza aver progettato
-- accessi, conservazione, informativa e base giuridica in modo conforme.
create table if not exists public.bookings (
  id uuid primary key default gen_random_uuid(),
  customer_name text not null,
  email text not null,
  phone text not null,
  service text not null check (service in ('Soft Gel','Builder Gel','Acrilico','Baby boomer','Poly Gel')),
  appointment_date date not null,
  appointment_time time not null check (appointment_time in ('10:00','15:00')),
  notes text,
  status text not null default 'confirmed',
  created_at timestamptz not null default now(),
  constraint one_booking_per_slot unique (appointment_date, appointment_time)
);
-- Prima di attivare: configurare RLS e API/Edge Function sicura.
-- NON inserire service_role key nel codice client.
-- Le caselle salute e i dati firma non sono inclusi qui appositamente:
-- richiedono una valutazione separata di privacy, accesso e conservazione.
