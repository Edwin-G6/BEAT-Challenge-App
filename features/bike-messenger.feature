# language: nl
# Status: concept (opgeschreven uit de bestaande app, nog door Edwin te beoordelen)
Functionaliteit: Bike Messenger
  De Bike Messenger is een kaart van Nederland, België en Luxemburg waarop BEAT-leden hun plek zetten met hun postcode.

  Scenario: BEAT-lid ziet de kaart
    Gegeven ik ben een BEAT-lid
    Als ik op "Bike Messenger" tik
    Dan zie ik de kaart
    En bovenaan staat duidelijk "Members only · BEAT-leden"

  Scenario: Niet-lid krijgt een melding
    Gegeven ik ben geen BEAT-lid
    Als ik op "Bike Messenger" tik
    Dan zie ik de avatar "straks/m" met de tekst "De Bike Messenger Challenge is members only."
    En ik zie de kaart niet

  Scenario: Niet-lid ziet de postcodeoptie, maar kan hem niet gebruiken
    Gegeven ik ben geen BEAT-lid
    Als ik Mijn profiel open
    Dan zie ik het onderdeel "Mijn plek op de kaart"
    En er staat dat dit alleen voor BEAT-leden is
    En de velden en de knop zijn uitgeschakeld

  Scenario: Postcode opslaan
    Gegeven ik ben een BEAT-lid
    Als ik land, vier cijfers en postcode invul en opsla
    Dan bewaart de app alleen de vier cijfers, de plaats en het punt op de kaart
    En ik ga na het opslaan naar de ververste kaart met mijn stip

  Scenario: Wat andere BEAT-leden zien
    Gegeven ik ben een BEAT-lid
    Dan zie ik van andere leden alleen een groene stip
    En pas als ik met de muis over de stip ga, zie ik de rennersnaam met rugnummer
    En ik zie geen e-mailadres, geen volledige naam en geen volledige postcode

  Scenario: Alle stippen zijn dezelfde kleur
    Dan hebben alle stippen op de kaart dezelfde groene kleur

  Scenario: Niet-leden krijgen de kaartgegevens ook niet via de database
    Gegeven ik ben geen BEAT-lid
    Dan weigert de database mijn postcode en geeft hij geen kaartgegevens terug

  Scenario: Beheerder
    Gegeven ik ben beheerder
    Dan zie ik de kaart en kan ik een postcode zetten, ook zonder BEAT-lid te zijn
