-- Testar duplicidadde de campo

with duplicidade_coligacao as (
SELECT DISTINCT
    SG_PARTIDO,
    TP_AGREMIACAO,
    NR_PARTIDO,
    NR_FEDERACAO,
    NM_FEDERACAO,
    SG_FEDERACAO,
    DS_COMPOSICAO_FEDERACAO,
    SQ_COLIGACAO,
    NM_COLIGACAO,
    DS_COMPOSICAO_COLIGACAO
FROM dbo.consulta_cand_2024_BRASIL
)

select SQ_COLIGACAO, count(*) from duplicidade_coligacao 
group by SQ_COLIGACAO having count(SQ_COLIGACAO)>2

----------------------------------------------------------------------

use eleicao 

GO

CREATE TABLE partido (
	CD_PARTIDO_CH INT IDENTITY(1,1) PRIMARY KEY,
    SG_PARTIDO VARCHAR(MAX),
    TP_AGREMIACAO NVARCHAR(255),
    NR_PARTIDO BIGINT ,
    NR_FEDERACAO BIGINT,
    NM_FEDERACAO NVARCHAR(255),
    SG_FEDERACAO NVARCHAR(MAX),
    DS_COMPOSICAO_FEDERACAO NVARCHAR(MAX),
    SQ_COLIGACAO BIGINT,
    NM_COLIGACAO NVARCHAR(255),
    DS_COMPOSICAO_COLIGACAO NVARCHAR(255)
);

WAITFOR DELAY '00:00:05';

INSERT INTO partido (SG_PARTIDO, TP_AGREMIACAO, NR_PARTIDO, NR_FEDERACAO, NM_FEDERACAO, SG_FEDERACAO, DS_COMPOSICAO_FEDERACAO, SQ_COLIGACAO, NM_COLIGACAO, DS_COMPOSICAO_COLIGACAO)
SELECT DISTINCT
    SG_PARTIDO,
    TP_AGREMIACAO,
    NR_PARTIDO,
    NR_FEDERACAO,
    NM_FEDERACAO,
    SG_FEDERACAO,
    DS_COMPOSICAO_FEDERACAO,
    SQ_COLIGACAO,
    NM_COLIGACAO,
    DS_COMPOSICAO_COLIGACAO
FROM dbo.consulta_cand_2024_BRASIL;

GO