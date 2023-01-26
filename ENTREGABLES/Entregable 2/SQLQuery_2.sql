SELECT TOP (1000) [date_pub]
      ,[ccaa]
      ,[Dosis_entregadas_Pfizer]
      ,[Dosis_entregadas_Pfizer_pediatrica]
      ,[Dosis_entregadas_Moderna]
      ,[Dosis_entregadas_AstraZeneca]
      ,[Dosis_entregadas_Janssen]
      ,[Dosis_entregadas]
      ,[Dosis_administradas]
      ,[sobre_entregadas]
      ,[Total_1_vacuna]
      ,[Total_pauta_completada]
      ,[Total_dosis_adicional]
      ,[Última_fecha_de_actualización_de_datos]
      ,[Fecha_de_la_ultima_vacuna_registrada]
      ,[source_name]
      ,[source]
  FROM [dbo].[estado_vacunacion]

/*
UPDATE estado_vacunacion SET Dosis_entregadas_Pfizer=0 WHERE Dosis_entregadas_Pfizer is NULL;
UPDATE estado_vacunacion SET Dosis_entregadas_Pfizer_pediatrica=0 WHERE Dosis_entregadas_Pfizer_pediatrica is NULL;
UPDATE estado_vacunacion SET Dosis_entregadas_Moderna=0 WHERE Dosis_entregadas_Moderna is NULL;
UPDATE estado_vacunacion SET Dosis_entregadas_AstraZeneca=0 WHERE Dosis_entregadas_AstraZeneca is NULL;
UPDATE estado_vacunacion SET Dosis_entregadas_Janssen=0 WHERE Dosis_entregadas_Janssen is NULL;
UPDATE estado_vacunacion SET Total_1_vacuna=0 WHERE Total_1_vacuna is NULL;
UPDATE estado_vacunacion SET Total_pauta_completada=0 WHERE Total_pauta_completada is NULL;
UPDATE estado_vacunacion SET Total_dosis_adicional=0 WHERE Total_dosis_adicional is NULL;
*/

/*ALTER TABLE estado_vacunacion ADD indice INT;*/

/*ALTER TABLE estado_vacunacion ADD Diferencia_Dosis AS (Dosis_entregadas - Dosis_administradas) PERSISTED;*/

ALTER TABLE estado_vacunacion ADD Vector_virico AS (Dosis_entregadas_AstraZeneca + Dosis_entregadas_Janssen) PERSISTED;

ALTER TABLE estado_vacunacion ADD ARN_mensajero AS (Dosis_entregadas_Pfizer + Dosis_entregadas_Moderna) PERSISTED;

