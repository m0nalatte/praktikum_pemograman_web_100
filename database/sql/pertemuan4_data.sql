USE praktikum_web_2401020100;

INSERT INTO program_studi (nama_prodi) VALUES
    ('Teknik Informatika'),
    ('Sistem Informasi');

INSERT INTO mahasiswa
    (nim, nama, email, usia, program_studi_id)
VALUES
    ('2401020100', 'Monalisa Dwi Cantika', 'monalisa@example.com', 20, 1),
    ('2401020105', 'Kelvin Sanjaya', 'kelvin@example.com', 21, 1),
    ('2401030101', 'Charles Leclerc', 'charles@example.com', 22, 2),
    ('2401030199', 'Data Sementara', 'sementara@example.com', 18, 2);

UPDATE mahasiswa
SET email = 'monalisa.baru@example.com'
WHERE nim = '2401020100';

DELETE FROM mahasiswa
WHERE nim = '2401030199';

SELECT m.nim, m.nama, m.email, m.usia,
       p.nama_prodi
FROM mahasiswa AS m
JOIN program_studi AS p
    ON p.id = m.program_studi_id
ORDER BY m.nim;