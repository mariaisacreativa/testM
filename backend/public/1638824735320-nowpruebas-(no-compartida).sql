SELECT
  COUNT(*)
FROM IHCTNSELECTRONICBILLING
WHERE (RESPUESTATRANSMISION IS NULL OR
    LENGTH(TRIM(RESPUESTATRANSMISION))=0 OR RESPUESTATRANSMISION LIKE '%No se recibi� respuesta del web service%')
    AND TO_char(FECHA,'yyyymmdd')>= '20200513'
    AND CODTIENDA <> 'C999';
    
    SELECT
  *
FROM IHCTNSELECTRONICBILLING
WHERE (RESPUESTATRANSMISION IS NULL OR
    LENGTH(TRIM(RESPUESTATRANSMISION))=0)
    AND TO_char(FECHA,'yyyymmdd')>= '20200513'
    AND CODTIENDA <> 'C999'
    
    
    SELECT
  *
FROM IHCTNSELECTRONICBILLING
WHERE (RESPUESTATRANSMISION IS NULL OR
    LENGTH(TRIM(RESPUESTATRANSMISION))=0)
    AND TO_char(FECHA,'yyyymmdd')>= '20200513'
    AND CODTIENDA <> 'C999'
    
UPDATE IHCTNSELECTRONICBILLING
SET RESPUESTATRANSMISION = ''
WHERE TO_char(FECHA,'yyyymmdd')='20211112' AND CODTIENDA <> 'C999' --AND RESPUESTATRANSMISION LIKE '%No se recibi� respuesta del web service%';