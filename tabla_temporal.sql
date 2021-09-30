/*
 Navicat PostgreSQL Data Transfer

 Source Server         : postgres
 Source Server Type    : PostgreSQL
 Source Server Version : 130004
 Source Host           : localhost:5432
 Source Catalog        : postgres
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 130004
 File Encoding         : 65001

 Date: 30/09/2021 01:08:13
*/


-- ----------------------------
-- Table structure for tabla_temporal
-- ----------------------------
DROP TABLE IF EXISTS "tabla_temporal";
CREATE TABLE "tabla_temporal" (
  "cliente_nombre" varchar(255) COLLATE "pg_catalog"."default",
  "cliente_correo" varchar(255) COLLATE "pg_catalog"."default",
  "cliente_activo" varchar(255) COLLATE "pg_catalog"."default",
  "cliente_f_registro" varchar(255) COLLATE "pg_catalog"."default",
  "cliente_tienda_fav" varchar(255) COLLATE "pg_catalog"."default",
  "cliente_direccion" varchar(255) COLLATE "pg_catalog"."default",
  "cliente_c_postal" varchar(255) COLLATE "pg_catalog"."default",
  "cliente_ciudad" varchar(255) COLLATE "pg_catalog"."default",
  "cliente_pais" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_rentado" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_retorno" varchar(255) COLLATE "pg_catalog"."default",
  "monto_pago" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_pago" varchar(255) COLLATE "pg_catalog"."default",
  "empleado_nombre" varchar(255) COLLATE "pg_catalog"."default",
  "empleado_correo" varchar(255) COLLATE "pg_catalog"."default",
  "empleado_activo" varchar(255) COLLATE "pg_catalog"."default",
  "empleado_tienda" varchar(255) COLLATE "pg_catalog"."default",
  "empleado_usuario" varchar(255) COLLATE "pg_catalog"."default",
  "empleado_contrasenia" varchar(255) COLLATE "pg_catalog"."default",
  "empleado_direccion" varchar(255) COLLATE "pg_catalog"."default",
  "empleado_c_postal" varchar(255) COLLATE "pg_catalog"."default",
  "empleado_ciudad" varchar(255) COLLATE "pg_catalog"."default",
  "empleado_pais" varchar(255) COLLATE "pg_catalog"."default",
  "tienda_nombre" varchar(255) COLLATE "pg_catalog"."default",
  "tienda_encargado" varchar(255) COLLATE "pg_catalog"."default",
  "tienda_direccion" varchar(255) COLLATE "pg_catalog"."default",
  "tienda_c_postal" varchar(255) COLLATE "pg_catalog"."default",
  "tienda_ciudad" varchar(255) COLLATE "pg_catalog"."default",
  "tienda_pais" varchar(255) COLLATE "pg_catalog"."default",
  "tienda_pelicula" varchar(255) COLLATE "pg_catalog"."default",
  "pelicula_nombre" varchar(255) COLLATE "pg_catalog"."default",
  "pelicula_descripcion" varchar(255) COLLATE "pg_catalog"."default",
  "pelicula_lanzamiento" varchar(255) COLLATE "pg_catalog"."default",
  "pelicula_dias_renta" varchar(255) COLLATE "pg_catalog"."default",
  "pelicula_costo_renta" varchar(255) COLLATE "pg_catalog"."default",
  "pelicula_duracion" varchar(255) COLLATE "pg_catalog"."default",
  "pelicula_costo_danio" varchar(255) COLLATE "pg_catalog"."default",
  "pelicula_clasificacion" varchar(255) COLLATE "pg_catalog"."default",
  "pelicula_lenguaje" varchar(255) COLLATE "pg_catalog"."default",
  "pelicula_categoria" varchar(255) COLLATE "pg_catalog"."default",
  "pelicula_actor" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of tabla_temporal
-- ----------------------------
BEGIN;
COMMIT;
