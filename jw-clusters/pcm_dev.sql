/*
Navicat PGSQL Data Transfer

Source Server         : 192.168.18.206
Source Server Version : 90601
Source Host           : 192.168.18.206:5432
Source Database       : pcm_dev
Source Schema         : pcm_dev

Target Server Type    : PGSQL
Target Server Version : 90601
File Encoding         : 65001

Date: 2017-03-08 10:25:29
*/


-- ----------------------------
-- Table structure for cmm_base_param
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."cmm_base_param";
CREATE TABLE "pcm_dev"."cmm_base_param" (
"id" int4 DEFAULT nextval('"pcm_dev".cmm_base_param_id_seq'::regclass) NOT NULL,
"chain_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"param_typ" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"param_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"param_drpt" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_id" int4,
"paramgrp_id" int4,
"paramsubgrp_id" int4,
"param_flg" varchar(3) COLLATE "default" DEFAULT NULL::character varying,
"status_flg" varchar(1) COLLATE "default" DEFAULT NULL::character varying,
"seq" int4,
"note" varchar(500) COLLATE "default" DEFAULT NULL::character varying,
"param_str1" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str2" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str3" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str4" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str5" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str6" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str7" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str8" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str9" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str10" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_num1" numeric(12,4) DEFAULT NULL::numeric,
"param_num2" numeric(12,4) DEFAULT NULL::numeric,
"param_num3" numeric(12,4) DEFAULT NULL::numeric,
"param_num4" numeric(12,4) DEFAULT NULL::numeric,
"param_num5" numeric(12,4) DEFAULT NULL::numeric,
"param_num6" numeric(12,4) DEFAULT NULL::numeric,
"param_num7" numeric(12,4) DEFAULT NULL::numeric,
"param_num8" numeric(12,4) DEFAULT NULL::numeric,
"param_num9" numeric(12,4) DEFAULT NULL::numeric,
"param_num10" numeric(12,4) DEFAULT NULL::numeric,
"param_dt1" timestamp(6),
"param_dt2" timestamp(6),
"param_dt3" timestamp(6),
"param_dt4" timestamp(6),
"param_dt5" timestamp(6),
"param_dt6" timestamp(6),
"param_dt7" timestamp(6),
"param_dt8" timestamp(6),
"param_dt9" timestamp(6),
"param_dt10" timestamp(6),
"created_by_uid" varchar(40) COLLATE "default",
"created_date" timestamp(6),
"created_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default",
"modified_date" timestamp(6),
"modified_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(100) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"version" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pcm_dev"."cmm_base_param" IS '集团及酒店通用参数的配置，可称为系统配置表或系统主表。';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."id" IS 'ID字段';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."chain_uid" IS '集团代码';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_typ" IS '参数类型';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_cd" IS '参数代码';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_drpt" IS '参数名称';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."paramgrp_id" IS '参数分组';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."paramsubgrp_id" IS '参数子分组';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_flg" IS '参数属性';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."status_flg" IS '状态标识';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."seq" IS '序号';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."note" IS '注释';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_str1" IS '文字型参数1';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_str2" IS '文字型参数2';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_str3" IS '文字型参数3';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_str4" IS '文字型参数4';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_str5" IS '文字型参数5';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_str6" IS '文字型参数6';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_str7" IS '文字型参数7';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_str8" IS '文字型参数8';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_str9" IS '文字型参数9';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_str10" IS '文字型参数10';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_num1" IS '数字型参数1';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_num2" IS '数字型参数2';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_num3" IS '数字型参数3';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_num4" IS '数字型参数4';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_num5" IS '数字型参数5';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_num6" IS '数字型参数6';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_num7" IS '数字型参数7';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_num8" IS '数字型参数8';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_num9" IS '数字型参数9';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_num10" IS '数字型参数10';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_dt1" IS '日期型参数1';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_dt2" IS '日期型参数2';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_dt3" IS '日期型参数3';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_dt4" IS '日期型参数4';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_dt5" IS '日期型参数5';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_dt6" IS '日期型参数6';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_dt7" IS '日期型参数7';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_dt8" IS '日期型参数8';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_dt9" IS '日期型参数9';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."param_dt10" IS '日期型参数10';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."created_date" IS '创建日';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."created_by" IS '创建人';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."created_by_cd" IS '创建人CODE';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."modified_date" IS '修改日';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."modified_by" IS '修改人';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."modified_by_cd" IS '修改人CODE';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."modified_unit_cd" IS '修改人单位KEY';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param"."version" IS '版本';

-- ----------------------------
-- Records of cmm_base_param
-- ----------------------------
INSERT INTO "pcm_dev"."cmm_base_param" VALUES ('1', '9999', 'RIGHTCLS', '0', '平台权级', null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."cmm_base_param" VALUES ('2', '9999', 'RIGHTCLS', '10', '集团权级', null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."cmm_base_param" VALUES ('3', '9999', 'GROUPCD', '000000', '集团代码1', null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."cmm_base_param" VALUES ('4', '9999', 'UNITCD', '000001', '单位代码1', null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."cmm_base_param" VALUES ('5', '9999', 'UNITCD', '000002', '单位代码2', null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."cmm_base_param" VALUES ('6', '9999', 'COUNTRY', 'CHN', '中国', null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."cmm_base_param" VALUES ('7', '9999', 'COUNTRY', 'JPN', '日本', null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."cmm_base_param" VALUES ('8', '9999', 'COUNTRY', 'USA', '美国', null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."cmm_base_param" VALUES ('9', '9999', 'PROVINCE', 'BEJ', '北京市', null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."cmm_base_param" VALUES ('10', '9999', 'PROVINCE', 'GUD', '广东省', null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."cmm_base_param" VALUES ('11', '9999', 'CITY', '001', '北京市', null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."cmm_base_param" VALUES ('12', '9999', 'CITY', '285', '韶关市', null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."cmm_base_param" VALUES ('13', '9999', 'CITY', '002', '北京市辖区', null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."cmm_base_param" VALUES ('14', '9999', 'CITY', '003', '北京直辖县', null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."cmm_base_param" VALUES ('15', '9999', 'PROVINCE', '15', '内蒙古自治区', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for cmm_base_param_multilang
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."cmm_base_param_multilang";
CREATE TABLE "pcm_dev"."cmm_base_param_multilang" (
"id" int4 DEFAULT nextval('"pcm_dev".cmm_base_param_multilang_id_seq'::regclass) NOT NULL,
"chain_uid" varchar(40) COLLATE "default",
"param_typ" varchar(20) COLLATE "default",
"param_id" int4,
"language_id" int4,
"param_drpt" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"note" varchar(500) COLLATE "default",
"param_str1" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str2" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str3" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str4" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str5" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str6" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str7" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str8" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str9" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str10" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"created_by_uid" varchar(40) COLLATE "default",
"created_date" timestamp(6),
"created_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default",
"modified_date" timestamp(6),
"modified_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(100) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"version" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."chain_uid" IS '集团代码';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."param_typ" IS '参数类型';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."param_id" IS '参数ID';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."param_drpt" IS '参数名称';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."note" IS '注释';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."param_str1" IS '文字型参数1';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."param_str2" IS '文字型参数2';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."param_str3" IS '文字型参数3';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."param_str4" IS '文字型参数4';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."param_str5" IS '文字型参数5';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."param_str6" IS '文字型参数6';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."param_str7" IS '文字型参数7';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."param_str8" IS '文字型参数8';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."param_str9" IS '文字型参数9';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."param_str10" IS '文字型参数10';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."created_date" IS '创建日';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."created_by" IS '创建人';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."created_by_cd" IS '创建人CODE';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."modified_date" IS '修改日';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."modified_by" IS '修改人';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."modified_by_cd" IS '修改人CODE';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."modified_unit_cd" IS '修改人单位KEY';
COMMENT ON COLUMN "pcm_dev"."cmm_base_param_multilang"."version" IS '版本';

-- ----------------------------
-- Records of cmm_base_param_multilang
-- ----------------------------

-- ----------------------------
-- Table structure for cmm_multi_item_param
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."cmm_multi_item_param";
CREATE TABLE "pcm_dev"."cmm_multi_item_param" (
"id" int4 DEFAULT nextval('"pcm_dev".cmm_multi_item_param_id_seq'::regclass) NOT NULL,
"chain_uid" varchar(40) COLLATE "default",
"unit_uid" varchar(40) COLLATE "default",
"pachage_id" int4,
"item_id" int4,
"source_tbl" varchar(40) COLLATE "default",
"source_col" varchar(40) COLLATE "default",
"created_by_uid" varchar(40) COLLATE "default",
"created_date" timestamp(6),
"created_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"version" int4,
"modified_by_uid" varchar(40) COLLATE "default",
"modified_date" timestamp(3),
"modified_by" varchar(50) COLLATE "default",
"modified_by_cd" varchar(100) COLLATE "default",
"modified_unit_cd" varchar(50) COLLATE "default",
"modified_unit_uid" varchar(40) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "pcm_dev"."cmm_multi_item_param"."chain_uid" IS '集团代码';
COMMENT ON COLUMN "pcm_dev"."cmm_multi_item_param"."unit_uid" IS '单位代码';
COMMENT ON COLUMN "pcm_dev"."cmm_multi_item_param"."pachage_id" IS '包代码,同一个包编号代表一个复选';
COMMENT ON COLUMN "pcm_dev"."cmm_multi_item_param"."item_id" IS '选项代码,对应的选项ID编号';
COMMENT ON COLUMN "pcm_dev"."cmm_multi_item_param"."source_tbl" IS '源数据表名,该项目的来源表';
COMMENT ON COLUMN "pcm_dev"."cmm_multi_item_param"."source_col" IS '源字段名,该项目的来源字段';
COMMENT ON COLUMN "pcm_dev"."cmm_multi_item_param"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pcm_dev"."cmm_multi_item_param"."created_date" IS '创建日';
COMMENT ON COLUMN "pcm_dev"."cmm_multi_item_param"."created_by" IS '创建人';
COMMENT ON COLUMN "pcm_dev"."cmm_multi_item_param"."created_by_cd" IS '创建人CODE';
COMMENT ON COLUMN "pcm_dev"."cmm_multi_item_param"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pcm_dev"."cmm_multi_item_param"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pcm_dev"."cmm_multi_item_param"."version" IS '版本';
COMMENT ON COLUMN "pcm_dev"."cmm_multi_item_param"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pcm_dev"."cmm_multi_item_param"."modified_date" IS '修改日';
COMMENT ON COLUMN "pcm_dev"."cmm_multi_item_param"."modified_by" IS '修改人';
COMMENT ON COLUMN "pcm_dev"."cmm_multi_item_param"."modified_by_cd" IS '修改人CODE';
COMMENT ON COLUMN "pcm_dev"."cmm_multi_item_param"."modified_unit_cd" IS '修改人单位CODE';
COMMENT ON COLUMN "pcm_dev"."cmm_multi_item_param"."modified_unit_uid" IS '修改人单位KEY';

-- ----------------------------
-- Records of cmm_multi_item_param
-- ----------------------------

-- ----------------------------
-- Table structure for cmm_number
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."cmm_number";
CREATE TABLE "pcm_dev"."cmm_number" (
"number_typ" varchar(20) COLLATE "default" DEFAULT ''::character varying NOT NULL,
"number_len" int4 NOT NULL,
"number_pref" varchar(20) COLLATE "default",
"number_suff" varchar(20) COLLATE "default",
"number_covr" varchar(1) COLLATE "default",
"number_drpt" varchar(200) COLLATE "default",
"last_upd" timestamp(6) NOT NULL,
"current_seq" int4 NOT NULL,
"max_seq_jmp" int4 NOT NULL,
"update_intvl" int4,
"created_by_uid" varchar(40) COLLATE "default",
"created_date" timestamp(6),
"created_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default",
"modified_date" timestamp(6),
"modified_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(100) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"version" int4,
"id" int4 DEFAULT nextval('"pcm_dev".cmm_number_id_seq'::regclass) NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "pcm_dev"."cmm_number"."number_typ" IS '番号类型';
COMMENT ON COLUMN "pcm_dev"."cmm_number"."number_len" IS '番号长度。0：非固定长度；1~99：固定长度位数';
COMMENT ON COLUMN "pcm_dev"."cmm_number"."number_pref" IS '前缀';
COMMENT ON COLUMN "pcm_dev"."cmm_number"."number_suff" IS '后缀';
COMMENT ON COLUMN "pcm_dev"."cmm_number"."number_covr" IS '补位符。固定长度时，番号不足长度位数的补位字符';
COMMENT ON COLUMN "pcm_dev"."cmm_number"."number_drpt" IS '番号名称';
COMMENT ON COLUMN "pcm_dev"."cmm_number"."last_upd" IS '最近更新时间戳';
COMMENT ON COLUMN "pcm_dev"."cmm_number"."current_seq" IS '最大序号';
COMMENT ON COLUMN "pcm_dev"."cmm_number"."max_seq_jmp" IS '最大序号间隔';
COMMENT ON COLUMN "pcm_dev"."cmm_number"."update_intvl" IS '更新间隔';
COMMENT ON COLUMN "pcm_dev"."cmm_number"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pcm_dev"."cmm_number"."created_date" IS '创建日';
COMMENT ON COLUMN "pcm_dev"."cmm_number"."created_by" IS '创建人';
COMMENT ON COLUMN "pcm_dev"."cmm_number"."created_by_cd" IS '创建人CODE';
COMMENT ON COLUMN "pcm_dev"."cmm_number"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pcm_dev"."cmm_number"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pcm_dev"."cmm_number"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pcm_dev"."cmm_number"."modified_date" IS '修改日';
COMMENT ON COLUMN "pcm_dev"."cmm_number"."modified_by" IS '修改人';
COMMENT ON COLUMN "pcm_dev"."cmm_number"."modified_by_cd" IS '修改人CODE';
COMMENT ON COLUMN "pcm_dev"."cmm_number"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pcm_dev"."cmm_number"."modified_unit_cd" IS '修改人单位KEY';
COMMENT ON COLUMN "pcm_dev"."cmm_number"."version" IS '版本';

-- ----------------------------
-- Records of cmm_number
-- ----------------------------

-- ----------------------------
-- Table structure for cmm_unit_param
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."cmm_unit_param";
CREATE TABLE "pcm_dev"."cmm_unit_param" (
"id" int4 DEFAULT nextval('"pcm_dev".cmm_unit_param_id_seq'::regclass) NOT NULL,
"chain_uid" varchar(40) COLLATE "default",
"unit_uid" varchar(40) COLLATE "default",
"param_typ" varchar(20) COLLATE "default",
"param_id" int4,
"param_drpt" varchar(200) COLLATE "default",
"param_cd" varchar(20) COLLATE "default",
"status_flg" varchar(3) COLLATE "default",
"seq" int4,
"note" varchar(500) COLLATE "default",
"created_by_uid" varchar(40) COLLATE "default",
"created_date" timestamp(6),
"created_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default",
"modified_date" timestamp(6),
"modified_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(100) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"version" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param"."chain_uid" IS '集团代码';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param"."unit_uid" IS '单位代码';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param"."param_typ" IS '参数类型';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param"."param_id" IS '参数ID';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param"."param_drpt" IS '参数名称';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param"."status_flg" IS '状态标识';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param"."seq" IS '序号';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param"."note" IS '注释';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param"."created_date" IS '创建日';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param"."created_by" IS '创建人';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param"."created_by_cd" IS '创建人CODE';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param"."modified_date" IS '修改日';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param"."modified_by" IS '修改人';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param"."modified_by_cd" IS '修改人CODE';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param"."modified_unit_cd" IS '修改人单位KEY';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param"."version" IS '版本';

-- ----------------------------
-- Records of cmm_unit_param
-- ----------------------------

-- ----------------------------
-- Table structure for cmm_unit_param_multilang
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."cmm_unit_param_multilang";
CREATE TABLE "pcm_dev"."cmm_unit_param_multilang" (
"id" int4 DEFAULT nextval('"pcm_dev".cmm_unit_param_multilang_id_seq'::regclass) NOT NULL,
"chain_uid" varchar(40) COLLATE "default",
"unit_uid" varchar(40) COLLATE "default",
"param_typ" varchar(20) COLLATE "default",
"param_id" int4,
"language_id" int4,
"param_drpt" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"note" varchar(500) COLLATE "default",
"created_by_uid" varchar(40) COLLATE "default",
"created_date" timestamp(6),
"created_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default",
"modified_date" timestamp(6),
"modified_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(100) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"version" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param_multilang"."chain_uid" IS '集团代码';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param_multilang"."unit_uid" IS '单位代码';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param_multilang"."param_typ" IS '参数类型';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param_multilang"."param_id" IS '参数ID';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param_multilang"."param_drpt" IS '参数名称';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param_multilang"."note" IS '注释';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param_multilang"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param_multilang"."created_date" IS '创建日';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param_multilang"."created_by" IS '创建人';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param_multilang"."created_by_cd" IS '创建人CODE';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param_multilang"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param_multilang"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param_multilang"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param_multilang"."modified_date" IS '修改日';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param_multilang"."modified_by" IS '修改人';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param_multilang"."modified_by_cd" IS '修改人CODE';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param_multilang"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param_multilang"."modified_unit_cd" IS '修改人单位KEY';
COMMENT ON COLUMN "pcm_dev"."cmm_unit_param_multilang"."version" IS '版本';

-- ----------------------------
-- Records of cmm_unit_param_multilang
-- ----------------------------

-- ----------------------------
-- Table structure for plf_cis_chain
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."plf_cis_chain";
CREATE TABLE "pcm_dev"."plf_cis_chain" (
"id" int4 DEFAULT nextval('"pcm_dev".plf_cis_chain_id_seq'::regclass) NOT NULL,
"cust_cd" varchar(20) COLLATE "default",
"chain_uid" varchar(40) COLLATE "default" NOT NULL,
"status_flg" varchar(1) COLLATE "default" NOT NULL,
"seq" int4 NOT NULL,
"chain_cd" varchar(20) COLLATE "default" NOT NULL,
"chain_nm" varchar(200) COLLATE "default" NOT NULL,
"chain_drpt" varchar(500) COLLATE "default",
"chain_flg" varchar(3) COLLATE "default" NOT NULL,
"seckey" varchar(200) COLLATE "default",
"memo" varchar(4000) COLLATE "default",
"created_by_uid" varchar(40) COLLATE "default",
"created_date" timestamp(6),
"created_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default",
"modified_date" timestamp(6),
"modified_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(100) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"version" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "pcm_dev"."plf_cis_chain"."cust_cd" IS '客户代码';
COMMENT ON COLUMN "pcm_dev"."plf_cis_chain"."chain_uid" IS '集团代码';
COMMENT ON COLUMN "pcm_dev"."plf_cis_chain"."status_flg" IS '集团状态';
COMMENT ON COLUMN "pcm_dev"."plf_cis_chain"."seq" IS '序号';
COMMENT ON COLUMN "pcm_dev"."plf_cis_chain"."chain_cd" IS '单位编号,同一集团编号不能一样';
COMMENT ON COLUMN "pcm_dev"."plf_cis_chain"."chain_nm" IS '单位名称';
COMMENT ON COLUMN "pcm_dev"."plf_cis_chain"."chain_drpt" IS '单位描述';
COMMENT ON COLUMN "pcm_dev"."plf_cis_chain"."chain_flg" IS '集团属性,0：单体客户，1：集团客户';
COMMENT ON COLUMN "pcm_dev"."plf_cis_chain"."seckey" IS '数据秘钥';
COMMENT ON COLUMN "pcm_dev"."plf_cis_chain"."memo" IS '备注';
COMMENT ON COLUMN "pcm_dev"."plf_cis_chain"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pcm_dev"."plf_cis_chain"."created_date" IS '创建日';
COMMENT ON COLUMN "pcm_dev"."plf_cis_chain"."created_by" IS '创建人';
COMMENT ON COLUMN "pcm_dev"."plf_cis_chain"."created_by_cd" IS '创建人CODE';
COMMENT ON COLUMN "pcm_dev"."plf_cis_chain"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_cis_chain"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_cis_chain"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pcm_dev"."plf_cis_chain"."modified_date" IS '修改日';
COMMENT ON COLUMN "pcm_dev"."plf_cis_chain"."modified_by" IS '修改人';
COMMENT ON COLUMN "pcm_dev"."plf_cis_chain"."modified_by_cd" IS '修改人CODE';
COMMENT ON COLUMN "pcm_dev"."plf_cis_chain"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_cis_chain"."modified_unit_cd" IS '修改人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_cis_chain"."version" IS '版本';

-- ----------------------------
-- Records of plf_cis_chain
-- ----------------------------
INSERT INTO "pcm_dev"."plf_cis_chain" VALUES ('1', 'CUST001', '000000', '1', '0', 'CHAIIN001', '测试集团1', '测试集团1', '1', 'asdfasdfasdfasdf', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for plf_cis_unit
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."plf_cis_unit";
CREATE TABLE "pcm_dev"."plf_cis_unit" (
"id" int4 DEFAULT nextval('"pcm_dev".plf_cis_unit_id_seq'::regclass) NOT NULL,
"chain_uid" varchar(40) COLLATE "default" NOT NULL,
"unit_uid" varchar(40) COLLATE "default" NOT NULL,
"status_flg" varchar(1) COLLATE "default" NOT NULL,
"seq" int4 NOT NULL,
"unit_cd" varchar(20) COLLATE "default" NOT NULL,
"unit_nm" varchar(200) COLLATE "default" NOT NULL,
"unit_drpt" varchar(500) COLLATE "default",
"unit_flg" varchar(3) COLLATE "default" NOT NULL,
"unit_typ" varchar(3) COLLATE "default",
"memo" varchar(4000) COLLATE "default",
"created_by_uid" varchar(40) COLLATE "default",
"created_date" timestamp(6),
"created_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default",
"modified_date" timestamp(6),
"modified_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(100) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"version" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "pcm_dev"."plf_cis_unit"."chain_uid" IS '集团代码';
COMMENT ON COLUMN "pcm_dev"."plf_cis_unit"."unit_uid" IS '单位代码';
COMMENT ON COLUMN "pcm_dev"."plf_cis_unit"."status_flg" IS '单位状态';
COMMENT ON COLUMN "pcm_dev"."plf_cis_unit"."seq" IS '序号';
COMMENT ON COLUMN "pcm_dev"."plf_cis_unit"."unit_cd" IS '单位编号,同一集团编号不能一样';
COMMENT ON COLUMN "pcm_dev"."plf_cis_unit"."unit_nm" IS '单位名称';
COMMENT ON COLUMN "pcm_dev"."plf_cis_unit"."unit_drpt" IS '单位描述';
COMMENT ON COLUMN "pcm_dev"."plf_cis_unit"."unit_flg" IS '单位属性,0：职能单位，1：业务单位';
COMMENT ON COLUMN "pcm_dev"."plf_cis_unit"."unit_typ" IS '单位类型,1：酒店，2：餐厅（社会）等等';
COMMENT ON COLUMN "pcm_dev"."plf_cis_unit"."memo" IS '备注';
COMMENT ON COLUMN "pcm_dev"."plf_cis_unit"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pcm_dev"."plf_cis_unit"."created_date" IS '创建日';
COMMENT ON COLUMN "pcm_dev"."plf_cis_unit"."created_by" IS '创建人';
COMMENT ON COLUMN "pcm_dev"."plf_cis_unit"."created_by_cd" IS '创建人CODE';
COMMENT ON COLUMN "pcm_dev"."plf_cis_unit"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_cis_unit"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_cis_unit"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pcm_dev"."plf_cis_unit"."modified_date" IS '修改日';
COMMENT ON COLUMN "pcm_dev"."plf_cis_unit"."modified_by" IS '修改人';
COMMENT ON COLUMN "pcm_dev"."plf_cis_unit"."modified_by_cd" IS '修改人CODE';
COMMENT ON COLUMN "pcm_dev"."plf_cis_unit"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_cis_unit"."modified_unit_cd" IS '修改人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_cis_unit"."version" IS '版本';

-- ----------------------------
-- Records of plf_cis_unit
-- ----------------------------
INSERT INTO "pcm_dev"."plf_cis_unit" VALUES ('1', '000000', '000001', '1', '0', 'UNIT001', '测试单位1', '测试单位1', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for plf_cmm_config
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."plf_cmm_config";
CREATE TABLE "pcm_dev"."plf_cmm_config" (
"id" int4 DEFAULT nextval('"pcm_dev".plf_cmm_config_id_seq'::regclass) NOT NULL,
"param_typ" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"param_id" int4,
"param_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"param_drpt" varchar(100) COLLATE "default" DEFAULT NULL::character varying,
"param_grp" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"param_subgrp" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"param_flg" varchar(3) COLLATE "default" DEFAULT NULL::character varying,
"status_flg" varchar(1) COLLATE "default" DEFAULT NULL::character varying,
"seq" int4,
"note" varchar(500) COLLATE "default" DEFAULT NULL::character varying,
"param_str1" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str2" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str3" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str4" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str5" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str6" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str7" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str8" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str9" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str10" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_num1" numeric(12,4) DEFAULT NULL::numeric,
"param_num2" numeric(12,4) DEFAULT NULL::numeric,
"param_num3" numeric(12,4) DEFAULT NULL::numeric,
"param_num4" numeric(12,4) DEFAULT NULL::numeric,
"param_num5" numeric(12,4) DEFAULT NULL::numeric,
"param_num6" numeric(12,4) DEFAULT NULL::numeric,
"param_num7" numeric(12,4) DEFAULT NULL::numeric,
"param_num8" numeric(12,4) DEFAULT NULL::numeric,
"param_num9" numeric(12,4) DEFAULT NULL::numeric,
"param_num10" numeric(12,4) DEFAULT NULL::numeric,
"param_dt1" date,
"param_dt2" date,
"param_dt3" date,
"param_dt4" date,
"param_dt5" date,
"param_dt6" date,
"param_dt7" date,
"param_dt8" date,
"param_dt9" date,
"param_dt10" date,
"param_ver" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pcm_dev"."plf_cmm_config" IS '平台配置参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."id" IS 'IDID字段';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_typ" IS '参数类型';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_id" IS '参数ID';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_cd" IS '参数代码';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_drpt" IS '参数名称';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_grp" IS '参数分组';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_subgrp" IS '参数子分组';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_flg" IS '参数属性';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."status_flg" IS '状态标识1：有效（默认）
0：无效';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."seq" IS '序号';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."note" IS '注释';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_str1" IS '文字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_str2" IS '文字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_str3" IS '文字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_str4" IS '文字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_str5" IS '文字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_str6" IS '文字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_str7" IS '文字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_str8" IS '文字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_str9" IS '文字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_str10" IS '文字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_num1" IS '数字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_num2" IS '数字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_num3" IS '数字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_num4" IS '数字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_num5" IS '数字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_num6" IS '数字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_num7" IS '数字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_num8" IS '数字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_num9" IS '数字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_num10" IS '数字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_dt1" IS '日期型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_dt2" IS '日期型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_dt3" IS '日期型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_dt4" IS '日期型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_dt5" IS '日期型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_dt6" IS '日期型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_dt7" IS '日期型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_dt8" IS '日期型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_dt9" IS '日期型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_dt10" IS '日期型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config"."param_ver" IS '修改版本本字段用来对业务系统中对应的表进行一致性校验，程序控制此字段变更';

-- ----------------------------
-- Records of plf_cmm_config
-- ----------------------------

-- ----------------------------
-- Table structure for plf_cmm_config_multilang
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."plf_cmm_config_multilang";
CREATE TABLE "pcm_dev"."plf_cmm_config_multilang" (
"id" int4 DEFAULT nextval('"pcm_dev".plf_cmm_config_multilang_id_seq'::regclass) NOT NULL,
"param_typ" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"param_id" int4,
"language_id" int4,
"param_drpt" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"status_flg" varchar(1) COLLATE "default" DEFAULT NULL::character varying,
"note" varchar(500) COLLATE "default" DEFAULT NULL::character varying,
"param_str1" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str2" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str3" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str4" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str5" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str6" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str7" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str8" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str9" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str10" varchar(200) COLLATE "default" DEFAULT NULL::character varying
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pcm_dev"."plf_cmm_config_multilang" IS '配置参数多语言';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config_multilang"."id" IS 'IDID字段';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config_multilang"."param_typ" IS '参数类型';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config_multilang"."param_id" IS '参数ID';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config_multilang"."language_id" IS '语言代码参考通用的语种代码表';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config_multilang"."param_drpt" IS '参数名称';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config_multilang"."status_flg" IS '状态标识1：有效（默认）
0：无效';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config_multilang"."note" IS '注释';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config_multilang"."param_str1" IS '文字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config_multilang"."param_str2" IS '文字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config_multilang"."param_str3" IS '文字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config_multilang"."param_str4" IS '文字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config_multilang"."param_str5" IS '文字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config_multilang"."param_str6" IS '文字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config_multilang"."param_str7" IS '文字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config_multilang"."param_str8" IS '文字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config_multilang"."param_str9" IS '文字型参数';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_config_multilang"."param_str10" IS '文字型参数';

-- ----------------------------
-- Records of plf_cmm_config_multilang
-- ----------------------------

-- ----------------------------
-- Table structure for plf_cmm_param_multilang
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."plf_cmm_param_multilang";
CREATE TABLE "pcm_dev"."plf_cmm_param_multilang" (
"id" int4 DEFAULT nextval('"pcm_dev".plf_cmm_param_multilang_id_seq'::regclass) NOT NULL,
"param_typ" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"param_id" int4,
"language_id" int4,
"param_drpt" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str1" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str2" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str3" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str4" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str5" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str6" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str7" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str8" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str9" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str10" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"created_by_uid" varchar(40) COLLATE "default",
"created_date" timestamp(6),
"created_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default",
"modified_date" timestamp(6),
"modified_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(100) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"version" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "pcm_dev"."plf_cmm_param_multilang"."param_typ" IS '参数类型';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_param_multilang"."param_id" IS '参数ID';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_param_multilang"."param_drpt" IS '参数名称';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_param_multilang"."param_str1" IS '文字型参数1';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_param_multilang"."param_str2" IS '文字型参数2';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_param_multilang"."param_str3" IS '文字型参数3';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_param_multilang"."param_str4" IS '文字型参数4';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_param_multilang"."param_str5" IS '文字型参数5';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_param_multilang"."param_str6" IS '文字型参数6';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_param_multilang"."param_str7" IS '文字型参数7';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_param_multilang"."param_str8" IS '文字型参数8';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_param_multilang"."param_str9" IS '文字型参数9';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_param_multilang"."param_str10" IS '文字型参数10';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_param_multilang"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_param_multilang"."created_date" IS '创建日';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_param_multilang"."created_by" IS '创建人';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_param_multilang"."created_by_cd" IS '创建人CODE';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_param_multilang"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_param_multilang"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_param_multilang"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_param_multilang"."modified_date" IS '修改日';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_param_multilang"."modified_by" IS '修改人';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_param_multilang"."modified_by_cd" IS '修改人CODE';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_param_multilang"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_param_multilang"."modified_unit_cd" IS '修改人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_param_multilang"."version" IS '版本';

-- ----------------------------
-- Records of plf_cmm_param_multilang
-- ----------------------------

-- ----------------------------
-- Table structure for plf_cmm_parameter
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."plf_cmm_parameter";
CREATE TABLE "pcm_dev"."plf_cmm_parameter" (
"id" int4 DEFAULT nextval('"pcm_dev".plf_cmm_parameter_id_seq'::regclass) NOT NULL,
"param_typ" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"param_id" int4,
"param_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"param_drpt" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"paramgrp_id" int4,
"paramsubgrp_id" int4,
"param_flg" varchar(3) COLLATE "default" DEFAULT NULL::character varying,
"status_flg" varchar(1) COLLATE "default" DEFAULT NULL::character varying,
"seq" int4,
"note" varchar(500) COLLATE "default" DEFAULT NULL::character varying,
"param_str1" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str2" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str3" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str4" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str5" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str6" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str7" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str8" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str9" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_str10" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"param_num1" numeric(12,4) DEFAULT NULL::numeric,
"param_num2" numeric(12,4) DEFAULT NULL::numeric,
"param_num3" numeric(12,4) DEFAULT NULL::numeric,
"param_num4" numeric(12,4) DEFAULT NULL::numeric,
"param_num5" numeric(12,4) DEFAULT NULL::numeric,
"param_num6" numeric(12,4) DEFAULT NULL::numeric,
"param_num7" numeric(12,4) DEFAULT NULL::numeric,
"param_num8" numeric(12,4) DEFAULT NULL::numeric,
"param_num9" numeric(12,4) DEFAULT NULL::numeric,
"param_num10" numeric(12,4) DEFAULT NULL::numeric,
"param_dt1" timestamp(6),
"param_dt2" timestamp(6),
"param_dt3" timestamp(6),
"param_dt4" timestamp(6),
"param_dt5" timestamp(6),
"param_dt6" timestamp(6),
"param_dt7" timestamp(6),
"param_dt8" timestamp(6),
"param_dt9" timestamp(6),
"param_dt10" timestamp(6),
"param_ver" int4,
"created_by_uid" varchar(40) COLLATE "default",
"created_date" timestamp(6),
"created_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default",
"modified_date" timestamp(6),
"modified_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"version" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pcm_dev"."plf_cmm_parameter" IS '平台参数配置';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."id" IS 'ID字段';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_typ" IS '参数类型';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_id" IS '参数ID';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_cd" IS '参数代码';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_drpt" IS '参数名称';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."paramgrp_id" IS '参数分组';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."paramsubgrp_id" IS '参数子分组';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_flg" IS '参数属性';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."status_flg" IS '状态标识';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."seq" IS '序号';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."note" IS '注释';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_str1" IS '文字型参数1';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_str2" IS '文字型参数2';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_str3" IS '文字型参数3';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_str4" IS '文字型参数4';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_str5" IS '文字型参数5';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_str6" IS '文字型参数6';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_str7" IS '文字型参数7';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_str8" IS '文字型参数8';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_str9" IS '文字型参数9';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_str10" IS '文字型参数10';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_num1" IS '数字型参数1';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_num2" IS '数字型参数2';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_num3" IS '数字型参数3';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_num4" IS '数字型参数4';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_num5" IS '数字型参数5';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_num6" IS '数字型参数6';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_num7" IS '数字型参数7';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_num8" IS '数字型参数8';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_num9" IS '数字型参数9';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_num10" IS '数字型参数10';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_dt1" IS '日期型参数1';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_dt2" IS '日期型参数2';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_dt3" IS '日期型参数3';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_dt4" IS '日期型参数4';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_dt5" IS '日期型参数5';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_dt6" IS '日期型参数6';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_dt7" IS '日期型参数7';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_dt8" IS '日期型参数8';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_dt9" IS '日期型参数9';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_dt10" IS '日期型参数10';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."param_ver" IS '修改版本';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."created_date" IS '创建日';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."created_by" IS '创建人';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."created_by_cd" IS '创建人NO';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."modified_date" IS '修改日';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."modified_by" IS '修改人';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."modified_by_cd" IS '修改人NO';
COMMENT ON COLUMN "pcm_dev"."plf_cmm_parameter"."version" IS '版本';

-- ----------------------------
-- Records of plf_cmm_parameter
-- ----------------------------
INSERT INTO "pcm_dev"."plf_cmm_parameter" VALUES ('1', 'COUNTRY', '1', 'CN', '中国', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."plf_cmm_parameter" VALUES ('2', 'COUNTRY', '2', 'US', '美国', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."plf_cmm_parameter" VALUES ('3', 'COUNTRY', null, 'JP', '日本', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for plf_help_answer
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."plf_help_answer";
CREATE TABLE "pcm_dev"."plf_help_answer" (
"id" int8 DEFAULT nextval('"pcm_dev".plf_help_answer_id_seq'::regclass) NOT NULL,
"answer_id" int4,
"question_id" int4,
"help_id" int4,
"answer_typ" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"answer_drpt" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"status_flg" varchar(1) COLLATE "default" DEFAULT NULL::character varying,
"seq" int4,
"memo" varchar(500) COLLATE "default" DEFAULT NULL::character varying,
"created_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_date" timestamp(6),
"created_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_date" timestamp(6),
"modified_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"version" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pcm_dev"."plf_help_answer" IS '帮助提问解答表';
COMMENT ON COLUMN "pcm_dev"."plf_help_answer"."id" IS 'ID字段';
COMMENT ON COLUMN "pcm_dev"."plf_help_answer"."answer_id" IS '解答ID';
COMMENT ON COLUMN "pcm_dev"."plf_help_answer"."question_id" IS '提问ID';
COMMENT ON COLUMN "pcm_dev"."plf_help_answer"."help_id" IS '帮助信息ID';
COMMENT ON COLUMN "pcm_dev"."plf_help_answer"."answer_typ" IS '提问类型';
COMMENT ON COLUMN "pcm_dev"."plf_help_answer"."answer_drpt" IS '提问内容';
COMMENT ON COLUMN "pcm_dev"."plf_help_answer"."status_flg" IS '状态标示';
COMMENT ON COLUMN "pcm_dev"."plf_help_answer"."seq" IS '排序';
COMMENT ON COLUMN "pcm_dev"."plf_help_answer"."memo" IS '备注';
COMMENT ON COLUMN "pcm_dev"."plf_help_answer"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pcm_dev"."plf_help_answer"."created_date" IS '创建日';
COMMENT ON COLUMN "pcm_dev"."plf_help_answer"."created_by" IS '创建人';
COMMENT ON COLUMN "pcm_dev"."plf_help_answer"."created_by_cd" IS '创建人NO';
COMMENT ON COLUMN "pcm_dev"."plf_help_answer"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_help_answer"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_help_answer"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pcm_dev"."plf_help_answer"."modified_date" IS '修改日';
COMMENT ON COLUMN "pcm_dev"."plf_help_answer"."modified_by" IS '修改人';
COMMENT ON COLUMN "pcm_dev"."plf_help_answer"."modified_by_cd" IS '修改人NO';
COMMENT ON COLUMN "pcm_dev"."plf_help_answer"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_help_answer"."modified_unit_cd" IS '修改人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_help_answer"."version" IS '版本';

-- ----------------------------
-- Records of plf_help_answer
-- ----------------------------
INSERT INTO "pcm_dev"."plf_help_answer" VALUES ('1', '1', '1', '5', '1', '已修改', '1', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."plf_help_answer" VALUES ('2', '2', '1', '5', '2', '录入数字', '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."plf_help_answer" VALUES ('3', '3', '2', '2', '1', '最大录入999', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for plf_help_conf
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."plf_help_conf";
CREATE TABLE "pcm_dev"."plf_help_conf" (
"id" int8 DEFAULT nextval('"pcm_dev".plf_help_conf_id_seq'::regclass) NOT NULL,
"page_id" int4,
"page_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"page_field_id" int4,
"page_field_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"help_id" int4,
"status_flg" varchar(1) COLLATE "default" DEFAULT NULL::character varying,
"memo" varchar(500) COLLATE "default" DEFAULT NULL::character varying,
"created_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_date" timestamp(6),
"created_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_date" timestamp(6),
"modified_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"version" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pcm_dev"."plf_help_conf" IS '帮助配置表';
COMMENT ON COLUMN "pcm_dev"."plf_help_conf"."id" IS 'ID字段';
COMMENT ON COLUMN "pcm_dev"."plf_help_conf"."page_id" IS '页面ID';
COMMENT ON COLUMN "pcm_dev"."plf_help_conf"."page_cd" IS '页面CD';
COMMENT ON COLUMN "pcm_dev"."plf_help_conf"."page_field_id" IS '页面域ID';
COMMENT ON COLUMN "pcm_dev"."plf_help_conf"."page_field_cd" IS '页面域CD';
COMMENT ON COLUMN "pcm_dev"."plf_help_conf"."help_id" IS '帮助信息ID';
COMMENT ON COLUMN "pcm_dev"."plf_help_conf"."status_flg" IS '状态标示';
COMMENT ON COLUMN "pcm_dev"."plf_help_conf"."memo" IS '备注';
COMMENT ON COLUMN "pcm_dev"."plf_help_conf"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pcm_dev"."plf_help_conf"."created_date" IS '创建日';
COMMENT ON COLUMN "pcm_dev"."plf_help_conf"."created_by" IS '创建人';
COMMENT ON COLUMN "pcm_dev"."plf_help_conf"."created_by_cd" IS '创建人NO';
COMMENT ON COLUMN "pcm_dev"."plf_help_conf"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_help_conf"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_help_conf"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pcm_dev"."plf_help_conf"."modified_date" IS '修改日';
COMMENT ON COLUMN "pcm_dev"."plf_help_conf"."modified_by" IS '修改人';
COMMENT ON COLUMN "pcm_dev"."plf_help_conf"."modified_by_cd" IS '修改人NO';
COMMENT ON COLUMN "pcm_dev"."plf_help_conf"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_help_conf"."modified_unit_cd" IS '修改人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_help_conf"."version" IS '版本';

-- ----------------------------
-- Records of plf_help_conf
-- ----------------------------
INSERT INTO "pcm_dev"."plf_help_conf" VALUES ('1', '1', '001', '1', '001001', '1', '1', '字段1', null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pcm_dev"."plf_help_conf" VALUES ('2', '1', '001', '2', '001002', '2', '1', '字段2', null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pcm_dev"."plf_help_conf" VALUES ('3', '1', '001', '3', '001003', '3', '1', '字段3', null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pcm_dev"."plf_help_conf" VALUES ('4', '2', '002', '1', '002001', '4', '1', '字段1', null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for plf_help_info
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."plf_help_info";
CREATE TABLE "pcm_dev"."plf_help_info" (
"id" int8 DEFAULT nextval('"pcm_dev".plf_help_info_id_seq'::regclass) NOT NULL,
"help_id" int4,
"help_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"help_typ" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"help_drpt" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"status_flg" varchar(1) COLLATE "default" DEFAULT NULL::character varying,
"seq" int4,
"memo" varchar(500) COLLATE "default" DEFAULT NULL::character varying,
"created_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_date" timestamp(6),
"created_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_date" timestamp(6),
"modified_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"version" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pcm_dev"."plf_help_info" IS '帮助信息表';
COMMENT ON COLUMN "pcm_dev"."plf_help_info"."id" IS 'ID字段';
COMMENT ON COLUMN "pcm_dev"."plf_help_info"."help_id" IS '帮助信息ID';
COMMENT ON COLUMN "pcm_dev"."plf_help_info"."help_cd" IS '帮助信息CD';
COMMENT ON COLUMN "pcm_dev"."plf_help_info"."help_typ" IS '帮助信息类型';
COMMENT ON COLUMN "pcm_dev"."plf_help_info"."help_drpt" IS '帮助信息内容';
COMMENT ON COLUMN "pcm_dev"."plf_help_info"."status_flg" IS '状态标示';
COMMENT ON COLUMN "pcm_dev"."plf_help_info"."seq" IS '排序';
COMMENT ON COLUMN "pcm_dev"."plf_help_info"."memo" IS '备注';
COMMENT ON COLUMN "pcm_dev"."plf_help_info"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pcm_dev"."plf_help_info"."created_date" IS '创建日';
COMMENT ON COLUMN "pcm_dev"."plf_help_info"."created_by" IS '创建人';
COMMENT ON COLUMN "pcm_dev"."plf_help_info"."created_by_cd" IS '创建人NO';
COMMENT ON COLUMN "pcm_dev"."plf_help_info"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_help_info"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_help_info"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pcm_dev"."plf_help_info"."modified_date" IS '修改日';
COMMENT ON COLUMN "pcm_dev"."plf_help_info"."modified_by" IS '修改人';
COMMENT ON COLUMN "pcm_dev"."plf_help_info"."modified_by_cd" IS '修改人NO';
COMMENT ON COLUMN "pcm_dev"."plf_help_info"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_help_info"."modified_unit_cd" IS '修改人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_help_info"."version" IS '版本';

-- ----------------------------
-- Records of plf_help_info
-- ----------------------------
INSERT INTO "pcm_dev"."plf_help_info" VALUES ('1', '5', '005', '1', '帮助信息', '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."plf_help_info" VALUES ('2', '2', '002', '1', '帮助信息2', '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."plf_help_info" VALUES ('3', '4', '004', '1', '帮助信息页面2', '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for plf_help_info_multilang
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."plf_help_info_multilang";
CREATE TABLE "pcm_dev"."plf_help_info_multilang" (
"id" int8 DEFAULT nextval('"pcm_dev".plf_help_info_multilang_id_seq'::regclass) NOT NULL,
"help_id" int4,
"help_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"help_typ" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"language_id" int4,
"help_drpt" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"status_flg" varchar(1) COLLATE "default" DEFAULT NULL::character varying,
"seq" int4,
"memo" varchar(500) COLLATE "default" DEFAULT NULL::character varying,
"created_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_date" timestamp(6),
"created_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_date" timestamp(6),
"modified_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"version" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pcm_dev"."plf_help_info_multilang" IS '帮助信息国际化表';
COMMENT ON COLUMN "pcm_dev"."plf_help_info_multilang"."id" IS 'ID字段';
COMMENT ON COLUMN "pcm_dev"."plf_help_info_multilang"."help_id" IS '帮助信息ID';
COMMENT ON COLUMN "pcm_dev"."plf_help_info_multilang"."help_cd" IS '帮助信息CD';
COMMENT ON COLUMN "pcm_dev"."plf_help_info_multilang"."help_typ" IS '帮助信息类型';
COMMENT ON COLUMN "pcm_dev"."plf_help_info_multilang"."language_id" IS '语种';
COMMENT ON COLUMN "pcm_dev"."plf_help_info_multilang"."help_drpt" IS '帮助信息内容';
COMMENT ON COLUMN "pcm_dev"."plf_help_info_multilang"."status_flg" IS '状态标示';
COMMENT ON COLUMN "pcm_dev"."plf_help_info_multilang"."seq" IS '排序';
COMMENT ON COLUMN "pcm_dev"."plf_help_info_multilang"."memo" IS '备注';
COMMENT ON COLUMN "pcm_dev"."plf_help_info_multilang"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pcm_dev"."plf_help_info_multilang"."created_date" IS '创建日';
COMMENT ON COLUMN "pcm_dev"."plf_help_info_multilang"."created_by" IS '创建人';
COMMENT ON COLUMN "pcm_dev"."plf_help_info_multilang"."created_by_cd" IS '创建人NO';
COMMENT ON COLUMN "pcm_dev"."plf_help_info_multilang"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_help_info_multilang"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_help_info_multilang"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pcm_dev"."plf_help_info_multilang"."modified_date" IS '修改日';
COMMENT ON COLUMN "pcm_dev"."plf_help_info_multilang"."modified_by" IS '修改人';
COMMENT ON COLUMN "pcm_dev"."plf_help_info_multilang"."modified_by_cd" IS '修改人NO';
COMMENT ON COLUMN "pcm_dev"."plf_help_info_multilang"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_help_info_multilang"."modified_unit_cd" IS '修改人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_help_info_multilang"."version" IS '版本';

-- ----------------------------
-- Records of plf_help_info_multilang
-- ----------------------------

-- ----------------------------
-- Table structure for plf_help_question
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."plf_help_question";
CREATE TABLE "pcm_dev"."plf_help_question" (
"id" int8 DEFAULT nextval('"pcm_dev".plf_help_question_id_seq'::regclass) NOT NULL,
"question_id" int4,
"help_id" int4,
"question_typ" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"question_drpt" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"status_flg" varchar(1) COLLATE "default" DEFAULT NULL::character varying,
"seq" int4,
"memo" varchar(500) COLLATE "default" DEFAULT NULL::character varying,
"created_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_date" timestamp(6),
"created_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_date" timestamp(6),
"modified_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"version" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pcm_dev"."plf_help_question" IS '帮助提问表';
COMMENT ON COLUMN "pcm_dev"."plf_help_question"."id" IS 'ID字段';
COMMENT ON COLUMN "pcm_dev"."plf_help_question"."question_id" IS '提问ID';
COMMENT ON COLUMN "pcm_dev"."plf_help_question"."help_id" IS '帮助信息ID';
COMMENT ON COLUMN "pcm_dev"."plf_help_question"."question_typ" IS '提问类型';
COMMENT ON COLUMN "pcm_dev"."plf_help_question"."question_drpt" IS '提问内容';
COMMENT ON COLUMN "pcm_dev"."plf_help_question"."status_flg" IS '状态标示';
COMMENT ON COLUMN "pcm_dev"."plf_help_question"."seq" IS '排序';
COMMENT ON COLUMN "pcm_dev"."plf_help_question"."memo" IS '备注';
COMMENT ON COLUMN "pcm_dev"."plf_help_question"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pcm_dev"."plf_help_question"."created_date" IS '创建日';
COMMENT ON COLUMN "pcm_dev"."plf_help_question"."created_by" IS '创建人';
COMMENT ON COLUMN "pcm_dev"."plf_help_question"."created_by_cd" IS '创建人NO';
COMMENT ON COLUMN "pcm_dev"."plf_help_question"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_help_question"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_help_question"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pcm_dev"."plf_help_question"."modified_date" IS '修改日';
COMMENT ON COLUMN "pcm_dev"."plf_help_question"."modified_by" IS '修改人';
COMMENT ON COLUMN "pcm_dev"."plf_help_question"."modified_by_cd" IS '修改人NO';
COMMENT ON COLUMN "pcm_dev"."plf_help_question"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_help_question"."modified_unit_cd" IS '修改人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_help_question"."version" IS '版本';

-- ----------------------------
-- Records of plf_help_question
-- ----------------------------
INSERT INTO "pcm_dev"."plf_help_question" VALUES ('1', '1', '5', '1', '应该录入什么数据呢', '1', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."plf_help_question" VALUES ('2', '2', '2', '1', '最大录入多少呢', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for plf_help_unit_conf
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."plf_help_unit_conf";
CREATE TABLE "pcm_dev"."plf_help_unit_conf" (
"id" int8 DEFAULT nextval('"pcm_dev".plf_help_unit_conf_id_seq'::regclass) NOT NULL,
"chain_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"page_id" int4,
"page_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"page_field_id" int4,
"page_field_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"help_id" int4,
"status_flg" varchar(1) COLLATE "default" DEFAULT NULL::character varying,
"memo" varchar(500) COLLATE "default" DEFAULT NULL::character varying,
"created_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_date" timestamp(6),
"created_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_date" timestamp(6),
"modified_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"version" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pcm_dev"."plf_help_unit_conf" IS '帮助酒店集团特殊定义表';
COMMENT ON COLUMN "pcm_dev"."plf_help_unit_conf"."id" IS 'ID字段';
COMMENT ON COLUMN "pcm_dev"."plf_help_unit_conf"."chain_uid" IS '集团UID';
COMMENT ON COLUMN "pcm_dev"."plf_help_unit_conf"."unit_uid" IS '单位UID';
COMMENT ON COLUMN "pcm_dev"."plf_help_unit_conf"."page_id" IS '页面ID';
COMMENT ON COLUMN "pcm_dev"."plf_help_unit_conf"."page_cd" IS '页面CD';
COMMENT ON COLUMN "pcm_dev"."plf_help_unit_conf"."page_field_id" IS '页面域ID';
COMMENT ON COLUMN "pcm_dev"."plf_help_unit_conf"."page_field_cd" IS '页面域CD';
COMMENT ON COLUMN "pcm_dev"."plf_help_unit_conf"."help_id" IS '帮助信息ID';
COMMENT ON COLUMN "pcm_dev"."plf_help_unit_conf"."status_flg" IS '状态标示';
COMMENT ON COLUMN "pcm_dev"."plf_help_unit_conf"."memo" IS '备注';
COMMENT ON COLUMN "pcm_dev"."plf_help_unit_conf"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pcm_dev"."plf_help_unit_conf"."created_date" IS '创建日';
COMMENT ON COLUMN "pcm_dev"."plf_help_unit_conf"."created_by" IS '创建人';
COMMENT ON COLUMN "pcm_dev"."plf_help_unit_conf"."created_by_cd" IS '创建人NO';
COMMENT ON COLUMN "pcm_dev"."plf_help_unit_conf"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_help_unit_conf"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_help_unit_conf"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pcm_dev"."plf_help_unit_conf"."modified_date" IS '修改日';
COMMENT ON COLUMN "pcm_dev"."plf_help_unit_conf"."modified_by" IS '修改人';
COMMENT ON COLUMN "pcm_dev"."plf_help_unit_conf"."modified_by_cd" IS '修改人NO';
COMMENT ON COLUMN "pcm_dev"."plf_help_unit_conf"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_help_unit_conf"."modified_unit_cd" IS '修改人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_help_unit_conf"."version" IS '版本';

-- ----------------------------
-- Records of plf_help_unit_conf
-- ----------------------------
INSERT INTO "pcm_dev"."plf_help_unit_conf" VALUES ('1', '000000', '000001', '1', '001', '1', '001001', '5', '1', '字段1', null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for plf_ops_dbconf
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."plf_ops_dbconf";
CREATE TABLE "pcm_dev"."plf_ops_dbconf" (
"id" int4 DEFAULT nextval('"pcm_dev".plf_ops_dbconf_id_seq'::regclass) NOT NULL,
"data_typ" varchar(3) COLLATE "default" NOT NULL,
"chain_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"formal_db_id" int4 NOT NULL,
"train_db_id" int4,
"test_db_id" int4,
"ext1_db_id" int4,
"ext2_db_id" int4,
"ext3_db_id" int4,
"memo" varchar(500) COLLATE "default" DEFAULT NULL::character varying,
"created_by_uid" varchar(40) COLLATE "default",
"created_date" timestamp(6),
"created_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default",
"modified_date" timestamp(6),
"modified_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"version" int4,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pcm_dev"."plf_ops_dbconf" IS '数据连接';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbconf"."id" IS 'ID字段';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbconf"."data_typ" IS '数据类型
110：平台库；
210：集团库；220：集团历史库；
310：PMS库；320：PMS历史库；';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbconf"."chain_uid" IS '集团代码';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbconf"."unit_uid" IS '单位代码';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbconf"."formal_db_id" IS '正式库数据库标识';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbconf"."train_db_id" IS '练习库数据库标识';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbconf"."test_db_id" IS '测试库数据库标识';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbconf"."ext1_db_id" IS '保留数据库标识1';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbconf"."ext2_db_id" IS '保留数据库标识2';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbconf"."ext3_db_id" IS '保留数据库标识3';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbconf"."memo" IS '备注';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbconf"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbconf"."created_date" IS '创建日';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbconf"."created_by" IS '创建人';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbconf"."created_by_cd" IS '创建人NO';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbconf"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbconf"."modified_date" IS '修改日';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbconf"."modified_by" IS '修改人';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbconf"."modified_by_cd" IS '修改人NO';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbconf"."version" IS '版本';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbconf"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbconf"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbconf"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbconf"."modified_unit_cd" IS '修改人单位KEY';

-- ----------------------------
-- Records of plf_ops_dbconf
-- ----------------------------
INSERT INTO "pcm_dev"."plf_ops_dbconf" VALUES ('1', '110', '000000', '000001', '30003', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null);
INSERT INTO "pcm_dev"."plf_ops_dbconf" VALUES ('2', '310', '000000', '000001', '30001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null);

-- ----------------------------
-- Table structure for plf_ops_dbinfo
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."plf_ops_dbinfo";
CREATE TABLE "pcm_dev"."plf_ops_dbinfo" (
"id" int4 DEFAULT nextval('"pcm_dev".plf_ops_dbinfo_id_seq'::regclass) NOT NULL,
"db_id" int4 NOT NULL,
"status_flg" varchar(1) COLLATE "default" NOT NULL,
"master_flg" varchar(3) COLLATE "default" NOT NULL,
"master_db_id" int4,
"source_nm" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"source_typ" varchar(3) COLLATE "default" NOT NULL,
"source_drpt" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"source_url" varchar(400) COLLATE "default" DEFAULT NULL::character varying,
"user_nm" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"user_pwd" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"driver_cls" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"memo" varchar(500) COLLATE "default" DEFAULT NULL::character varying,
"created_by_uid" varchar(40) COLLATE "default",
"created_date" timestamp(6),
"created_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default",
"modified_date" timestamp(6),
"modified_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"version" int4,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pcm_dev"."plf_ops_dbinfo" IS '数据库定义';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbinfo"."id" IS 'ID字段';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbinfo"."db_id" IS '数据库标识';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbinfo"."status_flg" IS '数据库状态';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbinfo"."master_flg" IS '主库标识';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbinfo"."master_db_id" IS '主库数据库标识';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbinfo"."source_nm" IS '数据库标示';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbinfo"."source_typ" IS '数据库类型';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbinfo"."source_drpt" IS '数据库描述';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbinfo"."source_url" IS '数据库连接';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbinfo"."user_nm" IS '数据库用户';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbinfo"."user_pwd" IS '数据库用户密码';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbinfo"."driver_cls" IS '连接驱动';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbinfo"."memo" IS '备注';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbinfo"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbinfo"."created_date" IS '创建日';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbinfo"."created_by" IS '创建人';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbinfo"."created_by_cd" IS '创建人NO';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbinfo"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbinfo"."modified_date" IS '修改日';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbinfo"."modified_by" IS '修改人';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbinfo"."modified_by_cd" IS '修改人NO';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbinfo"."version" IS '版本';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbinfo"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbinfo"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbinfo"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_ops_dbinfo"."modified_unit_cd" IS '修改人单位KEY';

-- ----------------------------
-- Records of plf_ops_dbinfo
-- ----------------------------
INSERT INTO "pcm_dev"."plf_ops_dbinfo" VALUES ('1', '10001', '1', '1', null, 'pcm_dev', '200', null, 'jdbc:postgresql://postgreMaster:5432/pcm_dev?characterEncoding=utf8', 'pcm_dev', '123456', 'org.postgresql.Driver', null, null, null, null, null, null, null, null, null, '1', null, null, null, null);
INSERT INTO "pcm_dev"."plf_ops_dbinfo" VALUES ('2', '10002', '1', '0', '10001', 'pcm_dev_slave', '200', null, 'jdbc:postgresql://postgreSlave:5432/pcm_dev?characterEncoding=utf8', 'pcm_dev', '123456', 'org.postgresql.Driver', null, null, null, null, null, null, null, null, null, '1', null, null, null, null);
INSERT INTO "pcm_dev"."plf_ops_dbinfo" VALUES ('3', '30001', '1', '1', null, 'pms_dev', '200', null, 'jdbc:postgresql://postgreMaster:5432/pms_dev?characterEncoding=utf8', 'pms_dev', '123456', 'org.postgresql.Driver', null, null, null, null, null, null, null, null, null, '1', null, null, null, null);
INSERT INTO "pcm_dev"."plf_ops_dbinfo" VALUES ('4', '30002', '1', '0', '30001', 'pms_dev_slave', '200', null, 'jdbc:postgresql://postgreSlave:5432/pms_dev?characterEncoding=utf8', 'pms_dev', '123456', 'org.postgresql.Driver', null, null, null, null, null, null, null, null, null, '1', null, null, null, null);
INSERT INTO "pcm_dev"."plf_ops_dbinfo" VALUES ('5', '30003', '1', '1', null, 'grp_dev', '200', null, 'jdbc:postgresql://postgreMaster:5432/grp_dev?characterEncoding=utf8', 'grp_dev', '123456', 'org.postgresql.Driver', null, null, null, null, null, null, null, null, null, '1', null, null, null, null);
INSERT INTO "pcm_dev"."plf_ops_dbinfo" VALUES ('6', '30004', '1', '0', '30003', 'grp_dev_slave', '200', null, 'jdbc:postgresql://postgreSlave:5432/grp_dev?characterEncoding=utf8', 'grp_dev', '123456', 'org.postgresql.Driver', null, null, null, null, null, null, null, null, null, '1', null, null, null, null);
INSERT INTO "pcm_dev"."plf_ops_dbinfo" VALUES ('7', '30005', '0', '1', null, 'jw_platform', '200', null, 'jdbc:postgresql://postgreMaster:5432/jw_platform?characterEncoding=utf8
jdbc:postgresql://postgreMaster:5432/jw_platform?characterEncoding=utf8', 'platform', '123456', 'org.postgresql.Driver', null, null, null, null, null, null, null, null, null, '1', null, null, null, null);
INSERT INTO "pcm_dev"."plf_ops_dbinfo" VALUES ('8', '30006', '0', '0', '30005', 'jw_platform_slave', '200', null, 'jdbc:postgresql://postgreSlave:5432/jw_platform?characterEncoding=utf8', 'platform', '123456', 'org.postgresql.Driver', null, null, null, null, null, null, null, null, null, '1', null, null, null, null);

-- ----------------------------
-- Table structure for plf_pdt_log_group
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."plf_pdt_log_group";
CREATE TABLE "pcm_dev"."plf_pdt_log_group" (
"id" int4 DEFAULT nextval('"pcm_dev".plf_pdt_log_group_id_seq'::regclass) NOT NULL,
"status_flg" varchar(1) COLLATE "default" NOT NULL,
"log_group_id" int4,
"log_group_nm" varchar(100) COLLATE "default",
"seq" int4,
"memo" varchar(4000) COLLATE "default",
"created_by_uid" varchar(40) COLLATE "default",
"created_date" timestamp(6),
"created_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default",
"modified_date" timestamp(6),
"modified_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(100) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"version" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "pcm_dev"."plf_pdt_log_group"."status_flg" IS '有效标记';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_log_group"."log_group_id" IS '日志分组';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_log_group"."log_group_nm" IS '日志分组名称';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_log_group"."seq" IS '序号';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_log_group"."memo" IS '备注';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_log_group"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_log_group"."created_date" IS '创建日';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_log_group"."created_by" IS '创建人';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_log_group"."created_by_cd" IS '创建人CODE';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_log_group"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_log_group"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_log_group"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_log_group"."modified_date" IS '修改日';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_log_group"."modified_by" IS '修改人';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_log_group"."modified_by_cd" IS '修改人CODE';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_log_group"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_log_group"."modified_unit_cd" IS '修改人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_log_group"."version" IS '版本';

-- ----------------------------
-- Records of plf_pdt_log_group
-- ----------------------------

-- ----------------------------
-- Table structure for plf_pdt_loginfo
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."plf_pdt_loginfo";
CREATE TABLE "pcm_dev"."plf_pdt_loginfo" (
"id" int4 DEFAULT nextval('"pcm_dev".plf_pdt_loginfo_id_seq'::regclass) NOT NULL,
"log_cd" varchar(20) COLLATE "default",
"log_nm" varchar(50) COLLATE "default",
"seq" int4,
"log_group_id" int4,
"log_lvl" varchar(5) COLLATE "default",
"sysid" varchar(10) COLLATE "default",
"memo" varchar(4000) COLLATE "default",
"created_by_uid" varchar(40) COLLATE "default",
"created_date" timestamp(6),
"created_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default",
"modified_date" timestamp(6),
"modified_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(100) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"version" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "pcm_dev"."plf_pdt_loginfo"."log_cd" IS '日志代码';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_loginfo"."log_nm" IS '日志内容';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_loginfo"."seq" IS '序号';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_loginfo"."log_group_id" IS '日志分组';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_loginfo"."log_lvl" IS '等级标志';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_loginfo"."sysid" IS '所属系统代码
IF ,FW,GRP,CMM,CRS, CRM,CCM,CMS,CSO,WDS,IDS';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_loginfo"."memo" IS '备注';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_loginfo"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_loginfo"."created_date" IS '创建日';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_loginfo"."created_by" IS '创建人';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_loginfo"."created_by_cd" IS '创建人CODE';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_loginfo"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_loginfo"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_loginfo"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_loginfo"."modified_date" IS '修改日';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_loginfo"."modified_by" IS '修改人';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_loginfo"."modified_by_cd" IS '修改人CODE';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_loginfo"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_loginfo"."modified_unit_cd" IS '修改人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_loginfo"."version" IS '版本';

-- ----------------------------
-- Records of plf_pdt_loginfo
-- ----------------------------

-- ----------------------------
-- Table structure for plf_pdt_menu
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."plf_pdt_menu";
CREATE TABLE "pcm_dev"."plf_pdt_menu" (
"id" int4 DEFAULT nextval('"pcm_dev".plf_pdt_menu_id_seq'::regclass) NOT NULL,
"status_flg" varchar(1) COLLATE "default" NOT NULL,
"menu_id" int4,
"menu_cd" varchar(20) COLLATE "default" NOT NULL,
"menu_nm" varchar(150) COLLATE "default" NOT NULL,
"seq" int4,
"right_cls" varchar(3) COLLATE "default" NOT NULL,
"first_menu_id" int4,
"second_menu_id" int4,
"menu_url" varchar(400) COLLATE "default",
"sysid" varchar(10) COLLATE "default",
"memo" varchar(4000) COLLATE "default",
"created_by_uid" varchar(40) COLLATE "default",
"created_date" timestamp(6),
"created_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default",
"modified_date" timestamp(6),
"modified_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(100) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"version" int4,
"menu_icon" varchar(40) COLLATE "default",
"menu_disp_flg" varchar(3) COLLATE "default" DEFAULT NULL::character varying
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "pcm_dev"."plf_pdt_menu"."status_flg" IS '状态标识';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_menu"."menu_id" IS '菜单ID';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_menu"."menu_cd" IS '菜单代码';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_menu"."menu_nm" IS '菜单名称';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_menu"."seq" IS '序号';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_menu"."right_cls" IS '权级';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_menu"."first_menu_id" IS '一级菜单ID';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_menu"."second_menu_id" IS '二级菜单ID';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_menu"."menu_url" IS 'URL';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_menu"."sysid" IS '所属系统代码
IF ,FW,GRP,CMM,CRS, CRM,CCM,CMS,CSO,WDS,IDS';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_menu"."memo" IS '备注';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_menu"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_menu"."created_date" IS '创建日';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_menu"."created_by" IS '创建人';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_menu"."created_by_cd" IS '创建人CODE';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_menu"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_menu"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_menu"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_menu"."modified_date" IS '修改日';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_menu"."modified_by" IS '修改人';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_menu"."modified_by_cd" IS '修改人CODE';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_menu"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_menu"."modified_unit_cd" IS '修改人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_menu"."version" IS '版本';

-- ----------------------------
-- Records of plf_pdt_menu
-- ----------------------------
INSERT INTO "pcm_dev"."plf_pdt_menu" VALUES ('1', '1', '1', 'M1', '客史', '0', '10', null, null, null, 'GRP', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', 'icon1', '0');
INSERT INTO "pcm_dev"."plf_pdt_menu" VALUES ('2', '1', '2', 'M2', '一级菜单02', '1', '10', null, null, null, 'GRP', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', 'icon2', '0');
INSERT INTO "pcm_dev"."plf_pdt_menu" VALUES ('3', '1', '3', 'M3', '一级菜单03', '2', '10', null, null, null, 'GRP', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', 'icon3', '0');
INSERT INTO "pcm_dev"."plf_pdt_menu" VALUES ('4', '1', '4', 'M4', '个人客史', '0', '10', '1', null, null, 'GRP', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', 'icon4', '0');
INSERT INTO "pcm_dev"."plf_pdt_menu" VALUES ('5', '1', '5', 'M5', '二级菜单02', '0', '10', '2', null, null, 'GRP', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', 'icon5', '0');
INSERT INTO "pcm_dev"."plf_pdt_menu" VALUES ('6', '1', '6', 'M6', '二级菜单03', '0', '10', '3', null, null, 'GRP', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', 'icon6', '0');

-- ----------------------------
-- Table structure for plf_pdt_permission
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."plf_pdt_permission";
CREATE TABLE "pcm_dev"."plf_pdt_permission" (
"id" int4 DEFAULT nextval('"pcm_dev".plf_pdt_permission_id_seq'::regclass) NOT NULL,
"status_flg" varchar(1) COLLATE "default" NOT NULL,
"perms_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"perms_nm" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"perms_drpt" varchar(500) COLLATE "default" DEFAULT NULL::character varying,
"seq" int4,
"sys_flg" varchar(1) COLLATE "default" DEFAULT NULL::character varying,
"perms_typ_id" int4,
"right_cls" varchar(3) COLLATE "default" DEFAULT NULL::character varying,
"perms_flg" varchar(3) COLLATE "default" NOT NULL,
"sysid" varchar(10) COLLATE "default" NOT NULL,
"func_url" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"created_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_date" timestamp(6),
"created_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_date" timestamp(6),
"modified_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"version" int4,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pcm_dev"."plf_pdt_permission" IS '权限';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permission"."id" IS 'ID字段';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permission"."status_flg" IS '有效标记';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permission"."perms_cd" IS '代码';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permission"."perms_nm" IS '权限名称';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permission"."perms_drpt" IS '说明';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permission"."seq" IS '序号';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permission"."sys_flg" IS '系统类别';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permission"."perms_typ_id" IS '权限类型';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permission"."right_cls" IS '权级';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permission"."perms_flg" IS '权限区分';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permission"."sysid" IS '所属系统代码';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permission"."func_url" IS 'URL';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permission"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permission"."created_date" IS '创建日';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permission"."created_by" IS '创建人';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permission"."created_by_cd" IS '创建人CODE';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permission"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permission"."modified_date" IS '修改日';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permission"."modified_by" IS '修改人';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permission"."modified_by_cd" IS '修改人CODE';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permission"."version" IS '版本';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permission"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permission"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permission"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permission"."modified_unit_cd" IS '修改人单位KEY';

-- ----------------------------
-- Records of plf_pdt_permission
-- ----------------------------
INSERT INTO "pcm_dev"."plf_pdt_permission" VALUES ('1', '1', '10001', '权限1', '权限1', '0', '1', '10', '10', '1', 'GRP', 'URL1', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permission" VALUES ('3', '1', '10002', '权限2', '权限2', '1', '1', '10', '10', '1', 'GRP', 'URL2', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permission" VALUES ('4', '1', '10003', '权限3', '权限3', '2', '1', '11', '10', '1', 'GRP', 'URL3', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permission" VALUES ('5', '1', '10004', '权限4', '权限4', '3', '1', '11', '10', '1', 'GRP', 'URL4', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permission" VALUES ('6', '1', '10005', '权限5', '权限5', '4', '1', '12', '10', '1', 'GRP', 'URL5', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permission" VALUES ('7', '1', '10006', '权限6', '权限6', '5', '1', '12', '10', '1', 'GRP', 'URL6', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permission" VALUES ('8', '1', '10007', '权限7', '权限7', '6', '1', '13', '10', '1', 'GRP', 'URL7', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permission" VALUES ('9', '1', '10008', '权限8', '权限8', '7', '1', '13', '10', '1', 'GRP', 'URL8', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permission" VALUES ('10', '1', '10009', '权限9', '权限9', '8', '1', '13', '10', '1', 'GRP', 'URL9', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permission" VALUES ('11', '1', '10010', '权限10', '权限10', '9', '1', '13', '10', '1', 'GRP', 'URL10', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permission" VALUES ('12', '1', '10011', '权限11', '权限11', '10', '1', '14', '10', '1', 'GRP', 'URL11', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permission" VALUES ('13', '1', '10012', '权限12', '权限12', '11', '1', '14', '10', '1', 'GRP', 'URL12', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permission" VALUES ('14', '1', '10013', '权限13', '权限13', '12', '1', '14', '10', '1', 'GRP', 'URL13', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permission" VALUES ('15', '1', '10014', '权限14', '权限14', '13', '1', '14', '10', '1', 'GRP', 'URL14', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permission" VALUES ('16', '1', '10015', '权限15', '权限15', '14', '1', '15', '10', '1', 'GRP', 'URL15', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permission" VALUES ('17', '1', '10016', '权限16', '权限16', '15', '1', '15', '10', '1', 'GRP', 'URL16', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permission" VALUES ('18', '1', '10017', '权限17', '权限17', '16', '1', '16', '10', '1', 'GRP', 'URL17', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permission" VALUES ('19', '1', '10018', '权限18', '权限18', '17', '1', '16', '10', '1', 'GRP', 'URL18', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permission" VALUES ('20', '1', '10019', '权限19', '权限19', '18', '1', '16', '10', '1', 'GRP', 'URL19', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permission" VALUES ('21', '1', '10020', '权限20', '权限20', '19', '1', '17', '10', '1', 'GRP', 'URL20', null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for plf_pdt_permstyp
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."plf_pdt_permstyp";
CREATE TABLE "pcm_dev"."plf_pdt_permstyp" (
"id" int4 DEFAULT nextval('"pcm_dev".plf_pdt_permstyp_id_seq'::regclass) NOT NULL,
"status_flg" varchar(1) COLLATE "default" NOT NULL,
"perms_typ_id" int4,
"perms_typ_nm" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"seq" int4 NOT NULL,
"p_permstyp_id" int4,
"plevel" int4 NOT NULL,
"created_by_uid" varchar(40) COLLATE "default",
"created_date" timestamp(6),
"created_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default",
"modified_date" timestamp(6),
"modified_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"version" int4,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pcm_dev"."plf_pdt_permstyp" IS '权限类型';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permstyp"."id" IS 'ID字段';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permstyp"."status_flg" IS '状态标识';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permstyp"."perms_typ_id" IS '权限类型ID';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permstyp"."perms_typ_nm" IS '权限类型名称';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permstyp"."seq" IS '序号';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permstyp"."p_permstyp_id" IS '父类型ID';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permstyp"."plevel" IS '层级';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permstyp"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permstyp"."created_date" IS '创建日';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permstyp"."created_by" IS '创建人';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permstyp"."created_by_cd" IS '创建人NO';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permstyp"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permstyp"."modified_date" IS '修改日';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permstyp"."modified_by" IS '修改人';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permstyp"."modified_by_cd" IS '修改人NO';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permstyp"."version" IS '版本';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permstyp"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permstyp"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permstyp"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_pdt_permstyp"."modified_unit_cd" IS '修改人单位KEY';

-- ----------------------------
-- Records of plf_pdt_permstyp
-- ----------------------------
INSERT INTO "pcm_dev"."plf_pdt_permstyp" VALUES ('1', '1', '1', '第一分组01', '0', null, '0', null, null, null, null, null, null, null, null, '0', null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permstyp" VALUES ('3', '1', '2', '第一分组02', '1', null, '0', null, null, null, null, null, null, null, null, '0', null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permstyp" VALUES ('4', '1', '3', '第一分组03', '2', null, '0', null, null, null, null, null, null, null, null, '0', null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permstyp" VALUES ('5', '1', '4', '第二分组01_01', '0', '1', '1', null, null, null, null, null, null, null, null, '0', null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permstyp" VALUES ('7', '1', '5', '第二分组01_02', '1', '1', '1', null, null, null, null, null, null, null, null, '0', null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permstyp" VALUES ('8', '1', '6', '第二分组02_01', '0', '2', '1', null, null, null, null, null, null, null, null, '0', null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permstyp" VALUES ('9', '1', '7', '第二分组02_02', '1', '2', '1', null, null, null, null, null, null, null, null, '0', null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permstyp" VALUES ('10', '1', '8', '第二分组03_01', '0', '3', '1', null, null, null, null, null, null, null, null, '0', null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permstyp" VALUES ('11', '1', '9', '第二分组03_02', '1', '3', '1', null, null, null, null, null, null, null, null, '0', null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permstyp" VALUES ('12', '1', '10', '第三分组01_01_01', '0', '4', '2', null, null, null, null, null, null, null, null, '0', null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permstyp" VALUES ('14', '1', '11', '第三分组01_01_02', '1', '4', '2', null, null, null, null, null, null, null, null, '0', null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permstyp" VALUES ('15', '1', '12', '第三分组01_02_01', '0', '5', '2', null, null, null, null, null, null, null, null, '0', null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permstyp" VALUES ('16', '1', '13', '第三分组02_01_01', '0', '6', '2', null, null, null, null, null, null, null, null, '0', null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permstyp" VALUES ('17', '1', '14', '第三分组02_01_02', '1', '6', '2', null, null, null, null, null, null, null, null, '0', null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permstyp" VALUES ('18', '1', '15', '第三分组03_01_01', '0', '8', '2', null, null, null, null, null, null, null, null, '0', null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permstyp" VALUES ('19', '1', '16', '第三分组03_01_02', '1', '8', '2', null, null, null, null, null, null, null, null, '0', null, null, null, null);
INSERT INTO "pcm_dev"."plf_pdt_permstyp" VALUES ('20', '1', '17', '第三分组03_02_01', '0', '9', '2', null, null, null, null, null, null, null, null, '0', null, null, null, null);

-- ----------------------------
-- Table structure for plf_prdt_info
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."plf_prdt_info";
CREATE TABLE "pcm_dev"."plf_prdt_info" (
"id" int8 DEFAULT nextval('"pcm_dev".plf_prdt_info_id_seq'::regclass) NOT NULL,
"prdt_id" int4,
"prdt_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"prdt_name" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"prdt_typ" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"prdt_drpt" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"status_flg" varchar(1) COLLATE "default" DEFAULT NULL::character varying,
"seq" int4,
"memo" varchar(500) COLLATE "default" DEFAULT NULL::character varying,
"created_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_date" timestamp(6),
"created_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_date" timestamp(6),
"modified_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"version" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pcm_dev"."plf_prdt_info" IS '产品定义表';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_info"."id" IS 'ID字段';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_info"."prdt_id" IS '产品ID';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_info"."prdt_cd" IS '产品编号';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_info"."prdt_name" IS '产品名称';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_info"."prdt_typ" IS '产品类型';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_info"."prdt_drpt" IS '产品描述';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_info"."status_flg" IS '状态标示';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_info"."seq" IS '排序';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_info"."memo" IS '备注';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_info"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_info"."created_date" IS '创建日';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_info"."created_by" IS '创建人';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_info"."created_by_cd" IS '创建人NO';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_info"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_info"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_info"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_info"."modified_date" IS '修改日';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_info"."modified_by" IS '修改人';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_info"."modified_by_cd" IS '修改人NO';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_info"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_info"."modified_unit_cd" IS '修改人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_info"."version" IS '版本';

-- ----------------------------
-- Records of plf_prdt_info
-- ----------------------------
INSERT INTO "pcm_dev"."plf_prdt_info" VALUES ('1', '1', 'P0001', '产品1', null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pcm_dev"."plf_prdt_info" VALUES ('2', '2', 'P0002', '产品2', null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pcm_dev"."plf_prdt_info" VALUES ('3', '3', 'P0003', '产品3', null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pcm_dev"."plf_prdt_info" VALUES ('4', '4', 'P0004', '产品4', null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for plf_prdt_perms
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."plf_prdt_perms";
CREATE TABLE "pcm_dev"."plf_prdt_perms" (
"id" int8 DEFAULT nextval('"pcm_dev".plf_prdt_perms_id_seq'::regclass) NOT NULL,
"prdt_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"perms_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"created_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_date" timestamp(6),
"created_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_date" timestamp(6),
"modified_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"version" int4,
"is_use_continued" varchar(1) COLLATE "default" DEFAULT NULL::character varying
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pcm_dev"."plf_prdt_perms" IS '产品对应功能编号表';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_perms"."id" IS 'ID字段';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_perms"."prdt_cd" IS '产品编号';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_perms"."perms_cd" IS '功能编号';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_perms"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_perms"."created_date" IS '创建日';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_perms"."created_by" IS '创建人';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_perms"."created_by_cd" IS '创建人NO';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_perms"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_perms"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_perms"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_perms"."modified_date" IS '修改日';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_perms"."modified_by" IS '修改人';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_perms"."modified_by_cd" IS '修改人NO';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_perms"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_perms"."modified_unit_cd" IS '修改人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_perms"."version" IS '版本';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_perms"."is_use_continued" IS '到期后是否能继续使用';

-- ----------------------------
-- Records of plf_prdt_perms
-- ----------------------------
INSERT INTO "pcm_dev"."plf_prdt_perms" VALUES ('1', 'P0001', '10001', null, null, null, null, null, null, null, null, null, null, null, null, '0', '1');
INSERT INTO "pcm_dev"."plf_prdt_perms" VALUES ('2', 'P0001', '10002', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0');
INSERT INTO "pcm_dev"."plf_prdt_perms" VALUES ('3', 'P0001', '10003', null, null, null, null, null, null, null, null, null, null, null, null, '0', '1');
INSERT INTO "pcm_dev"."plf_prdt_perms" VALUES ('4', 'P0001', '10004', null, null, null, null, null, null, null, null, null, null, null, null, '0', '1');
INSERT INTO "pcm_dev"."plf_prdt_perms" VALUES ('5', 'P0002', '10005', null, null, null, null, null, null, null, null, null, null, null, null, '0', '1');
INSERT INTO "pcm_dev"."plf_prdt_perms" VALUES ('6', 'P0002', '10006', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0');
INSERT INTO "pcm_dev"."plf_prdt_perms" VALUES ('7', 'P0002', '10007', null, null, null, null, null, null, null, null, null, null, null, null, '0', '1');
INSERT INTO "pcm_dev"."plf_prdt_perms" VALUES ('8', 'P0002', '10008', null, null, null, null, null, null, null, null, null, null, null, null, '0', '1');
INSERT INTO "pcm_dev"."plf_prdt_perms" VALUES ('9', 'P0003', '10009', null, null, null, null, null, null, null, null, null, null, null, null, '0', '1');
INSERT INTO "pcm_dev"."plf_prdt_perms" VALUES ('10', 'P0003', '10010', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0');
INSERT INTO "pcm_dev"."plf_prdt_perms" VALUES ('11', 'P0003', '10011', null, null, null, null, null, null, null, null, null, null, null, null, '0', '1');
INSERT INTO "pcm_dev"."plf_prdt_perms" VALUES ('12', 'P0003', '10012', null, null, null, null, null, null, null, null, null, null, null, null, '0', '1');
INSERT INTO "pcm_dev"."plf_prdt_perms" VALUES ('13', 'P0004', '10013', null, null, null, null, null, null, null, null, null, null, null, null, '0', '1');
INSERT INTO "pcm_dev"."plf_prdt_perms" VALUES ('14', 'P0004', '10014', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0');
INSERT INTO "pcm_dev"."plf_prdt_perms" VALUES ('15', 'P0004', '10015', null, null, null, null, null, null, null, null, null, null, null, null, '0', '1');
INSERT INTO "pcm_dev"."plf_prdt_perms" VALUES ('16', 'P0004', '10016', null, null, null, null, null, null, null, null, null, null, null, null, '0', '1');

-- ----------------------------
-- Table structure for plf_prdt_sale
-- ----------------------------
DROP TABLE IF EXISTS "pcm_dev"."plf_prdt_sale";
CREATE TABLE "pcm_dev"."plf_prdt_sale" (
"id" int8 DEFAULT nextval('"pcm_dev".plf_prdt_sale_id_seq'::regclass) NOT NULL,
"prdt_id" int4,
"prdt_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"chain_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"begin_date" timestamp(6),
"end_date" timestamp(6),
"status_flg" varchar(1) COLLATE "default" DEFAULT NULL::character varying,
"seq" int4,
"memo" varchar(500) COLLATE "default" DEFAULT NULL::character varying,
"created_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_date" timestamp(6),
"created_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_date" timestamp(6),
"modified_by" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"version" int4,
"is_use_continued" varchar(1) COLLATE "default" DEFAULT NULL::character varying
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pcm_dev"."plf_prdt_sale" IS '产品对应酒店、集团表（购买表）';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_sale"."id" IS 'ID字段';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_sale"."prdt_id" IS '产品ID';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_sale"."prdt_cd" IS '产品编号';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_sale"."chain_uid" IS '集团UID';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_sale"."unit_uid" IS '单位UID';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_sale"."begin_date" IS '产品生效时间';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_sale"."end_date" IS '产品到期时间';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_sale"."status_flg" IS '状态标示';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_sale"."seq" IS '排序';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_sale"."memo" IS '备注';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_sale"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_sale"."created_date" IS '创建日';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_sale"."created_by" IS '创建人';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_sale"."created_by_cd" IS '创建人NO';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_sale"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_sale"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_sale"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_sale"."modified_date" IS '修改日';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_sale"."modified_by" IS '修改人';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_sale"."modified_by_cd" IS '修改人NO';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_sale"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_sale"."modified_unit_cd" IS '修改人单位KEY';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_sale"."version" IS '版本';
COMMENT ON COLUMN "pcm_dev"."plf_prdt_sale"."is_use_continued" IS '到期后是否能继续使用';

-- ----------------------------
-- Records of plf_prdt_sale
-- ----------------------------
INSERT INTO "pcm_dev"."plf_prdt_sale" VALUES ('1', '1', 'P0001', '000000', '', '2017-03-01 13:15:23', '2017-06-30 13:15:43', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '1');
INSERT INTO "pcm_dev"."plf_prdt_sale" VALUES ('2', '2', 'P0002', '000000', null, '2017-04-07 13:15:54', '2017-07-08 13:16:01', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0');
INSERT INTO "pcm_dev"."plf_prdt_sale" VALUES ('3', '1', 'P0001', '000000', '000001', '2017-01-01 13:17:25', '2017-12-31 13:17:44', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO "pcm_dev"."plf_prdt_sale" VALUES ('4', '2', 'P0002', '000000', '000001', '2017-01-01 00:00:00', '2017-12-31 00:00:00', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO "pcm_dev"."plf_prdt_sale" VALUES ('5', '3', 'P0003', '000000', '000001', '2017-01-01 00:00:00', '2017-12-31 00:00:00', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO "pcm_dev"."plf_prdt_sale" VALUES ('6', '4', 'P0004', '000000', '000001', '2017-09-01 13:18:03', '2017-09-10 00:00:00', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table cmm_base_param_multilang
-- ----------------------------
ALTER TABLE "pcm_dev"."cmm_base_param_multilang" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cmm_multi_item_param
-- ----------------------------
ALTER TABLE "pcm_dev"."cmm_multi_item_param" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cmm_number
-- ----------------------------
ALTER TABLE "pcm_dev"."cmm_number" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cmm_unit_param_multilang
-- ----------------------------
ALTER TABLE "pcm_dev"."cmm_unit_param_multilang" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table plf_cis_chain
-- ----------------------------
ALTER TABLE "pcm_dev"."plf_cis_chain" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table plf_cis_unit
-- ----------------------------
ALTER TABLE "pcm_dev"."plf_cis_unit" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table plf_cmm_config
-- ----------------------------
ALTER TABLE "pcm_dev"."plf_cmm_config" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table plf_cmm_config_multilang
-- ----------------------------
ALTER TABLE "pcm_dev"."plf_cmm_config_multilang" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table plf_cmm_param_multilang
-- ----------------------------
ALTER TABLE "pcm_dev"."plf_cmm_param_multilang" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table plf_cmm_parameter
-- ----------------------------
ALTER TABLE "pcm_dev"."plf_cmm_parameter" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table plf_help_answer
-- ----------------------------
ALTER TABLE "pcm_dev"."plf_help_answer" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table plf_help_conf
-- ----------------------------
ALTER TABLE "pcm_dev"."plf_help_conf" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table plf_help_info
-- ----------------------------
ALTER TABLE "pcm_dev"."plf_help_info" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table plf_help_info_multilang
-- ----------------------------
ALTER TABLE "pcm_dev"."plf_help_info_multilang" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table plf_help_question
-- ----------------------------
ALTER TABLE "pcm_dev"."plf_help_question" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table plf_help_unit_conf
-- ----------------------------
ALTER TABLE "pcm_dev"."plf_help_unit_conf" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table plf_ops_dbconf
-- ----------------------------
ALTER TABLE "pcm_dev"."plf_ops_dbconf" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table plf_ops_dbinfo
-- ----------------------------
ALTER TABLE "pcm_dev"."plf_ops_dbinfo" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table plf_pdt_log_group
-- ----------------------------
ALTER TABLE "pcm_dev"."plf_pdt_log_group" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table plf_pdt_loginfo
-- ----------------------------
ALTER TABLE "pcm_dev"."plf_pdt_loginfo" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table plf_pdt_menu
-- ----------------------------
ALTER TABLE "pcm_dev"."plf_pdt_menu" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table plf_pdt_permission
-- ----------------------------
ALTER TABLE "pcm_dev"."plf_pdt_permission" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table plf_pdt_permstyp
-- ----------------------------
ALTER TABLE "pcm_dev"."plf_pdt_permstyp" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table plf_prdt_info
-- ----------------------------
ALTER TABLE "pcm_dev"."plf_prdt_info" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table plf_prdt_perms
-- ----------------------------
ALTER TABLE "pcm_dev"."plf_prdt_perms" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table plf_prdt_sale
-- ----------------------------
ALTER TABLE "pcm_dev"."plf_prdt_sale" ADD PRIMARY KEY ("id");
