# Prenotazioni unghie — design rosa chiaro moderno

## File
- `index.html`: pagina responsive con design rosa chiaro moderno, calendario e orari ogni 30 minuti dalle 09:00 alle 18:00 inclusi, lunedì-sabato.
- `schema.sql`: schema iniziale del database Supabase.

## Pubblicazione GitHub Pages
1. Crea un repository GitHub chiamato `prenotazioni-unghie`.
2. Carica `index.html`, `schema.sql` e `README.md` nella cartella principale.
3. Vai su Settings → Pages.
4. Seleziona Deploy from a branch, branch `main`, cartella `/ (root)`, poi salva.
5. Usa l'URL mostrato da GitHub nella bio Instagram.

## Importante: prenotazioni reali
La pagina è attualmente una demo visiva: non salva ancora prenotazioni online. Per prenotazioni vere, configura Supabase e un endpoint sicuro (ad esempio una Edge Function) per verificare la disponibilità e inserire gli appuntamenti. Il vincolo univoco nel database impedisce doppie prenotazioni simultanee. Non inserire mai una chiave service_role nel codice pubblico e non esporre pubblicamente nomi o telefoni. Mostra alle clienti solo data e orario occupati.
