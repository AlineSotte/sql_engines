
use eleicao 

GO

CREATE TABLE uf (
    SG_UE BIGINT PRIMARY KEY,
    NM_UE NVARCHAR(255),
    SG_UF CHAR(2)
);

WAITFOR DELAY '00:00:05';

INSERT INTO uf (SG_UE, NM_UE,  SG_UF )
SELECT DISTINCT
    SG_UE,
    NM_UE,
    SG_UF
FROM dbo.consulta_cand_2024_BRASIL 

GO