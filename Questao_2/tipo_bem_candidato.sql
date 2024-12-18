use eleicao
GO
CREATE TABLE tipo_bem_candidato (
    CD_TIPO_BEM_CANDIDATO INT PRIMARY KEY,     
    DS_TIPO_BEM_CANDIDATO NVARCHAR(255)     
);

INSERT INTO tipo_bem_candidato (
    CD_TIPO_BEM_CANDIDATO, 
    DS_TIPO_BEM_CANDIDATO
)

WAITFOR DELAY '00:00:05';

SELECT 
    DISTINCT 
		CD_TIPO_BEM_CANDIDATO, 
		DS_TIPO_BEM_CANDIDATO
FROM bem_candidato_2024_BRASIL;

GO