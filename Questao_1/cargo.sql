use eleicao 

GO

CREATE TABLE cargo (
    CD_CARGO INT PRIMARY KEY,
    DS_CARGO NVARCHAR(255)
);

WAITFOR DELAY '00:00:05';

INSERT INTO cargo (CD_CARGO, DS_CARGO)
SELECT DISTINCT
    CD_CARGO,
    DS_CARGO
FROM dbo.consulta_cand_2024_BRASIL

GO