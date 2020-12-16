select * from artikel order by ANr asc

select ANr, AName, APreis as AlterPreis, APreis+1 as NeuerPreis from artikel

select APreis from artikel order by APreis desc

select * from artikel where APreis = 1 and ABestand = 70

select * from artikel where AName like "%datenbanken%"
