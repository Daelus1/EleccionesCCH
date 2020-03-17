CREATE TABLE IF NOT EXISTS PERFILES
(
PER_ID INTEGER PRIMARY KEY,
PER_CODIGO TEXT,
PER_NOMBRE TEXT,
PER_DESCRIPCION TEXT,
PER_ESTADO INTEGER
);

CREATE TABLE IF NOT EXISTS USUARIOS
(
USU_ID INTEGER PRIMARY KEY,
USU_RUT INTEGER , 
USU_DV TEXT,
USU_NOMBRES TEXT,
USU_APELLIDO_PATERNO TEXT,
USU_APELLIDO_MATERNO TEXT,
USU_FECHA_NACIMIENTO DATETIME,
USU_NOMBRE_USUARIO TEXT,
USU_CLAVE TEXT,
USU_FECHA_REGISTRO DATE,
USU_ESTADO INTEGER,
PER_ID INTEGER,
REG_ID INTEGER,
LUGAR_ASIGNADO_ID INTEGER,
USU_CODIGO_RESET_CONTRASENA TEXT,
USU_TELEFONO TEXT,
TUS_ID INTEGER,
ETR_ID INTEGER
);

CREATE TABLE IF NOT EXISTS APLICACIONES
(APLI_ID INTEGER PRIMARY KEY,
APLI_CODIGO TEXT,
APLI_NOMBRE TEXT,
APLI_DESCRIPCION TEXT,
APLI_METODO TEXT,
APLI_CONTROLADOR TEXT,
APLI_ESTADO INTEGER,
APLI_IMG TEXT,
TAP_ID INTEGER
);

CREATE TABLE IF NOT EXISTS PERFILES_APLICACIONES
(PER_ID INTEGER,
APLI_ID INTEGER
);

CREATE TABLE IF NOT EXISTS REGISTRO_INICIO_FIN_DIA
(RIN_ID INTEGER PRIMARY KEY,
RIN_ESTADO INTEGER,
RIN_FECHA_INICIO DATETIME,
RIN_FECHA_FIN DATETIME,
USU_ID INTEGER,
RIN_SYNC INTEGER
);

CREATE TABLE IF NOT EXISTS PARAMETROS
(
    PAR_ID INTEGER PRIMARY KEY,
    PAR_CODIGO TEXT,
    PAR_VALOR TEXT

);

CREATE TABLE IF NOT EXISTS REGIONES
(
    REG_ID INTEGER PRIMARY KEY,
    REG_CODIGO TEXT,
    REG_NOMBRE TEXT
);

CREATE TABLE IF NOT EXISTS PROVINCIAS
(
    PRO_ID INTEGER PRIMARY KEY,
    PRO_NOMBRE TEXT,
    REG_ID INTEGER,
    PRO_CODIGO TEXT
);

CREATE TABLE IF NOT EXISTS COMUNAS
(
    COM_ID INTEGER PRIMARY KEY,
    COM_NOMBRE TEXT,
    PRO_ID INTEGER,
    COM_CODIGO TEXT
);

CREATE TABLE IF NOT EXISTS TIPO_LUGARES 
(
    TIL_ID INTEGER PRIMARY KEY,
    TIL_CODIGO TEXT,
    TIL_NOMBRE TEXT,
    TIL_DESCRIPCION TEXT,
    TIL_ESTADO INTEGER
);

CREATE TABLE IF NOT EXISTS LUGARES 
(
    LUG_ID INTEGER PRIMARY KEY,
    LUG_CODIGO TEXT,
    LUG_NOMBRE TEXT,
    COM_ID INTEGER,
    LUG_CALLE TEXT,
    LUG_NUMERO INTEGER,
    LUG_LATITUD TEXT,
    LUG_LONGITUD TEXT,
    LUG_DESCRIPCION TEXT,
    TIL_ID INTEGER
);

CREATE TABLE IF NOT EXISTS EMPRESAS_TRANSPORTES
(
    ETR_ID INTEGER PRIMARY KEY,
    ETR_CODIGO TEXT,
    ETR_NOMBRE TEXT,
    ETR_DESCRIPCION TEXT,
    ETR_RUT INTEGER,
    ETR_DV TEXT,
    ETR_TELEFONO TEXT
);

CREATE TABLE IF NOT EXISTS TRANSPORTES
(
    TRA_ID INTEGER PRIMARY KEY,
    TRA_PATENTE TEXT,
    TRA_NOMBRE TEXT,
    TRA_DESCRIPCION TEXT,
    ETR_ID INTEGER,
    REG_ID INTEGER,
    TIT_ID INTEGER
);

