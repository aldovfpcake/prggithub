SET DATE ITALIAN
SET CENTURY on
set path to c:\suerut\empre1
set procedure to c:\ald\fugral
*select legajo, nombre,fechaing,calcuant(date(),fechaing)AS "Antiguedad",calcuvac(calcuant(date(),fechaing))as "dias" ,ACTIVO  from personal;
*where ACTIVO = "A" .and. depart = "PASA" .OR. depart = "BOCA 3"  order by NOMBRE into cursor ver

vfecha = CTOD("31-12-2009")
select legajo, nombre,fechaing,calcuant(vfecha,fechaing)AS "Antiguedad",ACTIVO,depart,calcuvac(calcuant(vfecha,fechaing))as dias  from personal;
 WHERE ACTIVO = "A"  into cursor ver ORDER BY legajo


sele ver

*set filter to activo  ="A" .and. depart = "PASA"         
* veamos que sucede
SELECT  distinct legajo,setiembre,agosto,julio,junio,mayo,abril, ROUND((setiembre+agosto+julio+junio+mayo+abril)/6,2) as prom,mayorq()as sueldo FROM sbr09;
into CURSOR promedi

SELECT ver.legajo,ver.nombre,ver.dias,promedi.sueldo FROM ver INNER JOIN promedi ON ver.legajo = promedi.legajo


BROWSE

*do while .not. eof()
      
*    UPDATE PERSONAL;
*           SET VACDI = ver.dias;
*             WHERE PERSONAL.LEGAJO = VER.LEGAJO             
*    
*    SELE VER
*   skip    
*enddo
      
      
      
      
FUNCTION mayorq
LOCAL retorno
retorno= 0
IF setiembre > ROUND((setiembre+agosto+julio+junio+mayo+abril)/6,2)
   retorno = setiembre
ELSE
   retorno = ROUND((setiembre+agosto+julio+junio+mayo+abril)/6,2)
ENDIF

return retorno     
      
      
      
      
      
      
      
