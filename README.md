Skaner produktów spożywczych

Aplikacja mobilna na platformę iOS do szybkiego sprawdzania składu i wartości odżywczych
produktów po kodzie kreskowym.

Skład grupy: Maciej Socik, Bartosz Składanowski

Platforma: iOS
API: Open Food Facts REST API v2
Biblioteka zewnętrzna: Google ML Kit (Barcode Scanning)

1. Zakres projektu
Użytkownik skanuje kod kreskowy (EAN/UPC) dowolnego produktu spożywczego, a
aplikacja pobiera jego dane z otwartej bazy i wyświetla kalorie, makroskładniki (na 100 g),
ocenę Nutri-Score (A–E), listę alergenów oraz skład.

3. Pokrycie wymagań
a) Obsługa sensora - Akcelerometr (+ aparat) - Potrząśnięcie telefonem (shake) resetuje
widok i wraca do skanera.
b) Zewnętrzna biblioteka - Google ML Kit (Barcode Scanning) - Odczyt kodów kreskowych
na żywo na urządzeniu (SDK dla iOS).
c) Połączenie z API - Open Food Facts API (REST / JSON) - Darmowe pobieranie danych
produktu po kodzie (bez klucza API).

5. Główne funkcje projektu
● Skaner kodów: podgląd z kamery, oraz pole do ręcznego wpisania kodu.
● Karta produktu: zdjęcie, nazwa, Nutri-Score, tabela makroskładników, alergeny i
skład.
● Historia skanowań bez zapisu do bazy, pamięć lokalna
● Obsługa gestu: potrząśnięcie urządzeniem zamyka podgląd i rozpoczyna nowe
skanowanie.
