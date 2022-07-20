   * ******************************************************************** *
   *
   *       PARTE 2:  GENERAR INDICADORES HOSPITALARIOS
   *
   *		Input:	"$source1_camas/input/disponibilidad_camas_hospitalarias.xlsx"
   *
   *		Output:	"$source1_camas/output/camas.csv"
   *
   * ******************************************************************** *

*** 1. Importar data en excel

*import excel "C:\Users\enemi\Documents\GitHub\GERESA_dashboard\data\source1_camas\input\disponibilidad_camas_hospitalarias.xlsx", sheet("Hoja1") firstrow clear
use "C:\Users\pc\Documents\GitHub\GERESA_dashboard\data\source5_vacunas\input\base_vacunados_practica.dta", clear
*import excel "$source1_camas\input\disponibilidad_camas_hospitalarias.xlsx", sheet("Hoja1") firstrow clear


format fnac fecha_2 %tdCCYY-NN-DD	


*** 2. Renombrar variables

*rename NOUCIseconsideralasumade NOUCI

*** 2. Exportar data en csv


*export delimited using "$source1_camas\output\camas.csv", replace
export delimited using "C:\Users\pc\Documents\GitHub\GERESA_dashboard\data\source5_vacunas\output\vacunas.csv", replace
*export delimited using "C:\Users\enemi\Documents\GitHub\GERESA_dashboard\data\source1_camas\output\camas.csv", replace

clear
********************************************************************************
