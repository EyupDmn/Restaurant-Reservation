create database restoran;
use restoran;

CREATE TABLE musteriler (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ad VARCHAR(50) NOT NULL,
    soyad VARCHAR(50) NOT NULL,
    telefon CHAR(11) NOT NULL
)Engine=InnoDB;

CREATE TABLE masalar (
    id INT PRIMARY KEY AUTO_INCREMENT,
    masaNumarasi INT NOT NULL,
    durum VARCHAR(10) NOT NULL
);

CREATE TABLE rezervasyonlar (
    id INT PRIMARY KEY AUTO_INCREMENT,
    musteri_id INT,
    masa_id INT,
    rezervasyon_tarihi varchar(10) NOT NULL,
    rezervasyon_saati TIME NOT NULL,
    durum VARCHAR(10) NOT NULL,
    FOREIGN KEY (musteri_id) REFERENCES musteriler(id),
    FOREIGN KEY (masa_id) REFERENCES masalar(id)
);

CREATE VIEW rezervasyon_gorunum AS
SELECT 
    r.id AS rezervasyon_id,
    m.ad AS musteri_ad,
    m.soyad AS musteri_soyad,
    m.telefon As musteri_telefon,
    ma.masaNumarasi AS masa_no,
    r.rezervasyon_tarihi AS tarih,
    r.rezervasyon_saati AS saat,
    r.durum AS durum
FROM 
    rezervasyonlar r
JOIN 
    musteriler m ON r.musteri_id = m.id
JOIN 
    masalar ma ON r.masa_id = ma.id;
    
INSERT INTO musteriler (ad, soyad, telefon) VALUES
('Ahmet', 'Yılmaz', '05551112233'),
('Ayşe', 'Kaya', '05552223344'),
('Mehmet', 'Demir', '05553334455'),
('Fatma', 'Şahin', '05554445566'),
('Hasan', 'Çelik', '05555556677'),
('Emine', 'Arslan', '05556667788'),
('Ali', 'Koç', '05557778899'),
('Elif', 'Tekin', '05558889900'),
('Hüseyin', 'Çetin', '05559990011'),
('Zeynep', 'Gül', '05550001122');

INSERT INTO masalar (masaNumarasi, durum) VALUES
(1, 'boş'),
(2, 'boş'),
(3, 'boş'),
(4, 'boş'),
(5, 'boş'),
(6, 'boş'),
(7, 'boş'),
(8, 'boş'),
(9, 'boş'),
(10, 'boş');

INSERT INTO rezervasyonlar (musteri_id, masa_id, rezervasyon_tarihi, rezervasyon_saati, durum) VALUES
(1, 1, '2024-06-01', '19:00:00', 'aktif'),
(2, 2, '2024-06-01', '20:00:00', 'aktif'),
(3, 3, '2024-06-02', '18:30:00', 'aktif'),
(4, 4, '2024-06-02', '19:30:00', 'aktif'),
(5, 5, '2024-06-03', '19:00:00', 'aktif'),
(6, 6, '2024-06-03', '20:00:00', 'aktif'),
(7, 7, '2024-06-04', '18:00:00', 'aktif'),
(8, 8, '2024-06-04', '19:00:00', 'aktif'),
(9, 9, '2024-06-05', '20:30:00', 'aktif'),
(10, 10, '2024-06-05', '18:30:00', 'aktif');