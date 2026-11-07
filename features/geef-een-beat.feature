# language: nl
# Status: concept (opgeschreven uit de bestaande app, nog door Edwin te beoordelen)
Functionaliteit: Geef een BEAT
  Renners kunnen een BEAT (vuistgroet) geven op berichten in de Club Feed.

  Achtergrond:
    Gegeven ik ben ingelogd als renner

  Scenario: Knop onder een botbericht
    Gegeven de feed toont een botbericht van de BED Ploegleider
    Dan staat onder het bericht de knop "👊 Geef een BEAT"

  Scenario: Knop onder een Century Crack
    Gegeven een renner heeft op één dag een rit van 100 km of meer gereden
    Dan staat onder die ritkaart de knop "👊 Geef een BEAT"

  Scenario: Geen knop onder een gewone rit
    Gegeven een renner heeft een rit van minder dan 100 km gereden
    Dan staat onder die ritkaart geen knop "Geef een BEAT"

  Scenario: Een BEAT geven
    Gegeven ik heb nog geen BEAT gegeven op een bericht
    Als ik op "👊 Geef een BEAT" tik
    Dan verandert de knop van kleur
    En achter de knop staat "1 BEAT"

  Scenario: Aantal bij meerdere BEATS
    Gegeven twee renners hebben een BEAT gegeven op hetzelfde bericht
    Dan staat achter de knop "2 BEATS"

  Scenario: Mijn BEAT terugnemen
    Gegeven ik heb een BEAT gegeven op een bericht
    Als ik opnieuw op de knop tik
    Dan krijgt de knop weer zijn oorspronkelijke kleur
    En mijn BEAT telt niet meer mee

  Scenario: Namen van gevers zijn niet zichtbaar
    Gegeven er zijn BEATS gegeven op een bericht
    Dan toont de feed alleen het aantal en geen namen

  Scenario: Alleen renners kunnen een BEAT geven
    Gegeven ik heb geen rennersprofiel
    Dan kan ik geen BEAT geven

  Scenario: Een BEAT blijft bij zijn bericht
    Gegeven er staat een nieuw bericht boven in de feed
    Dan staan de BEATS van de andere berichten nog bij hun eigen bericht
