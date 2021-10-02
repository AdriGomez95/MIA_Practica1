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
DROP SEQUENCE IF EXISTS "id_actor" CASCADE;

-- ----------------------------
-- Sequence structure for id_categoria
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_categoria" CASCADE;

-- ----------------------------
-- Sequence structure for id_ciudad
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_ciudad" CASCADE;

-- ----------------------------
-- Sequence structure for id_cliente
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_cliente" CASCADE;

-- ----------------------------
-- Sequence structure for id_direccion
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_direccion" CASCADE;

-- ----------------------------
-- Sequence structure for id_empleado
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_empleado" CASCADE;

-- ----------------------------
-- Sequence structure for id_idioma
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_idioma" CASCADE;

-- ----------------------------
-- Sequence structure for id_pais
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_pais" CASCADE;

-- ----------------------------
-- Sequence structure for id_pelicula
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_pelicula" CASCADE;

-- ----------------------------
-- Sequence structure for id_renta
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_renta" CASCADE;

-- ----------------------------
-- Sequence structure for id_tienda
-- ----------------------------
DROP SEQUENCE IF EXISTS "id_tienda" CASCADE;

-- ----------------------------
-- Table structure for actor
-- ----------------------------
DROP TABLE IF EXISTS "actor" CASCADE;

-- ----------------------------
-- Records of actor
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for actor_pelicula
-- ----------------------------
DROP TABLE IF EXISTS "actor_pelicula" CASCADE;

-- ----------------------------
-- Records of actor_pelicula
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for categoria
-- ----------------------------
DROP TABLE IF EXISTS "categoria" CASCADE;

-- ----------------------------
-- Records of categoria
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for categoria_pelicula
-- ----------------------------
DROP TABLE IF EXISTS "categoria_pelicula" CASCADE;

-- ----------------------------
-- Records of categoria_pelicula
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ciudad
-- ----------------------------
DROP TABLE IF EXISTS "ciudad" CASCADE;

-- ----------------------------
-- Records of ciudad
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for cliente
-- ----------------------------
DROP TABLE IF EXISTS "cliente" CASCADE;

-- ----------------------------
-- Records of cliente
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for direccion
-- ----------------------------
DROP TABLE IF EXISTS "direccion" CASCADE;

-- ----------------------------
-- Records of direccion
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for direccion_cliente
-- ----------------------------
DROP TABLE IF EXISTS "direccion_cliente" CASCADE;

-- ----------------------------
-- Records of direccion_cliente
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for direccion_empleado
-- ----------------------------
DROP TABLE IF EXISTS "direccion_empleado" CASCADE;

-- ----------------------------
-- Records of direccion_empleado
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for empleado
-- ----------------------------
DROP TABLE IF EXISTS "empleado" CASCADE;

-- ----------------------------
-- Records of empleado
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for idioma
-- ----------------------------
DROP TABLE IF EXISTS "idioma" CASCADE;

-- ----------------------------
-- Records of idioma
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for idioma_pelicula
-- ----------------------------
DROP TABLE IF EXISTS "idioma_pelicula" CASCADE;

-- ----------------------------
-- Records of idioma_pelicula
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pais
-- ----------------------------
DROP TABLE IF EXISTS "pais" CASCADE;

-- ----------------------------
-- Records of pais
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pelicula
-- ----------------------------
DROP TABLE IF EXISTS "pelicula" CASCADE;

-- ----------------------------
-- Records of pelicula
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for renta
-- ----------------------------
DROP TABLE IF EXISTS "renta" CASCADE;

-- ----------------------------
-- Records of renta
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tienda
-- ----------------------------
DROP TABLE IF EXISTS "tienda" CASCADE;

-- ----------------------------
-- Records of tienda
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tienda_pelicula
-- ----------------------------
DROP TABLE IF EXISTS "tienda_pelicula" CASCADE;

-- ----------------------------
-- Records of tienda_pelicula
-- ----------------------------
BEGIN;
COMMIT;
