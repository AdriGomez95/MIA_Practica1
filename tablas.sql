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

 Date: 30/09/2021 23:28:02
*/


-- ----------------------------
-- Sequence structure for id_actor
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_actor";
CREATE SEQUENCE "id_actor" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for id_categoria
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_categoria";
CREATE SEQUENCE "id_categoria" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for id_ciudad
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_ciudad";
CREATE SEQUENCE "id_ciudad" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for id_cliente
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_cliente";
CREATE SEQUENCE "id_cliente" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for id_direccion
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_direccion";
CREATE SEQUENCE "id_direccion" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for id_empleado
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_empleado";
CREATE SEQUENCE "id_empleado" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for id_idioma
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_idioma";
CREATE SEQUENCE "id_idioma" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for id_pais
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_pais";
CREATE SEQUENCE "id_pais" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for id_pelicula
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_pelicula";
CREATE SEQUENCE "id_pelicula" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for id_renta
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_renta";
CREATE SEQUENCE "id_renta" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for id_tienda
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_tienda";
CREATE SEQUENCE "id_tienda" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for actor
-- ----------------------------
DROP TABLE IF EXISTS "actor";
CREATE TABLE "actor" (
  "id_actor" int8 NOT NULL DEFAULT nextval('id_actor'::regclass),
  "nombre_actor" varchar(255) COLLATE "pg_catalog"."default",
  "apellido_actor" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of actor
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for actor_pelicula
-- ----------------------------
DROP TABLE IF EXISTS "actor_pelicula";
CREATE TABLE "actor_pelicula" (
  "id_actor" int8 NOT NULL,
  "id_pelicula" int8 NOT NULL
)
;

-- ----------------------------
-- Records of actor_pelicula
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for categoria
-- ----------------------------
DROP TABLE IF EXISTS "categoria";
CREATE TABLE "categoria" (
  "id_categoria" int8 NOT NULL DEFAULT nextval('id_categoria'::regclass),
  "categoria" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of categoria
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for categoria_pelicula
-- ----------------------------
DROP TABLE IF EXISTS "categoria_pelicula";
CREATE TABLE "categoria_pelicula" (
  "id_categoria" int8 NOT NULL,
  "id_pelicula" int8 NOT NULL
)
;

-- ----------------------------
-- Records of categoria_pelicula
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ciudad
-- ----------------------------
DROP TABLE IF EXISTS "ciudad";
CREATE TABLE "ciudad" (
  "id_ciudad" int8 NOT NULL DEFAULT nextval('id_ciudad'::regclass),
  "codigo_postal" int8,
  "nombre_ciudad" varchar(255) COLLATE "pg_catalog"."default",
  "id_pais" int8 NOT NULL
)
;

-- ----------------------------
-- Records of ciudad
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for cliente
-- ----------------------------
DROP TABLE IF EXISTS "cliente";
CREATE TABLE "cliente" (
  "id_cliente" int8 NOT NULL DEFAULT nextval('id_cliente'::regclass),
  "nombre_cliente" varchar(255) COLLATE "pg_catalog"."default",
  "correo" varchar(255) COLLATE "pg_catalog"."default",
  "cliente_activo" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_registro" varchar(255) COLLATE "pg_catalog"."default",
  "id_tienda" int8 NOT NULL,
  "apellido_cliente" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of cliente
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for direccion
-- ----------------------------
DROP TABLE IF EXISTS "direccion";
CREATE TABLE "direccion" (
  "id_direccion" int8 NOT NULL DEFAULT nextval('id_direccion'::regclass),
  "direccion" varchar(255) COLLATE "pg_catalog"."default",
  "id_ciudad" int8 NOT NULL
)
;

-- ----------------------------
-- Records of direccion
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for direccion_cliente
-- ----------------------------
DROP TABLE IF EXISTS "direccion_cliente";
CREATE TABLE "direccion_cliente" (
  "id_cliente" int8 NOT NULL,
  "id_direccion" int8 NOT NULL
)
;

-- ----------------------------
-- Records of direccion_cliente
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for direccion_empleado
-- ----------------------------
DROP TABLE IF EXISTS "direccion_empleado";
CREATE TABLE "direccion_empleado" (
  "id_empleado" int8 NOT NULL,
  "id_direccion" int8 NOT NULL
)
;

-- ----------------------------
-- Records of direccion_empleado
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for empleado
-- ----------------------------
DROP TABLE IF EXISTS "empleado";
CREATE TABLE "empleado" (
  "id_empleado" int8 NOT NULL DEFAULT nextval('id_empleado'::regclass),
  "nombre_empleado" varchar(255) COLLATE "pg_catalog"."default",
  "correo" varchar(255) COLLATE "pg_catalog"."default",
  "empleado_activo" varchar(255) COLLATE "pg_catalog"."default",
  "usuario" varchar(255) COLLATE "pg_catalog"."default",
  "password" varchar(255) COLLATE "pg_catalog"."default",
  "encargado" varchar(255) COLLATE "pg_catalog"."default",
  "id_tienda" int8 NOT NULL,
  "apellido_empleado" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of empleado
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for idioma
-- ----------------------------
DROP TABLE IF EXISTS "idioma";
CREATE TABLE "idioma" (
  "id_idioma" int8 NOT NULL DEFAULT nextval('id_idioma'::regclass),
  "idioma" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of idioma
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for idioma_pelicula
-- ----------------------------
DROP TABLE IF EXISTS "idioma_pelicula";
CREATE TABLE "idioma_pelicula" (
  "id_pelicula" int8 NOT NULL,
  "id_idioma" int8 NOT NULL
)
;

-- ----------------------------
-- Records of idioma_pelicula
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pais
-- ----------------------------
DROP TABLE IF EXISTS "pais";
CREATE TABLE "pais" (
  "id_pais" int8 NOT NULL DEFAULT nextval('id_pais'::regclass),
  "nombre_pais" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of pais
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pelicula
-- ----------------------------
DROP TABLE IF EXISTS "pelicula";
CREATE TABLE "pelicula" (
  "id_pelicula" int8 NOT NULL DEFAULT nextval('id_pelicula'::regclass),
  "nombre_pelicula" varchar(255) COLLATE "pg_catalog"."default",
  "sinopsis" varchar(255) COLLATE "pg_catalog"."default",
  "lanzamiento" int2,
  "renta_dias" int2,
  "costo" float8,
  "duracion" int2,
  "costo_danio" float8,
  "clasificacion" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of pelicula
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for renta
-- ----------------------------
DROP TABLE IF EXISTS "renta";
CREATE TABLE "renta" (
  "id_renta" int8 NOT NULL DEFAULT nextval('id_renta'::regclass),
  "renta_inicio" int2,
  "renta_final" int2,
  "total" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_pago" varchar(255) COLLATE "pg_catalog"."default",
  "id_cliente" int8 NOT NULL,
  "id_tienda" int8 NOT NULL,
  "id_empleado" int8 NOT NULL
)
;

-- ----------------------------
-- Records of renta
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tienda
-- ----------------------------
DROP TABLE IF EXISTS "tienda";
CREATE TABLE "tienda" (
  "id_tienda" int8 NOT NULL DEFAULT nextval('id_tienda'::regclass),
  "nombre_tienda" varchar(255) COLLATE "pg_catalog"."default",
  "id_direccion" int8 NOT NULL
)
;

-- ----------------------------
-- Records of tienda
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tienda_pelicula
-- ----------------------------
DROP TABLE IF EXISTS "tienda_pelicula";
CREATE TABLE "tienda_pelicula" (
  "id_tienda" int8 NOT NULL,
  "id_pelicula" int8 NOT NULL,
  "cantidad" int8
)
;

-- ----------------------------
-- Records of tienda_pelicula
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "id_actor"
OWNED BY "actor"."id_actor";
SELECT setval('"id_actor"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "id_categoria"
OWNED BY "categoria"."id_categoria";
SELECT setval('"id_categoria"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "id_ciudad"
OWNED BY "ciudad"."id_ciudad";
SELECT setval('"id_ciudad"', 3, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "id_cliente"
OWNED BY "cliente"."id_cliente";
SELECT setval('"id_cliente"', 3, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "id_direccion"
OWNED BY "direccion"."id_direccion";
SELECT setval('"id_direccion"', 3, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "id_empleado"
OWNED BY "empleado"."id_empleado";
SELECT setval('"id_empleado"', 3, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "id_idioma"
OWNED BY "idioma"."id_idioma";
SELECT setval('"id_idioma"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "id_pais"
OWNED BY "pais"."id_pais";
SELECT setval('"id_pais"', 83, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "id_pelicula"
OWNED BY "pelicula"."id_pelicula";
SELECT setval('"id_pelicula"', 3, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "id_renta"
OWNED BY "renta"."id_renta";
SELECT setval('"id_renta"', 3, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "id_tienda"
OWNED BY "tienda"."id_tienda";
SELECT setval('"id_tienda"', 3, false);

-- ----------------------------
-- Primary Key structure for table actor
-- ----------------------------
ALTER TABLE "actor" ADD CONSTRAINT "actor_pkey" PRIMARY KEY ("id_actor");

-- ----------------------------
-- Primary Key structure for table categoria
-- ----------------------------
ALTER TABLE "categoria" ADD CONSTRAINT "categoria_pkey" PRIMARY KEY ("id_categoria");

-- ----------------------------
-- Primary Key structure for table ciudad
-- ----------------------------
ALTER TABLE "ciudad" ADD CONSTRAINT "ciudad_pkey" PRIMARY KEY ("id_ciudad");

-- ----------------------------
-- Primary Key structure for table cliente
-- ----------------------------
ALTER TABLE "cliente" ADD CONSTRAINT "cliente_pkey" PRIMARY KEY ("id_cliente");

-- ----------------------------
-- Primary Key structure for table direccion
-- ----------------------------
ALTER TABLE "direccion" ADD CONSTRAINT "direccion_pkey" PRIMARY KEY ("id_direccion");

-- ----------------------------
-- Primary Key structure for table empleado
-- ----------------------------
ALTER TABLE "empleado" ADD CONSTRAINT "empleado_pkey" PRIMARY KEY ("id_empleado");

-- ----------------------------
-- Primary Key structure for table idioma
-- ----------------------------
ALTER TABLE "idioma" ADD CONSTRAINT "idioma_pkey" PRIMARY KEY ("id_idioma");

-- ----------------------------
-- Primary Key structure for table pais
-- ----------------------------
ALTER TABLE "pais" ADD CONSTRAINT "pais_pkey" PRIMARY KEY ("id_pais");

-- ----------------------------
-- Primary Key structure for table pelicula
-- ----------------------------
ALTER TABLE "pelicula" ADD CONSTRAINT "pelicula_pkey" PRIMARY KEY ("id_pelicula");

-- ----------------------------
-- Primary Key structure for table renta
-- ----------------------------
ALTER TABLE "renta" ADD CONSTRAINT "renta_pkey" PRIMARY KEY ("id_renta");

-- ----------------------------
-- Primary Key structure for table tienda
-- ----------------------------
ALTER TABLE "tienda" ADD CONSTRAINT "tienda_pkey" PRIMARY KEY ("id_tienda");

-- ----------------------------
-- Foreign Keys structure for table actor_pelicula
-- ----------------------------
ALTER TABLE "actor_pelicula" ADD CONSTRAINT "id_actor" FOREIGN KEY ("id_actor") REFERENCES "actor" ("id_actor") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "actor_pelicula" ADD CONSTRAINT "id_pelicula" FOREIGN KEY ("id_pelicula") REFERENCES "pelicula" ("id_pelicula") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table categoria_pelicula
-- ----------------------------
ALTER TABLE "categoria_pelicula" ADD CONSTRAINT "id_categoria" FOREIGN KEY ("id_categoria") REFERENCES "categoria" ("id_categoria") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "categoria_pelicula" ADD CONSTRAINT "id_pelicula" FOREIGN KEY ("id_pelicula") REFERENCES "pelicula" ("id_pelicula") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table ciudad
-- ----------------------------
ALTER TABLE "ciudad" ADD CONSTRAINT "id_pais" FOREIGN KEY ("id_pais") REFERENCES "pais" ("id_pais") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table cliente
-- ----------------------------
ALTER TABLE "cliente" ADD CONSTRAINT "id_tienda" FOREIGN KEY ("id_tienda") REFERENCES "tienda" ("id_tienda") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table direccion
-- ----------------------------
ALTER TABLE "direccion" ADD CONSTRAINT "id_ciudad" FOREIGN KEY ("id_ciudad") REFERENCES "ciudad" ("id_ciudad") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table direccion_cliente
-- ----------------------------
ALTER TABLE "direccion_cliente" ADD CONSTRAINT "id_cliente" FOREIGN KEY ("id_cliente") REFERENCES "cliente" ("id_cliente") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "direccion_cliente" ADD CONSTRAINT "id_direccion" FOREIGN KEY ("id_direccion") REFERENCES "direccion" ("id_direccion") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table direccion_empleado
-- ----------------------------
ALTER TABLE "direccion_empleado" ADD CONSTRAINT "id_direccion" FOREIGN KEY ("id_direccion") REFERENCES "direccion" ("id_direccion") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "direccion_empleado" ADD CONSTRAINT "id_empleado" FOREIGN KEY ("id_empleado") REFERENCES "empleado" ("id_empleado") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table empleado
-- ----------------------------
ALTER TABLE "empleado" ADD CONSTRAINT "id_tienda" FOREIGN KEY ("id_tienda") REFERENCES "tienda" ("id_tienda") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table idioma_pelicula
-- ----------------------------
ALTER TABLE "idioma_pelicula" ADD CONSTRAINT "id_idioma" FOREIGN KEY ("id_idioma") REFERENCES "idioma" ("id_idioma") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "idioma_pelicula" ADD CONSTRAINT "id_pelicula" FOREIGN KEY ("id_pelicula") REFERENCES "pelicula" ("id_pelicula") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table renta
-- ----------------------------
ALTER TABLE "renta" ADD CONSTRAINT "id_cliente" FOREIGN KEY ("id_cliente") REFERENCES "cliente" ("id_cliente") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "renta" ADD CONSTRAINT "id_empleado" FOREIGN KEY ("id_empleado") REFERENCES "empleado" ("id_empleado") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "renta" ADD CONSTRAINT "id_tienda" FOREIGN KEY ("id_tienda") REFERENCES "tienda" ("id_tienda") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table tienda
-- ----------------------------
ALTER TABLE "tienda" ADD CONSTRAINT "id_direccion" FOREIGN KEY ("id_direccion") REFERENCES "direccion" ("id_direccion") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table tienda_pelicula
-- ----------------------------
ALTER TABLE "tienda_pelicula" ADD CONSTRAINT "id_pelicula" FOREIGN KEY ("id_pelicula") REFERENCES "pelicula" ("id_pelicula") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "tienda_pelicula" ADD CONSTRAINT "id_tienda" FOREIGN KEY ("id_tienda") REFERENCES "tienda" ("id_tienda") ON DELETE CASCADE ON UPDATE NO ACTION;