CREATE TABLE IF NOT EXISTS RUTAS
(
    RTA_ID INTEGER PRIMARY KEY,
    RTA_USUARIO_REGISTRO INTEGER,
    RTA_FECHA_REGISTRO TEXT,
    RTA_USUARIO_MODIFICACION INTEGER,
    RTA_FECHA_MODIFICACION TEXT,
    RTA_CODIGO TEXT,
    ERU_ID INTEGER,
    TRA_ID INTEGER,
    USU_ID INTEGER,
    LUG_ID_ORIGEN INTEGER,
    LUG_ID_DESTINO INTEGER,
    RTA_OS TEXT,
    RTA_LATITUD TEXT,
    RTA_LONGITUD TEXT,
    RTA_FECHA_DISPOSITIVO TEXT,
    RTA_SYNC INTEGER
);

CREATE TABLE IF NOT EXISTS ESTADOS_RUTAS
(
    ERU_ID INTEGER PRIMARY KEY,
    ERU_NOMBRE TEXT,
    ERU_DESCRIPCION TEXT,
    ERU_CODIGO TEXT,
    SYNC INTEGER DEFAULT 0
);

CREATE TABLE IF NOT EXISTS BITACORA_RUTAS
(
    BRU_ID INTEGER PRIMARY KEY,
    BRU_FECHA_REGISTRO_DISPOSITIVO TEXT,
    BRU_USUARIO_REGISTRO INTEGER,
    BRU_LATITUD TEXT,
    BRU_LONGITUD TEXT,
    ERU_ID INTEGER,
    BRU_CUADRADO INTEGER,
    BRU_DESCRIPCION TEXT,
    RTA_ID INTEGER,
    BRU_FECHA_REGISTRO TEXT,
    SYNC INTEGER DEFAULT 0

);

CREATE TABLE IF NOT EXISTS BITACORA_RUTAS_IMAGENES
(
    BRI_ID INTEGER PRIMARY KEY,
    BRU_ID INTEGER,
    BRI_RUTA TEXT,
    BRI_NOMBRE TEXT,
    SYNC INTEGER DEFAULT 0
);

CREATE TABLE IF NOT EXISTS BITACORA_RUTAS_CARGAS_NOREGISTRADAS (
  BRC_ID INTEGER PRIMARY KEY,
  BRC_CODIGO_BARRA TEXT,
  BRU_ID INTEGER,
  SYNC INTEGER
);


CREATE TABLE IF NOT EXISTS BITACORA_RUTAS_CARGAS
(
    CAR_ID INTEGER,
    BRU_ID INTEGER,
    SYNC INTEGER DEFAULT 0
);

CREATE TABLE IF NOT EXISTS RUTAS_CARGAS
(
    CAR_ID INTEGER,
    RTA_ID INTEGER,
    CAR_RTA_ESTADO INTEGER,
    SYNC INTEGER DEFAULT 0
);

CREATE TABLE IF NOT EXISTS COORDENADAS_USUARIOS
(CUS_ID INTEGER PRIMARY KEY,
CUS_LATITUD TEXT,
CUS_LONGITUD TEXT,
CUS_FECHA_DISPOSITIVO TEXT,
USU_ID INTEGER,
CUS_SYNC INTEGER,
FOREIGN KEY (USU_ID) REFERENCES USUARIOS (USU_ID)
);

CREATE TABLE IF NOT EXISTS CARGAS 
(
    CAR_ID INTEGER PRIMARY KEY,
	TVO_ID INTEGER,
	CAR_CODIGO TEXT,
	CAR_BARRA TEXT,
	TCG_ID INTEGER,
	CAR_BARRA_PALLET TEXT,
	CAR_BARRA_CUBETA TEXT,
	CAR_BARRA_BOLSA TEXT,
	CAR_FECHA_REGISTRO TEXT,
	CAR_USUARIO_CREACION INTEGER,
	CAR_FECHA_MODIFICACION TEXT,
	CAR_USUARIO_MODIFICACION INTEGER,
	MES_ID INTEGER,
	LUG_ID INTEGER,
	CAR_NOMBRE TEXT,
	CAR_DESCRIPCION TEXT,
	ECA_ID INTEGER,
	TRC_ID INTEGER,
	TDC_ID INTEGER,
    SYNC INTEGER DEFAULT 0
);


	
 
