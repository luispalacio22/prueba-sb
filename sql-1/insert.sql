INSERT INTO Folders (Id, ShortName, Name) VALUES
(1, 'Book1', 'Libro Principal 1'),
(2, 'Book2', 'Libro Principal 2'),
(3, 'Book3', 'Libro Principal 3'),
(4, 'Book4', 'Libro Principal 4'),
(5, 'Book5', 'Libro Principal 5'),
(6, 'Book6', 'Libro Principal 6'),
(7, 'Book7', 'Libro Principal 7'),
(8, 'Book8', 'Libro Principal 8'),
(9, 'Book9', 'Libro Principal 9'),
(10, 'Book10', 'Libro Principal 10');

INSERT INTO Users (Id, ShortName, Name) VALUES
(1, 'U1', 'Usuario 1'),
(2, 'U2', 'Usuario 2'),
(3, 'U3', 'Usuario 3'),
(4, 'U4', 'Usuario 4'),
(5, 'U5', 'Usuario 5'),
(6, 'U6', 'Usuario 6'),
(7, 'U7', 'Usuario 7'),
(8, 'U8', 'Usuario 8'),
(9, 'U9', 'Usuario 9'),
(10, 'U10', 'Usuario 10');

INSERT INTO Cpty (Id, ShortName, Name) VALUES
(1, 'C1', 'Cliente 1'),
(2, 'C2', 'Cliente 2'),
(3, 'C3', 'Cliente 3'),
(4, 'C4', 'Cliente 4'),
(5, 'C5', 'Cliente 5'),
(6, 'C6', 'Cliente 6'),
(7, 'C7', 'Cliente 7'),
(8, 'C8', 'Cliente 8'),
(9, 'C9', 'Cliente 9'),
(10, 'C10', 'Cliente 10');


INSERT INTO PairsMonedas (Id, ShortName, Name) VALUES
(1, 'USD/EUR', 'Dólar a Euro'),
(2, 'USD/JPY', 'Dólar a Yen Japonés'),
(3, 'USD/GBP', 'Dólar a Libra Esterlina'),
(4, 'USD/AUD', 'Dólar a Dólar Australiano'),
(5, 'USD/CAD', 'Dólar a Dólar Canadiense'),
(6, 'USD/CHF', 'Dólar a Franco Suizo'),
(7, 'EUR/GBP', 'Euro a Libra Esterlina'),
(8, 'EUR/JPY', 'Euro a Yen Japonés'),
(9, 'GBP/JPY', 'Libra Esterlina a Yen Japonés'),
(10, 'AUD/CAD', 'Dólar Australiano a Dólar Canadiense');

INSERT INTO SpotDeals (Id, SpotNumber, Amount, EntryDate, FolderId, UserId, CptyId, PairsMonedasId, SpotType, SpotStatus) VALUES
(1, 'SP001', 1000.50, '2023-01-10', 1, 1, 1, 1, 'A', 'V'),
(2, 'SP002', 2000.75, '2023-02-15', 2, 2, 2, 2, 'B', 'V'),
(3, 'SP003', 3000.00, '2023-03-20', 3, 3, 3, 3, 'A', 'V'),
(4, 'SP004', 1500.25, '2023-04-10', 4, 4, 4, 4, 'C', 'V'),
(5, 'SP005', 500.00, '2023-05-05', 5, 5, 5, 5, 'D', 'V'),
(6, 'SP006', 750.60, '2023-06-30', 6, 6, 6, 6, 'A', 'V'),
(7, 'SP007', 1250.90, '2023-07-15', 7, 7, 7, 7, 'B', 'V'),
(8, 'SP008', 300.20, '2023-08-20', 8, 8, 8, 8, 'A', 'V'),
(9, 'SP009', 1800.40, '2023-09-25', 9, 9, 9, 9, 'C', 'V'),
(10, 'SP010', 950.10, '2023-10-10', 10, 10, 10, 10, 'A', 'V');
