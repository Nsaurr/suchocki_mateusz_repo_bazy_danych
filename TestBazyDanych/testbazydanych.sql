-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 15 Maj 2021, 21:28
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `testbazydanych`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pytania`
--

CREATE TABLE `pytania` (
  `id` int(11) NOT NULL,
  `kategoria` varchar(20) NOT NULL,
  `pytanie` varchar(200) NOT NULL,
  `odp1` varchar(100) NOT NULL,
  `odp2` varchar(100) NOT NULL,
  `odp3` varchar(100) NOT NULL,
  `poprawnaOdp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `pytania`
--

INSERT INTO `pytania` (`id`, `kategoria`, `pytanie`, `odp1`, `odp2`, `odp3`, `poprawnaOdp`) VALUES
(1, 'Ogólne', 'Typ stało-znakowy w języku SQL to', 'time', 'text', 'char', 3),
(2, 'Ogólne', 'Które polecenie SQL zamieni w tabeli tab w kolumnie kol wartość Ania na Zosia?', 'UPDATE tab SET kol=\'', 'UPDATE tab SET kol=\'', 'ALTER TABLE tab CHAN', 2),
(3, 'Ogólne', 'Wskaż poprawną kolejność etapów projektowania relacyjnej bazy danych', 'Określenie relacji, ', ' Określenie zbioru d', 'Określenie kluczy po', 2),
(4, 'Ogólne', 'W języku SQL, aby wstawić wiersz danych do bazy, należy zastosować polecenie', 'CREATE INTO', 'CREATE ROW', 'INSERT INTO', 3),
(5, 'Ogólne', 'Polecenie pg_connect języka PHP służy do połączenia z bazą', 'mySQL', 'MS ACCESS', 'PostgreSQL', 3),
(6, 'Ogólne', 'Dana jest tabela programiści o polach: id, nick, ilosc_kodu, ocena. Pole ilosc_kodu zawiera liczbę linii kodu napisanych przez programistę w danym miesiącu. Aby policzyć sumę linii kodu, który napisal', 'SELECT SUM(ilosc_kodu) FROM programisci;', 'SELECT COUNT(programisci) FROM ilosc_kodu;', 'SELECT SUM(ocena) FROM ilosc_kodu;', 1),
(7, 'Ogólne', 'W relacyjnym modelu baz danych krotkami nazywa się', 'wiersze tabeli z wyjątkiem wiersza nagłówkowego, w którym umieszcza się nazwy kolumn', 'wszystkie wiersze tabeli wraz z wierszem nagłówkowym', 'wszystkie kolumny tabeli, które zawierają atrybuty obiektu', 1),
(8, 'Ogólne', 'Aby policzyć wszystkie wiersze tabeli Koty należy użyć polecenia:', 'SELECT COUNT(*) FROM Koty', 'SELECT COUNT(Koty) AS ROWNUM', 'SELECT COUNT(ROWNUM) FROM Koty', 1),
(9, 'Ogólne', 'Polecenie DBCC CHECKDB(\"sklepAGD\", Repair_fast) w MS SQL Server', 'sprawdzi spójność bazy danych i naprawi uszkodzone indeksy', 'sprawdzi spójność bazy danych i wykona kopię bezpieczeństwa', 'sprawdzi spójność określonej tabeli', 1),
(10, 'Ogólne', 'Aby w tworzonej w języku SQL tabeli praca dodać w kolumnie stawka warunek, że musi przyjmować rzeczywiste wartości dodatnie mniejsze od 50, należy użyć zapisu', ' ... stawka float CHECK(stawka>0 OR stawka<50.00)', ' ... stawka float CHECK(stawka IN (0, 50.00))', '... stawka float CHECK(stawka>0 AND stawka<50.00)', 3),
(11, 'Ogólne', 'Aby aplikacja PHP mogła komunikować się z bazą danych, niezbędne jest w pierwszej kolejności wywołanie funkcji o nazwie', 'mysqli_close', 'mysqli_connect', 'mysqli_select_db', 2),
(12, 'Ogólne', 'W tabeli podzespoly należy zmienić wartość pola URL na \'toshiba.pl\' dla wszystkich rekordów, gdzie pole producent to TOSHIBA. W języku SQL modyfikacja będzie miała postać', 'UPDATE podzespoly.producent=\'TOSHIBA\' SET URL=\'toshiba.pl\';', 'UPDATE podzespoly SET URL=\'toshiba.pl\' WHERE producent=\'TOSHIBA\';', 'UPDATE podzespoly SET URL=\'toshiba.pl\';', 2),
(13, 'Ogólne', 'Relacja w bazach danych jest', 'logicznym połączeniem tabel', 'kluczem głównym w relacji tabel', 'algebraicznym połączeniem tabel', 1),
(14, 'Ogólne', 'W relacyjnym modelu baz danych krotkami nazywa się', 'wiersze tabeli z wyjątkiem wiersza nagłówkowego, w którym umieszcza się nazwy kolumn', 'wszystkie kolumny tabeli, które zawierają atrybuty obiektu', 'liczbę rekordów tabeli', 1),
(15, 'Ogólne', 'Formularze do obsługi baz danych tworzy się w celu\r\n', 'wygodniejszego wprowadzania, edytowania i usuwania danych', 'wyszukiwania wierszy spełniających dane kryteria', 'raportowania danych', 1),
(16, 'Ogólne', 'W bazie danych zdefiniowano tabelę Mieszkancy wypełnioną danymi. Aby usunąć tę tabelę wraz z zawartością, należy posłużyć się poleceniem', 'DROP TABLE Mieszkancy;', 'ALTER TABLE Mieszkancy;', 'TRUNCATE TABLE Mieszkancy;', 1),
(17, 'Ogólne', 'W języku SQL wykorzystywanym przez bazę danych MySQL atrybut UNIQUE polecenia CREATE TABLE', 'Jest stosowany, jeśli wartość w kolumnie nie mogą się powtarzać', 'Jest stosowany tylko w przypadku pól liczbowych', 'Wymusza unikatowe nazwy pól tabeli', 1),
(18, 'Ogólne', 'Które z poleceń naprawi uszkodzoną tabelę w języku SQL?', 'REPAIR TABLE tblname', 'REGENERATE TABLE tbl_name', 'OPTIMIZE TABLE tbl_name', 1),
(19, 'Ogólne', 'W języku zapytań SQL, aby dodać do tabeli Towar kolumnę rozmiar typu znakowego o maksymalnej długości 20 znaków, należy wykonać polecenie', 'ALTER TABLE Towar ADD rozmiar varchar(20);', 'ALTER TABLE Towar ALTER COLUMN rozmiar varchar(20);', 'ALTER TABLE Towar ALTER COLUMN rozmiar varchar(20);', 1),
(20, 'Ogólne', 'Polecenie REVOKE SELECT ON nazwa1 FROM nazwa2 w języku SQL umożliwia', 'odbieranie uprawnień użytkownikowi', 'nadawanie praw do tabeli', 'nadanie uprawnień z użyciem zdefiniowanego schematu', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `test`
--

CREATE TABLE `test` (
  `ID` int(11) NOT NULL,
  `Id_uzytkownik` int(11) NOT NULL,
  `Id_pytanie` int(11) NOT NULL,
  `nr_testu` int(11) NOT NULL,
  `Odp` int(11) NOT NULL,
  `punkt_za_odp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `test`
--

INSERT INTO `test` (`ID`, `Id_uzytkownik`, `Id_pytanie`, `nr_testu`, `Odp`, `punkt_za_odp`) VALUES
(5, 1, 2, 1, 3, 1),
(6, 1, 2, 1, 2, 1),
(7, 1, 3, 1, 2, 1),
(8, 1, 4, 1, 3, 1),
(9, 1, 6, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `ID` int(11) NOT NULL,
  `nazwa` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `haslo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`ID`, `nazwa`, `email`, `haslo`) VALUES
(1, 'Mati', 'mateusz@suchocki.pl', '123456789');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pytania`
--
ALTER TABLE `pytania`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Id_uzytkownik` (`Id_uzytkownik`),
  ADD KEY `Id_pytanie` (`Id_pytanie`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `pytania`
--
ALTER TABLE `pytania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `test`
--
ALTER TABLE `test`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_ibfk_1` FOREIGN KEY (`Id_uzytkownik`) REFERENCES `uzytkownicy` (`ID`),
  ADD CONSTRAINT `test_ibfk_2` FOREIGN KEY (`Id_pytanie`) REFERENCES `pytania` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
