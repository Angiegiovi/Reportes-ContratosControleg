/*revisión de los usuarios BD Esquema_Contratos*/
select * from esq_foranea_acceso.usuarios_externos
where usuext_login in ('6760642',
'3482714',
'3479888',
'3357939',
'4262070',
'3472879',
'3527244'
)
--Información de los registros, todos son de agosto 2017 en adelante ya que en esa fecha se adiciono los usuarios
SELECT contrato_secuencia.conse_codigo_contrato,contrato.con_numero_contrato, contrato.mod_codigo, contrato.con_objeto, contrato.con_monto, contrato.fecha_registro, contrato.con_fecha_suscripcion, contrato.con_estado, contrato.usuario_registro
FROM contratos.contrato
inner join contratos.contrato_secuencia
on contrato.con_codigo= contrato_secuencia.con_codigo
WHERE contrato.ent_codigo=156

--Información de los registros de contratos sistema antiguo
--usuarios de la entidad 157571
select Codigo_Usuario, Codigo_Persona, Cuenta_Usuario, Vigente_Usuario,Fecha_Referencia
from Usuario where Codigo_Entidad =157571
--decuelve los registros de los contratos
SELECT contrato.Codigo_Contrato, contrato.Registro_Contrato, contrato.Identificacion_Contrato,contrato.Numero_Contrato, contrato.Objeto_Contrato, contrato.MontoA_Contrato , contrato.MontoDe_Contrato ,
contrato.Codigo_TipoContrato,contrato.FechaSuscripcion_Contrato,contrato.FechaInicio_Contrato, contrato.FechaConclusion_Contrato, contrato.FechaConsolidar_Contrato,contrato.Consolidar_Contrato, contrato.Codigo_Sesion, sesion.Codigo_Usuario
FROM Contrato
inner join Sesion
on contrato.Codigo_Sesion= sesion.Codigo_Sesion
WHERE contrato.Codigo_Entidad=157571

--Información de los registros de controleg

SELECT *
FROM   aspnet_Users 
WHERE  UserName= 'MLSHM-AISEM'
-- información de los usuarios controleg  la columna NuevoVAlor indica los datos de los usuarios:
/* 'GJMA-AISEM',
'JLZA-AISEM', 
'MGJ-AISEM',
'MLSHM-AISEM') Ejemplo: */
SELECT id_auditoria, [Type], NombreTabla, PK, AntiguoValor, NuevoValor, FechaCambio, IdUsuario, NombreHost, DireccionIP, ProtocoloTCP
FROM BDControleg_soporte.dbo.Log_Tablas_Clave_Negocios_XML
where NombreTabla ='aspnet_UsersInRoles'
and IdUsuario= 'MVAT-CGE'
 
