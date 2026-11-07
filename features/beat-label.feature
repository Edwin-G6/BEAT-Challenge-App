# language: nl
# Status: concept (opgeschreven uit de bestaande app, nog door Edwin te beoordelen)
Functionaliteit: BEAT-label bij namen
  Naast de naam van een BEAT-lid staat een klein label "BEAT".

  Scenario: Label boven een rit in de feed
    Gegeven een BEAT-lid heeft een rit in de feed
    Dan staat het label "BEAT" bij zijn naam boven de rit

  Scenario: Geen label in de tekst van botberichten
    Gegeven een botbericht noemt de naam van een renner
    Dan staat daar nooit een label "BEAT" achter, ook niet bij een BEAT-lid

  Scenario: Label elders
    Gegeven een BEAT-lid staat op de BAD-pagina, in een tabel of op een persoonlijke kaart
    Dan staat het label "BEAT" bij zijn naam
