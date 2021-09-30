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

 Date: 30/09/2021 01:06:47
*/


-- ----------------------------
-- Sequence structure for id_actor
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_actor";

-- ----------------------------
-- Sequence structure for id_categoria
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_categoria";

-- ----------------------------
-- Sequence structure for id_ciudad
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_ciudad";

-- ----------------------------
-- Sequence structure for id_cliente
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_cliente";

-- ----------------------------
-- Sequence structure for id_direccion
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_direccion";

-- ----------------------------
-- Sequence structure for id_empleado
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_empleado";

-- ----------------------------
-- Sequence structure for id_idioma
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_idioma";

-- ----------------------------
-- Sequence structure for id_pais
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_pais";

-- ----------------------------
-- Sequence structure for id_pelicula
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_pelicula";

-- ----------------------------
-- Sequence structure for id_renta
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_renta";

-- ----------------------------
-- Sequence structure for id_tienda
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_tienda";

-- ----------------------------
-- Table structure for actor
-- ----------------------------
DROP TABLE IF EXISTS "actor";

-- ----------------------------
-- Records of actor
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for actor_pelicula
-- ----------------------------
DROP TABLE IF EXISTS "actor_pelicula";

-- ----------------------------
-- Records of actor_pelicula
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for categoria
-- ----------------------------
DROP TABLE IF EXISTS "categoria";

-- ----------------------------
-- Records of categoria
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for categoria_pelicula
-- ----------------------------
DROP TABLE IF EXISTS "categoria_pelicula";

-- ----------------------------
-- Records of categoria_pelicula
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ciudad
-- ----------------------------
DROP TABLE IF EXISTS "ciudad";

-- ----------------------------
-- Records of ciudad
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for cliente
-- ----------------------------
DROP TABLE IF EXISTS "cliente";

-- ----------------------------
-- Records of cliente
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for direccion
-- ----------------------------
DROP TABLE IF EXISTS "direccion";

-- ----------------------------
-- Records of direccion
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for direccion_cliente
-- ----------------------------
DROP TABLE IF EXISTS "direccion_cliente";

-- ----------------------------
-- Records of direccion_cliente
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for direccion_empleado
-- ----------------------------
DROP TABLE IF EXISTS "direccion_empleado";

-- ----------------------------
-- Records of direccion_empleado
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for empleado
-- ----------------------------
DROP TABLE IF EXISTS "empleado";

-- ----------------------------
-- Records of empleado
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for idioma
-- ----------------------------
DROP TABLE IF EXISTS "idioma";

-- ----------------------------
-- Records of idioma
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for idioma_pelicula
-- ----------------------------
DROP TABLE IF EXISTS "idioma_pelicula";

-- ----------------------------
-- Records of idioma_pelicula
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pais
-- ----------------------------
DROP TABLE IF EXISTS "pais";

-- ----------------------------
-- Records of pais
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pelicula
-- ----------------------------
DROP TABLE IF EXISTS "pelicula";

-- ----------------------------
-- Records of pelicula
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for renta
-- ----------------------------
DROP TABLE IF EXISTS "renta";

-- ----------------------------
-- Records of renta
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tienda
-- ----------------------------
DROP TABLE IF EXISTS "tienda";

-- ----------------------------
-- Records of tienda
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tienda_pelicula
-- ----------------------------
DROP TABLE IF EXISTS "tienda_pelicula";

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
SELECT setval('"id_actor"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "id_categoria"
OWNED BY "categoria"."id_categoria";
SELECT setval('"id_categoria"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "id_ciudad"
OWNED BY "ciudad"."id_ciudad";
SELECT setval('"id_ciudad"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "id_cliente"
OWNED BY "cliente"."id_cliente";
SELECT setval('"id_cliente"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "id_direccion"
OWNED BY "direccion"."id_direccion";
SELECT setval('"id_direccion"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "id_empleado"
OWNED BY "empleado"."id_empleado";
SELECT setval('"id_empleado"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "id_idioma"
OWNED BY "idioma"."id_idioma";
SELECT setval('"id_idioma"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "id_pais"
OWNED BY "pais"."id_pais";
SELECT setval('"id_pais"', 6, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "id_pelicula"
OWNED BY "pelicula"."id_pelicula";
SELECT setval('"id_pelicula"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "id_renta"
OWNED BY "renta"."id_renta";
SELECT setval('"id_renta"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "id_tienda"
OWNED BY "tienda"."id_tienda";
SELECT setval('"id_tienda"', 2, false);

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
