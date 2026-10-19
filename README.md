# Kiraz Nails Studio — versione aggiornata

## Funzioni UI incluse
- Orari selezionabili: 10:00 e 15:00; lunedì-sabato, domenica chiuso.
- Trattamenti: Soft Gel, Builder Gel, Acrilico, Baby boomer, Poly Gel.
- Nome, email e cellulare obbligatori; note facoltative.
- Caselle per segnalare condizioni della pelle, condizioni oncologiche e allergie.
- Documento preliminare con area firma.
- Pulsante separato **Conferma appuntamento** dopo la firma.
- Schermata finale con riepilogo e pulsante separato **Scarica PDF della conferma**.
- Area informativa sul pannello dello studio.

## IMPORTANTE — non è ancora un sistema di prenotazione operativo
La pagina è statica. La conferma e il PDF sono una dimostrazione locale: non vengono creati appuntamenti nel database, non si impediscono doppie prenotazioni, non vengono inviate email e non esiste ancora un pannello amministratore con dati reali.

Per rendere operative le funzioni richieste servono:
1. Backend/database con vincolo univoco per data e ora, per evitare doppie prenotazioni.
2. Login protetto per l'area admin; mai esporre credenziali segrete nel codice client.
3. Endpoint sicuro per salvare prenotazione, consensi e firma, con accessi e conservazione limitati.
4. Servizio email per inviare copie PDF a cliente e studio.
5. Informativa privacy e valutazione adeguata per eventuali dati relativi alla salute.

Il pulsante “Scarica PDF” apre la stampa del browser: scegliere “Salva come PDF”. Non equivale a un servizio di firma elettronica qualificata.
