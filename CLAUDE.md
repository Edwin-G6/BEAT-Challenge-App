# Werkafspraken BEAT Every Day (BED)

Edwin onderhoudt BED: een Nederlandse daily-cycling-challenge-app (één bestand, vanilla JS) op GitHub Pages.
Repo: Edwin-G6/BEAT-Challenge-App, branch main. Live: https://bed.beatcyclingclub.com/

## Omgevingen
- **Live**: hoofdmap (`index.html`, `renner.html`, `bot.json`, `bot/`).
- **Staging**: map `staging-6txxf1e5ld/` (eigen Supabase-project, STAGING-banner). Hier wordt alles eerst getest.
- **Lab**: map `staging-lab-jngjcx1oln/` voor experimenten (deelt de staging-database).
- Staging is gelijk aan live, op de ene wijziging na die getest wordt. Experimenten gaan naar de lab.

## Werkwijze
- Bouw en test eerst op staging (of in de lab). Naar live alleen na een uitdrukkelijk "zet door naar live".
- Na elke zichtbare wijziging een voorbeeldbeeld sturen.
- Vooraf melden wat een wijziging voor gevolgen heeft (database, nieuwe externe diensten, privacy) en toestemming vragen.
- Vraag eerst voordat je nieuwe versies of varianten aanmaakt.
- Testberichten in staging (zoals "test, deze gaan we niet in live zetten") gaan nooit mee naar live.

## Versienummer
- Staat in de `BETA versie x.xx`-tekst in `index.html` (live en staging).
- Bij elke doorzetting naar live +1 (2.01 wordt 2.02), maar alleen bij echt nieuwe functies. Botberichten tellen niet mee.
- Houd live en staging gelijk en meld welk nummer het is geworden.

## Database en geheimen
- SQL wordt door Edwin zelf gedraaid in de Supabase SQL Editor. SQL-bestanden worden klaargezet in de outputs-map en op verzoek in de chat getoond.
- Nooit geheimen in de chat of in de repo (Resend-sleutel, Turnstile-secret, databasewachtwoorden, service_role-sleutels).
- Staging en live hebben elk een eigen Supabase-project. SQL moet op beide gedraaid worden voordat de bijbehorende code live gaat.

## Gherkin-verhalen zijn leidend
- De map `features/` bevat de user stories in Gherkin (Nederlands, `# language: nl`). Dit is de enige bron voor wat de app moet doen en geldt als toets.
- Elk bestand heeft bovenaan een `# Status:`-regel: concept (door Claude opgeschreven, nog niet goedgekeurd) of goedgekeurd.
- Voor een nieuwe functie of een wijziging in gedrag: eerst het scenario schrijven of aanpassen en door Edwin laten bevestigen, daarna pas bouwen en testen. Wat niet in een scenario staat, bouw je niet zonder eerst te vragen.
- Strijdt de code met een scenario, dan is de code fout. Alleen Edwin wijzigt of keurt scenario's goed.
- Uitgezonderd zijn botberichten, kleine tekstwijzigingen en pure opmaak, zoals bij het versienummer.
- Controleer vóór elke doorzetting naar staging of live welke scenario's geraakt worden en meld per scenario of het is gecontroleerd. Scenario's die de echte database nodig hebben worden met een nagebootste database getest. Zeg dat erbij, en zeg welke Edwin zelf nog moet nakijken.

## Communicatie en commits
- Praat Nederlands met Edwin.
- Commitberichten eindigen met:
  `Co-Authored-By: Claude Sonnet 5.5 <noreply@anthropic.com>`
  `Claude-Session: https://claude.ai/code/session_01VSQrMjSH2MEwLLBzPkkoSD`
