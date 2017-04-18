/*
Navicat PGSQL Data Transfer

Source Server         : 192.168.18.206
Source Server Version : 90601
Source Host           : 192.168.18.206:5432
Source Database       : pms_dev
Source Schema         : pms_dev

Target Server Type    : PGSQL
Target Server Version : 90601
File Encoding         : 65001

Date: 2017-03-08 11:00:57
*/


-- ----------------------------
-- Table structure for cmm_base_param
-- ----------------------------
DROP TABLE IF EXISTS "pms_dev"."cmm_base_param";
CREATE TABLE "pms_dev"."cmm_base_param" (
"id" int4 DEFAULT nextval('"pms_dev".cmm_base_param_id_seq'::regclass) NOT NULL,
"chain_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"param_typ" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
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
"param_id" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pms_dev"."cmm_base_param" IS '集团及酒店通用参数的配置，可称为系统配置表或系统主表。';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."id" IS 'ID字段';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."chain_uid" IS '集团代码';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_typ" IS '参数类型';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_cd" IS '参数代码';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_drpt" IS '参数名称';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."paramgrp_id" IS '参数分组';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."paramsubgrp_id" IS '参数子分组';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_flg" IS '参数属性';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."status_flg" IS '状态标识';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."seq" IS '序号';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."note" IS '注释';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_str1" IS '文字型参数1';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_str2" IS '文字型参数2';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_str3" IS '文字型参数3';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_str4" IS '文字型参数4';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_str5" IS '文字型参数5';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_str6" IS '文字型参数6';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_str7" IS '文字型参数7';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_str8" IS '文字型参数8';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_str9" IS '文字型参数9';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_str10" IS '文字型参数10';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_num1" IS '数字型参数1';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_num2" IS '数字型参数2';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_num3" IS '数字型参数3';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_num4" IS '数字型参数4';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_num5" IS '数字型参数5';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_num6" IS '数字型参数6';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_num7" IS '数字型参数7';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_num8" IS '数字型参数8';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_num9" IS '数字型参数9';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_num10" IS '数字型参数10';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_dt1" IS '日期型参数1';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_dt2" IS '日期型参数2';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_dt3" IS '日期型参数3';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_dt4" IS '日期型参数4';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_dt5" IS '日期型参数5';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_dt6" IS '日期型参数6';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_dt7" IS '日期型参数7';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_dt8" IS '日期型参数8';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_dt9" IS '日期型参数9';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."param_dt10" IS '日期型参数10';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."created_date" IS '创建日';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."created_by" IS '创建人';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."created_by_cd" IS '创建人CODE';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."modified_date" IS '修改日';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."modified_by" IS '修改人';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."modified_by_cd" IS '修改人CODE';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."modified_unit_cd" IS '修改人单位KEY';
COMMENT ON COLUMN "pms_dev"."cmm_base_param"."version" IS '版本';

-- ----------------------------
-- Records of cmm_base_param
-- ----------------------------
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('1', '9999', 'RIGHTCLS', '0', '平台权级', '0', '0', null, '1', '0', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '1');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('2', '9999', 'RIGHTCLS', '10', '集团权级', '0', '0', null, '1', '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '2');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('3', '9999', 'GROUPCD', '000000', '集团代码1', '0', '0', null, '1', '0', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '3');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('4', '9999', 'UNITCD', '000001', '单位代码1', '0', '0', null, '1', '0', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '4');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('5', '9999', 'UNITCD', '000002', '单位代码2', '0', '0', null, '1', '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '5');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('6', '9999', 'COUNTRY', 'CHN', '中国', '0', '0', null, '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '6');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('7', '9999', 'COUNTRY', 'JPN', '日本', '0', '0', null, '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '7');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('8', '9999', 'COUNTRY', 'USA', '美国', '0', '0', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '8');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('9', '9999', 'PROVINCE', 'BEJ', '北京市', '0', '0', null, '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '9');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('10', '9999', 'PROVINCE', 'GUD', '广东省', '0', '0', null, '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '10');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('11', '9999', 'CITY', '001', '北京市', '0', '0', null, '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '11');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('12', '9999', 'CITY', '285', '韶关市', '0', '0', null, '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '12');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('13', '9999', 'CITY', '002', '北京市辖区', '0', '0', null, '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '13');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('14', '9999', 'CITY', '003', '北京直辖县', '0', '0', null, '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '14');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('15', '000000', 'DISPLAYAREA', '2001', '中餐A区', '0', '0', null, '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '2001');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('16', '000000', 'BUILDING', '001', 'A座', '0', '0', null, '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '15');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('17', '000000', 'BUILDING', '002', 'B座', '0', '0', null, '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '16');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('18', '000000', 'BUILDING', '003', 'C座', '0', '0', null, '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '17');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('19', '000000', 'AREA', '001', '南区', '0', '0', null, '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '18');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('20', '000000', 'AREA', '002', '北区', '0', '0', null, '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '19');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('21', '000000', 'AREA', '003', '东区', '0', '0', null, '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '20');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('22', '000000', 'AREA', '004', '西区', '0', '0', null, '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '21');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('23', '000000', 'FLOOR', '001', '一层', '0', '0', null, '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '22');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('24', '000000', 'FLOOR', '002', '二层', '0', '0', null, '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '23');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('25', '000000', 'FLOOR', '003', '三层', '0', '0', null, '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '24');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('26', '000000', 'FLOOR', '004', '四层', '0', '0', null, '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '25');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('27', '000000', 'FLOOR', '005', '五层', '0', '0', null, '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '26');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('28', '000000', 'FLOOR', '006', '六层', '0', '0', null, '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '27');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('29', '000000', 'FLOOR', '007', '七层', '0', '0', null, '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '28');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('30', '000000', 'ROOMFEATURETYP', '001', '朝阳', '0', '0', null, '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '29');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('31', '000000', 'ROOMFEATURETYP', '002', '免费WIFI', '0', '0', null, '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '30');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('32', '000000', 'DISPLAYAREA', '2002', '中餐B区', '0', '0', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '2002');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('33', '000000', 'DISPLAYAREA', '2003', '中餐C区', '0', '0', null, '1', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '2003');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('34', '000000', 'DISPLAYAREA', '2004', '中餐D区', '0', '0', null, '1', '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '2004');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('35', '000000', 'DISPLAYAREA', '2005', '中餐E区', '0', '0', null, '1', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '2005');
INSERT INTO "pms_dev"."cmm_base_param" VALUES ('36', '000000', 'DISPLAYAREA', '2006', '中餐F区', '0', '0', null, '1', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '2006');

-- ----------------------------
-- Table structure for cmm_base_param_multilang
-- ----------------------------
DROP TABLE IF EXISTS "pms_dev"."cmm_base_param_multilang";
CREATE TABLE "pms_dev"."cmm_base_param_multilang" (
"id" int4 DEFAULT nextval('"pms_dev".cmm_base_param_multilang_id_seq'::regclass) NOT NULL,
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
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."chain_uid" IS '集团代码';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."param_typ" IS '参数类型';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."param_id" IS '参数ID';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."param_drpt" IS '参数名称';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."note" IS '注释';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."param_str1" IS '文字型参数1';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."param_str2" IS '文字型参数2';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."param_str3" IS '文字型参数3';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."param_str4" IS '文字型参数4';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."param_str5" IS '文字型参数5';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."param_str6" IS '文字型参数6';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."param_str7" IS '文字型参数7';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."param_str8" IS '文字型参数8';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."param_str9" IS '文字型参数9';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."param_str10" IS '文字型参数10';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."created_date" IS '创建日';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."created_by" IS '创建人';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."created_by_cd" IS '创建人CODE';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."modified_date" IS '修改日';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."modified_by" IS '修改人';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."modified_by_cd" IS '修改人CODE';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."modified_unit_cd" IS '修改人单位KEY';
COMMENT ON COLUMN "pms_dev"."cmm_base_param_multilang"."version" IS '版本';

-- ----------------------------
-- Records of cmm_base_param_multilang
-- ----------------------------

-- ----------------------------
-- Table structure for cmm_multi_item_param
-- ----------------------------
DROP TABLE IF EXISTS "pms_dev"."cmm_multi_item_param";
CREATE TABLE "pms_dev"."cmm_multi_item_param" (
"id" int4 DEFAULT nextval('"pms_dev".cmm_multi_item_param_id_seq'::regclass) NOT NULL,
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
COMMENT ON COLUMN "pms_dev"."cmm_multi_item_param"."chain_uid" IS '集团代码';
COMMENT ON COLUMN "pms_dev"."cmm_multi_item_param"."unit_uid" IS '单位代码';
COMMENT ON COLUMN "pms_dev"."cmm_multi_item_param"."pachage_id" IS '包代码,同一个包编号代表一个复选';
COMMENT ON COLUMN "pms_dev"."cmm_multi_item_param"."item_id" IS '选项代码,对应的选项ID编号';
COMMENT ON COLUMN "pms_dev"."cmm_multi_item_param"."source_tbl" IS '源数据表名,该项目的来源表';
COMMENT ON COLUMN "pms_dev"."cmm_multi_item_param"."source_col" IS '源字段名,该项目的来源字段';
COMMENT ON COLUMN "pms_dev"."cmm_multi_item_param"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pms_dev"."cmm_multi_item_param"."created_date" IS '创建日';
COMMENT ON COLUMN "pms_dev"."cmm_multi_item_param"."created_by" IS '创建人';
COMMENT ON COLUMN "pms_dev"."cmm_multi_item_param"."created_by_cd" IS '创建人CODE';
COMMENT ON COLUMN "pms_dev"."cmm_multi_item_param"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pms_dev"."cmm_multi_item_param"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pms_dev"."cmm_multi_item_param"."version" IS '版本';
COMMENT ON COLUMN "pms_dev"."cmm_multi_item_param"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pms_dev"."cmm_multi_item_param"."modified_date" IS '修改日';
COMMENT ON COLUMN "pms_dev"."cmm_multi_item_param"."modified_by" IS '修改人';
COMMENT ON COLUMN "pms_dev"."cmm_multi_item_param"."modified_by_cd" IS '修改人CODE';
COMMENT ON COLUMN "pms_dev"."cmm_multi_item_param"."modified_unit_cd" IS '修改人单位CODE';
COMMENT ON COLUMN "pms_dev"."cmm_multi_item_param"."modified_unit_uid" IS '修改人单位KEY';

-- ----------------------------
-- Records of cmm_multi_item_param
-- ----------------------------

-- ----------------------------
-- Table structure for cmm_number
-- ----------------------------
DROP TABLE IF EXISTS "pms_dev"."cmm_number";
CREATE TABLE "pms_dev"."cmm_number" (
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
"id" int4 DEFAULT nextval('"pms_dev".cmm_number_id_seq'::regclass) NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "pms_dev"."cmm_number"."number_typ" IS '番号类型';
COMMENT ON COLUMN "pms_dev"."cmm_number"."number_len" IS '番号长度。0：非固定长度；1~99：固定长度位数';
COMMENT ON COLUMN "pms_dev"."cmm_number"."number_pref" IS '前缀';
COMMENT ON COLUMN "pms_dev"."cmm_number"."number_suff" IS '后缀';
COMMENT ON COLUMN "pms_dev"."cmm_number"."number_covr" IS '补位符。固定长度时，番号不足长度位数的补位字符';
COMMENT ON COLUMN "pms_dev"."cmm_number"."number_drpt" IS '番号名称';
COMMENT ON COLUMN "pms_dev"."cmm_number"."last_upd" IS '最近更新时间戳';
COMMENT ON COLUMN "pms_dev"."cmm_number"."current_seq" IS '最大序号';
COMMENT ON COLUMN "pms_dev"."cmm_number"."max_seq_jmp" IS '最大序号间隔';
COMMENT ON COLUMN "pms_dev"."cmm_number"."update_intvl" IS '更新间隔';
COMMENT ON COLUMN "pms_dev"."cmm_number"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pms_dev"."cmm_number"."created_date" IS '创建日';
COMMENT ON COLUMN "pms_dev"."cmm_number"."created_by" IS '创建人';
COMMENT ON COLUMN "pms_dev"."cmm_number"."created_by_cd" IS '创建人CODE';
COMMENT ON COLUMN "pms_dev"."cmm_number"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pms_dev"."cmm_number"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pms_dev"."cmm_number"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pms_dev"."cmm_number"."modified_date" IS '修改日';
COMMENT ON COLUMN "pms_dev"."cmm_number"."modified_by" IS '修改人';
COMMENT ON COLUMN "pms_dev"."cmm_number"."modified_by_cd" IS '修改人CODE';
COMMENT ON COLUMN "pms_dev"."cmm_number"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pms_dev"."cmm_number"."modified_unit_cd" IS '修改人单位KEY';
COMMENT ON COLUMN "pms_dev"."cmm_number"."version" IS '版本';

-- ----------------------------
-- Records of cmm_number
-- ----------------------------

-- ----------------------------
-- Table structure for cmm_pos_param
-- ----------------------------
DROP TABLE IF EXISTS "pms_dev"."cmm_pos_param";
CREATE TABLE "pms_dev"."cmm_pos_param" (
"id" int4 DEFAULT nextval('"pms_dev".cmm_pos_param_id_seq'::regclass) NOT NULL,
"chain_uid" varchar(40) COLLATE "default",
"unit_uid" varchar(40) COLLATE "default",
"sales_id" int4,
"param_typ" varchar(20) COLLATE "default",
"param_id" int4,
"param_drpt" varchar(200) COLLATE "default",
"status_flg" varchar(3) COLLATE "default",
"seq" int4,
"note" varchar(500) COLLATE "default",
"created_by_uid" varchar(40) COLLATE "default",
"created_date" timestamp(3),
"created_by" varchar(50) COLLATE "default",
"created_by_cd" varchar(100) COLLATE "default",
"created_unit_cd" varchar(50) COLLATE "default",
"created_unit_uid" varchar(40) COLLATE "default",
"modified_by_uid" varchar(40) COLLATE "default",
"modified_date" timestamp(3),
"modified_by" varchar(50) COLLATE "default",
"modified_by_cd" varchar(100) COLLATE "default",
"modified_unit_cd" varchar(50) COLLATE "default",
"modified_unit_uid" varchar(40) COLLATE "default",
"version" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pms_dev"."cmm_pos_param" IS '集团单位选择参数';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param"."id" IS 'ID字段';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param"."sales_id" IS '销售点编号';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param"."param_drpt" IS '有权限酒店可自定定义';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param"."status_flg" IS '1：有效（默认）
0：无效';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param"."seq" IS '酒店可自定定义';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param"."note" IS '酒店可自定定义';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param"."created_date" IS '创建日';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param"."created_by" IS '创建人';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param"."created_by_cd" IS '创建人CODE';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param"."created_unit_cd" IS '创建人单位CODE';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param"."created_unit_uid" IS '创建人单位KEY';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param"."modified_date" IS '修改日';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param"."modified_by" IS '修改人';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param"."modified_by_cd" IS '修改人CODE';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param"."modified_unit_cd" IS '修改人单位CODE';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param"."modified_unit_uid" IS '修改人单位KEY';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param"."version" IS '版本';

-- ----------------------------
-- Records of cmm_pos_param
-- ----------------------------
INSERT INTO "pms_dev"."cmm_pos_param" VALUES ('1', '000000', '000001', null, 'BLOCKTYP', '2007', '中餐散台', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."cmm_pos_param" VALUES ('2', '000000', '000001', null, 'BLOCKTYP', '2008', '中餐包房', '1', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."cmm_pos_param" VALUES ('3', '000000', '000001', '301', 'DISPLAYAREA', '2001', '中餐A区', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."cmm_pos_param" VALUES ('4', '000000', '000001', '301', 'DISPLAYAREA', '2002', '中餐B区', '1', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."cmm_pos_param" VALUES ('5', '000000', '000001', '301', 'DISPLAYAREA', '2003', '中餐C区', '1', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."cmm_pos_param" VALUES ('6', '000000', '000001', '301', 'DISPLAYAREA', '2004', '中餐D区', '1', '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."cmm_pos_param" VALUES ('7', '000000', '000001', '301', 'DISPLAYAREA', '2005', '中餐E区', '1', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."cmm_pos_param" VALUES ('8', '000000', '000001', '301', 'DISPLAYAREA', '2006', '中餐F区', '1', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for cmm_pos_param_multilang
-- ----------------------------
DROP TABLE IF EXISTS "pms_dev"."cmm_pos_param_multilang";
CREATE TABLE "pms_dev"."cmm_pos_param_multilang" (
"id" int4 DEFAULT nextval('"pms_dev".cmm_pos_param_multilang_id_seq'::regclass) NOT NULL,
"chain_uid" varchar(40) COLLATE "default",
"unit_uid" varchar(40) COLLATE "default",
"sales_id" int4,
"param_id" int4,
"param_typ" varchar(20) COLLATE "default",
"language_id" int4,
"param_drpt" varchar(200) COLLATE "default",
"status_flg" varchar(1) COLLATE "default",
"note" varchar(500) COLLATE "default",
"created_by_uid" varchar(40) COLLATE "default",
"created_date" timestamp(3),
"created_by" varchar(50) COLLATE "default",
"created_by_cd" varchar(100) COLLATE "default",
"created_unit_cd" varchar(50) COLLATE "default",
"created_unit_uid" varchar(40) COLLATE "default",
"modified_by_uid" varchar(40) COLLATE "default",
"modified_date" timestamp(3),
"modified_by" varchar(50) COLLATE "default",
"modified_by_cd" varchar(100) COLLATE "default",
"modified_unit_cd" varchar(50) COLLATE "default",
"modified_unit_uid" varchar(40) COLLATE "default",
"version" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pms_dev"."cmm_pos_param_multilang" IS '集团单位选择参数多语言';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param_multilang"."id" IS 'IDID字段';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param_multilang"."chain_uid" IS '集团代码';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param_multilang"."unit_uid" IS '单位代码';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param_multilang"."sales_id" IS '销售点代码';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param_multilang"."param_id" IS '参数ID';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param_multilang"."param_typ" IS '参数类型';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param_multilang"."language_id" IS '语言代码参考通用的语种代码表';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param_multilang"."param_drpt" IS '参数名称';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param_multilang"."status_flg" IS '状态标识1：有效（默认）
0：无效';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param_multilang"."note" IS '注释';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param_multilang"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param_multilang"."created_date" IS '创建日';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param_multilang"."created_by" IS '创建人';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param_multilang"."created_by_cd" IS '创建人CODE';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param_multilang"."created_unit_cd" IS '创建人单位CODE';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param_multilang"."created_unit_uid" IS '创建人单位KEY';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param_multilang"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param_multilang"."modified_date" IS '修改日';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param_multilang"."modified_by" IS '修改人';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param_multilang"."modified_by_cd" IS '修改人CODE';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param_multilang"."modified_unit_cd" IS '修改人单位CODE';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param_multilang"."modified_unit_uid" IS '修改人单位KEY';
COMMENT ON COLUMN "pms_dev"."cmm_pos_param_multilang"."version" IS '版本';

-- ----------------------------
-- Records of cmm_pos_param_multilang
-- ----------------------------

-- ----------------------------
-- Table structure for cmm_unit_param
-- ----------------------------
DROP TABLE IF EXISTS "pms_dev"."cmm_unit_param";
CREATE TABLE "pms_dev"."cmm_unit_param" (
"id" int4 DEFAULT nextval('"pms_dev".cmm_unit_param_id_seq'::regclass) NOT NULL,
"chain_uid" varchar(40) COLLATE "default",
"unit_uid" varchar(40) COLLATE "default",
"param_typ" varchar(20) COLLATE "default",
"param_id" int4,
"param_drpt" varchar(200) COLLATE "default",
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
"param_cd" varchar(20) COLLATE "default",
"version" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "pms_dev"."cmm_unit_param"."chain_uid" IS '集团代码';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param"."unit_uid" IS '单位代码';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param"."param_typ" IS '参数类型';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param"."param_id" IS '参数ID';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param"."param_drpt" IS '参数名称';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param"."status_flg" IS '状态标识';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param"."seq" IS '序号';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param"."note" IS '注释';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param"."created_date" IS '创建日';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param"."created_by" IS '创建人';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param"."created_by_cd" IS '创建人CODE';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param"."modified_date" IS '修改日';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param"."modified_by" IS '修改人';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param"."modified_by_cd" IS '修改人CODE';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param"."modified_unit_cd" IS '修改人单位KEY';

-- ----------------------------
-- Records of cmm_unit_param
-- ----------------------------
INSERT INTO "pms_dev"."cmm_unit_param" VALUES ('3', '000000', '000001', 'BUILDING', '15', 'A座', '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '001', '0');
INSERT INTO "pms_dev"."cmm_unit_param" VALUES ('4', '000000', '000001', 'BUILDING', '16', 'B座', '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '002', '0');
INSERT INTO "pms_dev"."cmm_unit_param" VALUES ('5', '000000', '000001', 'BUILDING', '17', 'C座', '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '003', '0');
INSERT INTO "pms_dev"."cmm_unit_param" VALUES ('6', '000000', '000001', 'AREA', '18', '南区', '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '001', '0');
INSERT INTO "pms_dev"."cmm_unit_param" VALUES ('7', '000000', '000001', 'AREA', '19', '北区', '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '002', '0');
INSERT INTO "pms_dev"."cmm_unit_param" VALUES ('8', '000000', '000001', 'AREA', '20', '东区', '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '003', '0');
INSERT INTO "pms_dev"."cmm_unit_param" VALUES ('9', '000000', '000001', 'AREA', '21', '西区', '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '004', '0');
INSERT INTO "pms_dev"."cmm_unit_param" VALUES ('10', '000000', '000001', 'FLOOR', '22', '一层', '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '001', '0');
INSERT INTO "pms_dev"."cmm_unit_param" VALUES ('11', '000000', '000001', 'FLOOR', '23', '二层', '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '002', '0');
INSERT INTO "pms_dev"."cmm_unit_param" VALUES ('12', '000000', '000001', 'FLOOR', '24', '三层', '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '003', '0');
INSERT INTO "pms_dev"."cmm_unit_param" VALUES ('13', '000000', '000001', 'FLOOR', '25', '四层', '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '004', '0');
INSERT INTO "pms_dev"."cmm_unit_param" VALUES ('14', '000000', '000001', 'FLOOR', '26', '五层', '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '005', '0');
INSERT INTO "pms_dev"."cmm_unit_param" VALUES ('15', '000000', '000001', 'FLOOR', '28', '七层', '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '007', '0');
INSERT INTO "pms_dev"."cmm_unit_param" VALUES ('16', '000000', '000001', 'ROOMFEATURETYP', '29', '朝阳', '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '001', '0');
INSERT INTO "pms_dev"."cmm_unit_param" VALUES ('17', '000000', '000001', 'ROOMFEATURETYP', '30', '免费WIFI', '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '002', '0');

-- ----------------------------
-- Table structure for cmm_unit_param_multilang
-- ----------------------------
DROP TABLE IF EXISTS "pms_dev"."cmm_unit_param_multilang";
CREATE TABLE "pms_dev"."cmm_unit_param_multilang" (
"id" int4 DEFAULT nextval('"pms_dev".cmm_unit_param_multilang_id_seq'::regclass) NOT NULL,
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
COMMENT ON COLUMN "pms_dev"."cmm_unit_param_multilang"."chain_uid" IS '集团代码';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param_multilang"."unit_uid" IS '单位代码';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param_multilang"."param_typ" IS '参数类型';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param_multilang"."param_id" IS '参数ID';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param_multilang"."param_drpt" IS '参数名称';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param_multilang"."note" IS '注释';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param_multilang"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param_multilang"."created_date" IS '创建日';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param_multilang"."created_by" IS '创建人';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param_multilang"."created_by_cd" IS '创建人CODE';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param_multilang"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param_multilang"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param_multilang"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param_multilang"."modified_date" IS '修改日';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param_multilang"."modified_by" IS '修改人';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param_multilang"."modified_by_cd" IS '修改人CODE';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param_multilang"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param_multilang"."modified_unit_cd" IS '修改人单位KEY';
COMMENT ON COLUMN "pms_dev"."cmm_unit_param_multilang"."version" IS '版本';

-- ----------------------------
-- Records of cmm_unit_param_multilang
-- ----------------------------

-- ----------------------------
-- Table structure for hpt_hk_room_feature
-- ----------------------------
DROP TABLE IF EXISTS "pms_dev"."hpt_hk_room_feature";
CREATE TABLE "pms_dev"."hpt_hk_room_feature" (
"id" int4 DEFAULT nextval('"pms_dev".hpt_hk_room_feature_id_seq'::regclass) NOT NULL,
"chain_uid" varchar(40) COLLATE "default" NOT NULL,
"unit_uid" varchar(40) COLLATE "default" NOT NULL,
"room_num" varchar(20) COLLATE "default" NOT NULL,
"roomfeatruetyp_id" int4 NOT NULL,
"roomfeatrue_note" varchar(500) COLLATE "default" DEFAULT NULL::character varying,
"created_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_date" timestamp(3) DEFAULT NULL::timestamp without time zone,
"created_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(100) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_date" timestamp(3) DEFAULT NULL::timestamp without time zone,
"modified_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(100) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"version" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pms_dev"."hpt_hk_room_feature" IS '房间特点表';
COMMENT ON COLUMN "pms_dev"."hpt_hk_room_feature"."id" IS 'ID ID字段';
COMMENT ON COLUMN "pms_dev"."hpt_hk_room_feature"."chain_uid" IS '集团代码 ';
COMMENT ON COLUMN "pms_dev"."hpt_hk_room_feature"."unit_uid" IS '单位代码 ';
COMMENT ON COLUMN "pms_dev"."hpt_hk_room_feature"."room_num" IS '房间号码 ';
COMMENT ON COLUMN "pms_dev"."hpt_hk_room_feature"."roomfeatruetyp_id" IS '特点类型代码 ';
COMMENT ON COLUMN "pms_dev"."hpt_hk_room_feature"."roomfeatrue_note" IS '特点描述 ';

-- ----------------------------
-- Records of hpt_hk_room_feature
-- ----------------------------
INSERT INTO "pms_dev"."hpt_hk_room_feature" VALUES ('1', '000000', '000001', '503', '29', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_hk_room_feature" VALUES ('2', '000000', '000001', '502', '29', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_hk_room_feature" VALUES ('3', '000000', '000001', '102', '30', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_hk_room_feature" VALUES ('4', '000000', '000001', '202', '29', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_hk_room_feature" VALUES ('5', '000000', '000001', '405', '29', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_hk_room_feature" VALUES ('6', '000000', '000001', '501', '29', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_hk_room_feature" VALUES ('7', '000000', '000001', '304', '30', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_hk_room_feature" VALUES ('8', '000000', '000001', '201', '30', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_hk_room_feature" VALUES ('9', '000000', '000001', '302', '29', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_hk_room_feature" VALUES ('10', '000000', '000001', '403', '29', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_hk_room_feature" VALUES ('11', '000000', '000001', '401', '29', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_hk_room_feature" VALUES ('12', '000000', '000001', '402', '29', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for hpt_hk_room_repair
-- ----------------------------
DROP TABLE IF EXISTS "pms_dev"."hpt_hk_room_repair";
CREATE TABLE "pms_dev"."hpt_hk_room_repair" (
"id" int4 DEFAULT nextval('"pms_dev".hpt_hk_room_repair_id_seq'::regclass) NOT NULL,
"chain_uid" varchar(40) COLLATE "default" NOT NULL,
"unit_uid" varchar(40) COLLATE "default" NOT NULL,
"status_flg" varchar(3) COLLATE "default" NOT NULL,
"room_num" varchar(20) COLLATE "default" NOT NULL,
"repair_typ" varchar(10) COLLATE "default" NOT NULL,
"return_sts" varchar(10) COLLATE "default" DEFAULT NULL::character varying,
"start_dt" date,
"end_dt" date,
"complete_dt" date,
"repairrsn_id" int4,
"repairrsn_remarks" varchar(2000) COLLATE "default" DEFAULT NULL::character varying,
"complete_user_id" int4,
"complete_usernm" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"complete_remarks" varchar(2000) COLLATE "default" DEFAULT NULL::character varying,
"created_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_date" timestamp(3) DEFAULT NULL::timestamp without time zone,
"created_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(100) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_date" timestamp(3) DEFAULT NULL::timestamp without time zone,
"modified_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(100) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"version" int4,
"complete_flg" varchar(1) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pms_dev"."hpt_hk_room_repair" IS '故障房表';
COMMENT ON COLUMN "pms_dev"."hpt_hk_room_repair"."id" IS 'ID ID字段';
COMMENT ON COLUMN "pms_dev"."hpt_hk_room_repair"."chain_uid" IS '集团代码 ';
COMMENT ON COLUMN "pms_dev"."hpt_hk_room_repair"."unit_uid" IS '单位代码 ';
COMMENT ON COLUMN "pms_dev"."hpt_hk_room_repair"."status_flg" IS '状态标识 1：有效（默认）
0：无效';
COMMENT ON COLUMN "pms_dev"."hpt_hk_room_repair"."room_num" IS '房间号码 ';
COMMENT ON COLUMN "pms_dev"."hpt_hk_room_repair"."repair_typ" IS '关闭房类型 OOO、OOS等';
COMMENT ON COLUMN "pms_dev"."hpt_hk_room_repair"."return_sts" IS '返回房态 ';
COMMENT ON COLUMN "pms_dev"."hpt_hk_room_repair"."start_dt" IS '开始时间 维修开始时间';
COMMENT ON COLUMN "pms_dev"."hpt_hk_room_repair"."end_dt" IS '结束时间 维修结束时间';
COMMENT ON COLUMN "pms_dev"."hpt_hk_room_repair"."complete_dt" IS '完成时间 维修完成时间';
COMMENT ON COLUMN "pms_dev"."hpt_hk_room_repair"."repairrsn_id" IS '状态原因 根据维修房类型，对应不同的主表原因代码';
COMMENT ON COLUMN "pms_dev"."hpt_hk_room_repair"."repairrsn_remarks" IS '原因描述 冗余原因描述';
COMMENT ON COLUMN "pms_dev"."hpt_hk_room_repair"."complete_user_id" IS '结束职员编号 冗余结束人员的显示名';
COMMENT ON COLUMN "pms_dev"."hpt_hk_room_repair"."complete_usernm" IS '结束人员姓名 冗余结束人员的显示名';
COMMENT ON COLUMN "pms_dev"."hpt_hk_room_repair"."complete_remarks" IS '完成描述 ';
COMMENT ON COLUMN "pms_dev"."hpt_hk_room_repair"."complete_flg" IS '完成标识';

-- ----------------------------
-- Records of hpt_hk_room_repair
-- ----------------------------
INSERT INTO "pms_dev"."hpt_hk_room_repair" VALUES ('1', '000000', '000001', '0', '101', 'NBA', null, '2017-03-02', '2017-03-06', null, null, null, null, null, null, null, null, null, null, null, null, '000001', '2017-03-03 15:46:55.126', 'admin', 'admin', 'UNIT001', '000001', '2', '0');
INSERT INTO "pms_dev"."hpt_hk_room_repair" VALUES ('2', '000000', '000001', '1', '303', 'OOS', null, '2017-03-02', '2017-03-03', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0');
INSERT INTO "pms_dev"."hpt_hk_room_repair" VALUES ('4', '000000', '000001', '1', '404', 'OOO', 'VD', '2017-03-02', '2017-03-06', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0');
INSERT INTO "pms_dev"."hpt_hk_room_repair" VALUES ('9', '000000', '000001', '1', '102', 'OOO', 'VD', '2017-03-03', '2017-03-03', '2017-03-03', '1', '维修原因', null, null, '维修完成', '000001', '2017-03-03 15:04:53.807', 'admin', 'admin', 'UNIT001', '000001', '000001', '2017-03-03 15:33:36.677', 'admin', 'admin', 'UNIT001', '000001', '2', '1');

-- ----------------------------
-- Table structure for hpt_pms_room
-- ----------------------------
DROP TABLE IF EXISTS "pms_dev"."hpt_pms_room";
CREATE TABLE "pms_dev"."hpt_pms_room" (
"id" int4 DEFAULT nextval('"pms_dev".hpt_pms_room_id_seq'::regclass) NOT NULL,
"chain_uid" varchar(40) COLLATE "default" NOT NULL,
"unit_uid" varchar(40) COLLATE "default" NOT NULL,
"status_flg" varchar(3) COLLATE "default" NOT NULL,
"room_num" varchar(20) COLLATE "default" NOT NULL,
"room_num_ref" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"seq" int4,
"roomtyp_id" int4 NOT NULL,
"room_cls" int4,
"building_id" int4,
"area_id" int4,
"floor_id" int4 NOT NULL,
"roomfeature_id" int4,
"bedtyp_id" int4,
"bed_num" int2,
"room_stus" varchar(10) COLLATE "default" DEFAULT NULL::character varying,
"clean_stus" varchar(3) COLLATE "default" DEFAULT NULL::character varying,
"fo_room_stus" varchar(3) COLLATE "default" DEFAULT NULL::character varying,
"fo_pers" int2,
"assign_stus" varchar(3) COLLATE "default" DEFAULT NULL::character varying,
"assign_typ" int4,
"assign_rsn" int4,
"assign_user_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"assign_dhms" date,
"hk_room_stus" varchar(3) COLLATE "default" DEFAULT NULL::character varying,
"hk_pers" int2,
"holdtyp_id" int4,
"hold_dhms" date,
"hold_employee_id" int4,
"smoking_flg" varchar(3) COLLATE "default" NOT NULL,
"handicap_flg" varchar(3) COLLATE "default" NOT NULL,
"shareable_flg" varchar(3) COLLATE "default" NOT NULL,
"combo_flg" varchar(3) COLLATE "default" NOT NULL,
"suit_flg" varchar(3) COLLATE "default" NOT NULL,
"pseudo_flg" varchar(3) COLLATE "default" NOT NULL,
"meetingroom_flg" varchar(3) COLLATE "default" NOT NULL,
"bar_flg" varchar(1) COLLATE "default" NOT NULL,
"lock_typ" varchar(1) COLLATE "default" DEFAULT NULL::character varying,
"turndown_enable_flg" varchar(1) COLLATE "default" DEFAULT NULL::character varying,
"web_visible_flg" varchar(1) COLLATE "default" DEFAULT NULL::character varying,
"web_booking_flg" varchar(1) COLLATE "default" DEFAULT NULL::character varying,
"hksection_id" int4,
"hkeveningsection_id" int4,
"stayover_credit" int4,
"departure_credit" int4,
"touchup_credit" int4,
"turndown_credit" int4,
"revenue_min" numeric(8,4) DEFAULT NULL::numeric,
"room_num_real" int4,
"building_real" int4,
"area_real" int4,
"floor_real" int4,
"occupancy_min" int2,
"occupancy_max" int2,
"area" numeric(8,4) DEFAULT NULL::numeric,
"area_units" varchar(20) COLLATE "default" DEFAULT NULL::character varying,
"note" varchar(500) COLLATE "default" DEFAULT NULL::character varying,
"phone_flg" varchar(1) COLLATE "default" NOT NULL,
"internet_flg" varchar(1) COLLATE "default" NOT NULL,
"tv_flg" varchar(1) COLLATE "default" NOT NULL,
"dnd_flg" varchar(1) COLLATE "default" NOT NULL,
"turndown_flg" varchar(1) COLLATE "default" NOT NULL,
"msg_flg" varchar(1) COLLATE "default" NOT NULL,
"tdnd_flg" varchar(1) COLLATE "default" NOT NULL,
"vmsg_flg" varchar(1) COLLATE "default" NOT NULL,
"other1_flg" varchar(1) COLLATE "default" NOT NULL,
"other2_flg" varchar(1) COLLATE "default" NOT NULL,
"other3_flg" varchar(1) COLLATE "default" NOT NULL,
"other4_flg" varchar(1) COLLATE "default" NOT NULL,
"other5_flg" varchar(1) COLLATE "default" NOT NULL,
"extra_stus" varchar(500) COLLATE "default" DEFAULT NULL::character varying,
"totarrm" int4,
"totrm" int4,
"totmaintain" int4,
"agn_prty" int4,
"clean_stat_dhms" date,
"memo" varchar(4000) COLLATE "default" DEFAULT NULL::character varying,
"created_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_date" timestamp(3) DEFAULT NULL::timestamp without time zone,
"created_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(100) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_date" timestamp(3) DEFAULT NULL::timestamp without time zone,
"modified_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(100) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"version" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pms_dev"."hpt_pms_room" IS '房间配置';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."id" IS 'ID ID字段';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."chain_uid" IS '集团代码 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."unit_uid" IS '单位代码 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."status_flg" IS '状态标识 1：有效（默认）
0：无效';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."room_num" IS '房间号码 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."room_num_ref" IS '显示房号 房态图显示需要';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."seq" IS '序号 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."roomtyp_id" IS '房型编码 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."room_cls" IS '房间分类 预留';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."building_id" IS '楼座代码 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."area_id" IS '楼区代码 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."floor_id" IS '楼层代码 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."roomfeature_id" IS '房间特点 对应多选表包代码';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."bedtyp_id" IS '床型 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."bed_num" IS '床数 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."room_stus" IS '房间状态 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."clean_stus" IS '客房打扫状态 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."fo_room_stus" IS '前台房间状态 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."fo_pers" IS '前台房间人数 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."assign_stus" IS '分配状态 0.空 1.P（预定锁房）';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."assign_typ" IS '分配类型 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."assign_rsn" IS '分配原因 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."assign_user_uid" IS '分配操作员 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."assign_dhms" IS '分配时间 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."hk_room_stus" IS '客房部房间状态 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."hk_pers" IS '客房房间人数 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."holdtyp_id" IS '客房保留类型 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."hold_dhms" IS '保留时间 客房保留的释放日期时间';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."hold_employee_id" IS '保留操作员编号 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."smoking_flg" IS '吸烟标识 0禁止吸烟，1允许吸烟，2未知（默认）';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."handicap_flg" IS '残疾人房标识 0否（默认），1是';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."shareable_flg" IS '连通房标识 0普通房（默认），1连通房';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."combo_flg" IS '组合房标识 0：非组合房（默认），1：组合房';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."suit_flg" IS '套房标识 0：非套房（默认），1：套房';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."pseudo_flg" IS '假房标志 0：真房（默认），1：假房';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."meetingroom_flg" IS '会议室标志 0：非会议室（默认），1：会议室';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."bar_flg" IS '迷你吧标识 0：无（默认），1：有';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."lock_typ" IS '门锁类型 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."turndown_enable_flg" IS '可否夜床标识 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."web_visible_flg" IS '网络订房可见标识 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."web_booking_flg" IS '网络订房标识 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."hksection_id" IS '清扫分区编码 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."hkeveningsection_id" IS '晚班清扫分区 同样对应清扫分区？';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."stayover_credit" IS '在店打扫分值 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."departure_credit" IS '离店打扫分值 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."touchup_credit" IS '轻脏打扫分值 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."turndown_credit" IS '夜床打扫分值 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."revenue_min" IS '最小房价 所有设置房价不能低于最小房价';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."room_num_real" IS '逻辑房号 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."building_real" IS '逻辑楼座 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."area_real" IS '逻辑楼区 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."floor_real" IS '逻辑楼层 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."occupancy_min" IS '最小容纳人数 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."occupancy_max" IS '最大容纳人数 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."area" IS '房间面积 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."area_units" IS '面积单位 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."note" IS '客房说明 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."phone_flg" IS '电话开通级别 0：无，1：有（默认）';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."internet_flg" IS '网络开通标识 0：无，1：有（默认）';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."tv_flg" IS 'IPTV开通标识 0：无（默认），1：有';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."dnd_flg" IS '免扰标志 0：未设置（默认），1：有，2：无';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."turndown_flg" IS '夜床标志 0:没有作夜床 1:已作';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."msg_flg" IS '手工留言标志 0：无（默认），1：有';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."tdnd_flg" IS '电话免扰标志 0：未设置（默认），1：有，2：无';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."vmsg_flg" IS '语音留言标志 0：无（默认），1：有';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."other1_flg" IS '其他标志 0：无（默认），1：有';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."other2_flg" IS '其他标志 0：无（默认），1：有';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."other3_flg" IS '其他标志 0：无（默认），1：有';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."other4_flg" IS '其他标志 0：无（默认），1：有';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."other5_flg" IS '其他标志 0：无（默认），1：有';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."extra_stus" IS '扩展状态 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."totarrm" IS '来店房数 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."totrm" IS '总间天数 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."totmaintain" IS '维修次数 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."agn_prty" IS '房间分配优先级 在同等条件下，级别越高的房间，越优先分配';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."clean_stat_dhms" IS '清扫状态设置时间 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room"."memo" IS '备注 ';

-- ----------------------------
-- Records of hpt_pms_room
-- ----------------------------
INSERT INTO "pms_dev"."hpt_pms_room" VALUES ('4', '000000', '000001', '1', '101', '101', '6', '1', null, '15', '18', '22', null, null, null, 'VD', 'D', 'V', null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '1', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '000001', '2017-03-03 15:46:55.102', 'admin', 'admin', 'UNIT001', '000001', '2');
INSERT INTO "pms_dev"."hpt_pms_room" VALUES ('5', '000000', '000001', '1', '102', '102', '8', '2', null, '16', '19', '22', null, null, null, 'VD', 'D', 'V', null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '1', '0', '0', '0', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, '1', null, null, null, null, null, null, null, null, null, '000001', '2017-03-03 15:33:36.686', 'admin', 'admin', 'UNIT001', '000001', '3');
INSERT INTO "pms_dev"."hpt_pms_room" VALUES ('6', '000000', '000001', '1', '201', '201', '5', '3', null, '16', '19', '23', null, null, null, 'VC', 'T', 'V', null, null, null, null, null, null, null, null, null, null, null, '1', '1', '1', '0', '0', '0', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_pms_room" VALUES ('7', '000000', '000001', '1', '202', '202', '0', '3', null, '15', '19', '23', null, null, null, 'VD', 'D', 'V', null, null, null, null, null, null, null, null, null, null, null, '1', '0', '0', '0', '1', '0', '0', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2017-03-07 10:05:16', null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_pms_room" VALUES ('8', '000000', '000001', '1', '301', '301', '0', '4', null, '16', '19', '24', null, null, null, 'VT', 'T', 'V', null, null, null, null, null, null, null, null, null, null, null, '0', '0', '1', '0', '1', '0', '0', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_pms_room" VALUES ('9', '000000', '000001', '1', '302', '302', '4', '4', null, '15', '20', '24', null, null, null, 'OC', 'C', 'O', null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '1', '1', '0', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_pms_room" VALUES ('10', '000000', '000001', '1', '303', '303', '0', '4', null, '15', '18', '24', null, null, null, 'OOS', 'C', 'V', null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '1', '0', '0', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_pms_room" VALUES ('11', '000000', '000001', '1', '304', '304', '0', '5', null, '17', '20', '24', null, null, null, 'OD', 'D', 'O', null, null, null, null, null, null, null, null, null, null, null, '0', '1', '1', '0', '0', '0', '0', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_pms_room" VALUES ('12', '000000', '000001', '1', '401', '401', '0', '5', null, '17', '18', '25', null, null, null, 'VD', 'D', 'V', null, null, null, null, null, null, null, null, null, null, null, '0', '1', '0', '1', '1', '0', '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_pms_room" VALUES ('13', '000000', '000001', '1', '402', '402', '1', '5', null, '17', '20', '25', null, null, null, 'OC', 'C', 'O', null, null, null, null, null, null, null, null, null, null, null, '1', '0', '1', '0', '1', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_pms_room" VALUES ('14', '000000', '000001', '1', '403', '403', '6', '6', null, '17', '18', '25', null, null, null, 'VI', 'I', 'V', null, null, null, null, null, null, null, null, null, null, null, '1', '0', '1', '0', '0', '0', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_pms_room" VALUES ('15', '000000', '000001', '1', '404', '404', '0', '6', null, '17', '21', '25', null, null, null, 'OOO', 'V', 'D', null, null, null, null, null, null, null, null, null, null, null, '0', '0', '1', '0', '1', '0', '0', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_pms_room" VALUES ('16', '000000', '000001', '1', '405', '405', '2', '6', null, '15', '21', '25', null, null, null, 'OD', 'D', 'O', null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '1', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_pms_room" VALUES ('17', '000000', '000001', '1', '501', '501', '0', '6', null, '16', '18', '26', null, null, null, 'VT', 'T', 'V', null, null, null, null, null, null, null, null, null, null, null, '0', '0', '1', '0', '1', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2017-03-01 10:05:05', null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_pms_room" VALUES ('18', '000000', '000001', '1', '502', '502', '1', '7', null, '15', '21', '26', null, null, null, 'OC', 'C', 'O', null, null, null, null, null, null, null, null, null, null, null, '1', '0', '1', '0', '1', '0', '0', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_pms_room" VALUES ('19', '000000', '000001', '1', '503', '503', '0', '1', null, '15', '18', '26', null, null, null, 'VC', 'C', 'V', null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '1', '1', '0', '0', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, '2017-03-03', null, null, null, null, null, null, null, '000001', '2017-03-03 14:31:22.976', 'admin', 'admin', 'UNIT001', '000001', '2');

-- ----------------------------
-- Table structure for hpt_pms_room_combo
-- ----------------------------
DROP TABLE IF EXISTS "pms_dev"."hpt_pms_room_combo";
CREATE TABLE "pms_dev"."hpt_pms_room_combo" (
"id" int4 DEFAULT nextval('"pms_dev".hpt_pms_room_combo_id_seq'::regclass) NOT NULL,
"chain_uid" varchar(40) COLLATE "default" NOT NULL,
"unit_uid" varchar(40) COLLATE "default" NOT NULL,
"status_flg" varchar(3) COLLATE "default" NOT NULL,
"combo_flg" varchar(3) COLLATE "default" NOT NULL,
"primary_room_num" varchar(20) COLLATE "default" NOT NULL,
"room_num" varchar(20) COLLATE "default" NOT NULL,
"percent_utilized" numeric(8,4) DEFAULT NULL::numeric,
"area_utilized" numeric(8,4) DEFAULT NULL::numeric,
"created_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_date" timestamp(3) DEFAULT NULL::timestamp without time zone,
"created_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(100) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_date" timestamp(3) DEFAULT NULL::timestamp without time zone,
"modified_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(100) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"version" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pms_dev"."hpt_pms_room_combo" IS '组合房配置';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room_combo"."id" IS 'ID ID字段';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room_combo"."chain_uid" IS '集团代码 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room_combo"."unit_uid" IS '单位代码 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room_combo"."status_flg" IS '状态标识 1：有效（默认）
0：无效';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room_combo"."combo_flg" IS '组合房类型 1：组合房（默认）
0：连通房';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room_combo"."primary_room_num" IS '主房间代码 主房号对应的房间id';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room_combo"."room_num" IS '房间号码 为组合房时：与主房号相同时，为虚拟组合房，不同时表示真实房间。
为连通房时：表示与主房号相连的房间号码，不存在与主房号相同的情况';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room_combo"."percent_utilized" IS '收入配比 拆分房价时该房间所占比例。连通房无效';
COMMENT ON COLUMN "pms_dev"."hpt_pms_room_combo"."area_utilized" IS '使用面积 作为组合房时，该房间使用面积。连通房无效';

-- ----------------------------
-- Records of hpt_pms_room_combo
-- ----------------------------

-- ----------------------------
-- Table structure for hpt_pms_roomtype
-- ----------------------------
DROP TABLE IF EXISTS "pms_dev"."hpt_pms_roomtype";
CREATE TABLE "pms_dev"."hpt_pms_roomtype" (
"id" int4 DEFAULT nextval('"pms_dev".hpt_pms_roomtype_id_seq'::regclass) NOT NULL,
"chain_uid" varchar(40) COLLATE "default" NOT NULL,
"unit_uid" varchar(40) COLLATE "default" NOT NULL,
"mapping_roomtyp_cd" varchar(20) COLLATE "default" NOT NULL,
"roomtyp_id" int4 NOT NULL,
"roomtyp_cd" varchar(20) COLLATE "default" NOT NULL,
"roomtyp_nm" varchar(200) COLLATE "default" NOT NULL,
"roomtypgrp_id" int4,
"seq" int4,
"room_nums" int4,
"occupancy_max" int4 NOT NULL,
"occupancy_std" int4 NOT NULL,
"occupancy_adult_max" int4,
"occupancy_child_max" int4,
"occupancy_nobed_max" int4,
"bedtyp_id" int4 NOT NULL,
"pseudo_flg" varchar(3) COLLATE "default" NOT NULL,
"combo_flg" varchar(3) COLLATE "default" NOT NULL,
"meetingroom_flg" varchar(3) COLLATE "default" NOT NULL,
"suit_flg" varchar(3) COLLATE "default" NOT NULL,
"shareable_flg" varchar(3) COLLATE "default" NOT NULL,
"stayover_credit" int4,
"departure_credit" int4,
"touchup_credit" int4,
"turndown_credit" int4,
"note" varchar(500) COLLATE "default" DEFAULT NULL::character varying,
"created_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"created_date" timestamp(3) DEFAULT NULL::timestamp without time zone,
"created_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"created_by_cd" varchar(100) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_cd" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"created_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"modified_date" timestamp(3) DEFAULT NULL::timestamp without time zone,
"modified_by" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"modified_by_cd" varchar(100) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_cd" varchar(50) COLLATE "default" DEFAULT NULL::character varying,
"modified_unit_uid" varchar(40) COLLATE "default" DEFAULT NULL::character varying,
"version" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pms_dev"."hpt_pms_roomtype" IS '房型配置';
COMMENT ON COLUMN "pms_dev"."hpt_pms_roomtype"."id" IS 'ID ID字段';
COMMENT ON COLUMN "pms_dev"."hpt_pms_roomtype"."chain_uid" IS '集团代码 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_roomtype"."unit_uid" IS '单位代码 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_roomtype"."mapping_roomtyp_cd" IS '镜像房型编码 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_roomtype"."roomtyp_id" IS '房型代码 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_roomtype"."roomtyp_cd" IS '房型编码 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_roomtype"."roomtyp_nm" IS '房型名称 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_roomtype"."roomtypgrp_id" IS '房型组代码 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_roomtype"."seq" IS '序号 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_roomtype"."room_nums" IS '房间数量 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_roomtype"."occupancy_max" IS '最大入住人数 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_roomtype"."occupancy_std" IS '标准入住人数 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_roomtype"."occupancy_adult_max" IS '最大成人数 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_roomtype"."occupancy_child_max" IS '最大儿童数 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_roomtype"."occupancy_nobed_max" IS '不加床最大人数 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_roomtype"."bedtyp_id" IS '床型 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_roomtype"."pseudo_flg" IS '假房标志 0：真房（默认）
1：假房';
COMMENT ON COLUMN "pms_dev"."hpt_pms_roomtype"."combo_flg" IS '组合房标志 0：非组合房（默认）
1：组合房';
COMMENT ON COLUMN "pms_dev"."hpt_pms_roomtype"."meetingroom_flg" IS '会议室标志 0：非会议室（默认）
1：会议室';
COMMENT ON COLUMN "pms_dev"."hpt_pms_roomtype"."suit_flg" IS '套房标识 0：非套房（默认），1：套房';
COMMENT ON COLUMN "pms_dev"."hpt_pms_roomtype"."shareable_flg" IS '连通房标识 0普通房，1连通房';
COMMENT ON COLUMN "pms_dev"."hpt_pms_roomtype"."stayover_credit" IS '在店打扫分值 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_roomtype"."departure_credit" IS '离店打扫分值 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_roomtype"."touchup_credit" IS '轻脏打扫分值 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_roomtype"."turndown_credit" IS '夜床打扫分值 ';
COMMENT ON COLUMN "pms_dev"."hpt_pms_roomtype"."note" IS '备注 ';

-- ----------------------------
-- Records of hpt_pms_roomtype
-- ----------------------------
INSERT INTO "pms_dev"."hpt_pms_roomtype" VALUES ('2', '000000', '000001', '1', '1', '001', '标准间', null, '0', null, '4', '2', null, null, null, '1', '0', '0', '1', '0', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_pms_roomtype" VALUES ('3', '000000', '000001', '2', '2', '002', '普通间', null, '0', null, '4', '2', null, null, null, '1', '0', '1', '1', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_pms_roomtype" VALUES ('4', '000000', '000001', '3', '3', '003', '普通间1', null, '0', null, '4', '2', null, null, null, '1', '0', '1', '0', '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_pms_roomtype" VALUES ('5', '000000', '000001', '4', '4', '004', '普通间2', null, '0', null, '4', '2', null, null, null, '1', '1', '0', '1', '0', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_pms_roomtype" VALUES ('6', '000000', '000001', '5', '5', '005', '普通间5', null, '0', null, '4', '2', null, null, null, '1', '0', '1', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_pms_roomtype" VALUES ('7', '000000', '000001', '6', '6', '006', '普通间6', null, '0', null, '4', '2', null, null, null, '1', '1', '0', '1', '0', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_pms_roomtype" VALUES ('8', '000000', '000001', '7', '7', '007', '普通间7', null, '0', null, '4', '2', null, null, null, '1', '0', '1', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_pms_roomtype" VALUES ('9', '000000', '000001', '8', '8', '008', '普通间8', null, '0', null, '4', '2', null, null, null, '1', '1', '0', '1', '0', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO "pms_dev"."hpt_pms_roomtype" VALUES ('10', '000000', '000001', '9', '9', '009', '普通间9', null, '0', null, '4', '2', null, null, null, '1', '0', '0', '0', '0', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for pathman_config
-- ----------------------------
DROP TABLE IF EXISTS "pms_dev"."pathman_config";
CREATE TABLE "pms_dev"."pathman_config" (
"partrel" regclass NOT NULL,
"attname" text COLLATE "default" NOT NULL,
"parttype" int4 NOT NULL,
"range_interval" text COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of pathman_config
-- ----------------------------

-- ----------------------------
-- Table structure for pathman_config_params
-- ----------------------------
DROP TABLE IF EXISTS "pms_dev"."pathman_config_params";
CREATE TABLE "pms_dev"."pathman_config_params" (
"partrel" regclass NOT NULL,
"enable_parent" bool DEFAULT false NOT NULL,
"auto" bool DEFAULT true NOT NULL,
"init_callback" regprocedure DEFAULT 0 NOT NULL,
"spawn_using_bgw" bool DEFAULT false NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of pathman_config_params
-- ----------------------------

-- ----------------------------
-- Table structure for plf_cmm_config
-- ----------------------------
DROP TABLE IF EXISTS "pms_dev"."plf_cmm_config";
CREATE TABLE "pms_dev"."plf_cmm_config" (
"id" int4 DEFAULT nextval('"pms_dev".plf_cmm_config_id_seq'::regclass) NOT NULL,
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
COMMENT ON TABLE "pms_dev"."plf_cmm_config" IS '平台配置参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."id" IS 'IDID字段';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_typ" IS '参数类型';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_id" IS '参数ID';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_cd" IS '参数代码';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_drpt" IS '参数名称';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_grp" IS '参数分组';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_subgrp" IS '参数子分组';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_flg" IS '参数属性';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."status_flg" IS '状态标识1：有效（默认）
0：无效';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."seq" IS '序号';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."note" IS '注释';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_str1" IS '文字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_str2" IS '文字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_str3" IS '文字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_str4" IS '文字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_str5" IS '文字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_str6" IS '文字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_str7" IS '文字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_str8" IS '文字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_str9" IS '文字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_str10" IS '文字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_num1" IS '数字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_num2" IS '数字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_num3" IS '数字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_num4" IS '数字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_num5" IS '数字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_num6" IS '数字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_num7" IS '数字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_num8" IS '数字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_num9" IS '数字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_num10" IS '数字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_dt1" IS '日期型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_dt2" IS '日期型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_dt3" IS '日期型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_dt4" IS '日期型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_dt5" IS '日期型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_dt6" IS '日期型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_dt7" IS '日期型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_dt8" IS '日期型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_dt9" IS '日期型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_dt10" IS '日期型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config"."param_ver" IS '修改版本本字段用来对业务系统中对应的表进行一致性校验，程序控制此字段变更';

-- ----------------------------
-- Records of plf_cmm_config
-- ----------------------------

-- ----------------------------
-- Table structure for plf_cmm_config_multilang
-- ----------------------------
DROP TABLE IF EXISTS "pms_dev"."plf_cmm_config_multilang";
CREATE TABLE "pms_dev"."plf_cmm_config_multilang" (
"id" int4 DEFAULT nextval('"pms_dev".plf_cmm_config_multilang_id_seq'::regclass) NOT NULL,
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
COMMENT ON TABLE "pms_dev"."plf_cmm_config_multilang" IS '配置参数多语言';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config_multilang"."id" IS 'IDID字段';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config_multilang"."param_typ" IS '参数类型';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config_multilang"."param_id" IS '参数ID';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config_multilang"."language_id" IS '语言代码参考通用的语种代码表';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config_multilang"."param_drpt" IS '参数名称';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config_multilang"."status_flg" IS '状态标识1：有效（默认）
0：无效';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config_multilang"."note" IS '注释';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config_multilang"."param_str1" IS '文字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config_multilang"."param_str2" IS '文字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config_multilang"."param_str3" IS '文字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config_multilang"."param_str4" IS '文字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config_multilang"."param_str5" IS '文字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config_multilang"."param_str6" IS '文字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config_multilang"."param_str7" IS '文字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config_multilang"."param_str8" IS '文字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config_multilang"."param_str9" IS '文字型参数';
COMMENT ON COLUMN "pms_dev"."plf_cmm_config_multilang"."param_str10" IS '文字型参数';

-- ----------------------------
-- Records of plf_cmm_config_multilang
-- ----------------------------

-- ----------------------------
-- Table structure for plf_cmm_param_multilang
-- ----------------------------
DROP TABLE IF EXISTS "pms_dev"."plf_cmm_param_multilang";
CREATE TABLE "pms_dev"."plf_cmm_param_multilang" (
"id" int4 DEFAULT nextval('"pms_dev".plf_cmm_param_multilang_id_seq'::regclass) NOT NULL,
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
COMMENT ON COLUMN "pms_dev"."plf_cmm_param_multilang"."param_typ" IS '参数类型';
COMMENT ON COLUMN "pms_dev"."plf_cmm_param_multilang"."param_id" IS '参数ID';
COMMENT ON COLUMN "pms_dev"."plf_cmm_param_multilang"."param_drpt" IS '参数名称';
COMMENT ON COLUMN "pms_dev"."plf_cmm_param_multilang"."param_str1" IS '文字型参数1';
COMMENT ON COLUMN "pms_dev"."plf_cmm_param_multilang"."param_str2" IS '文字型参数2';
COMMENT ON COLUMN "pms_dev"."plf_cmm_param_multilang"."param_str3" IS '文字型参数3';
COMMENT ON COLUMN "pms_dev"."plf_cmm_param_multilang"."param_str4" IS '文字型参数4';
COMMENT ON COLUMN "pms_dev"."plf_cmm_param_multilang"."param_str5" IS '文字型参数5';
COMMENT ON COLUMN "pms_dev"."plf_cmm_param_multilang"."param_str6" IS '文字型参数6';
COMMENT ON COLUMN "pms_dev"."plf_cmm_param_multilang"."param_str7" IS '文字型参数7';
COMMENT ON COLUMN "pms_dev"."plf_cmm_param_multilang"."param_str8" IS '文字型参数8';
COMMENT ON COLUMN "pms_dev"."plf_cmm_param_multilang"."param_str9" IS '文字型参数9';
COMMENT ON COLUMN "pms_dev"."plf_cmm_param_multilang"."param_str10" IS '文字型参数10';
COMMENT ON COLUMN "pms_dev"."plf_cmm_param_multilang"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pms_dev"."plf_cmm_param_multilang"."created_date" IS '创建日';
COMMENT ON COLUMN "pms_dev"."plf_cmm_param_multilang"."created_by" IS '创建人';
COMMENT ON COLUMN "pms_dev"."plf_cmm_param_multilang"."created_by_cd" IS '创建人CODE';
COMMENT ON COLUMN "pms_dev"."plf_cmm_param_multilang"."created_unit_uid" IS '创建人单位CODE';
COMMENT ON COLUMN "pms_dev"."plf_cmm_param_multilang"."created_unit_cd" IS '创建人单位KEY';
COMMENT ON COLUMN "pms_dev"."plf_cmm_param_multilang"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pms_dev"."plf_cmm_param_multilang"."modified_date" IS '修改日';
COMMENT ON COLUMN "pms_dev"."plf_cmm_param_multilang"."modified_by" IS '修改人';
COMMENT ON COLUMN "pms_dev"."plf_cmm_param_multilang"."modified_by_cd" IS '修改人CODE';
COMMENT ON COLUMN "pms_dev"."plf_cmm_param_multilang"."modified_unit_uid" IS '修改人单位CODE';
COMMENT ON COLUMN "pms_dev"."plf_cmm_param_multilang"."modified_unit_cd" IS '修改人单位KEY';
COMMENT ON COLUMN "pms_dev"."plf_cmm_param_multilang"."version" IS '版本';

-- ----------------------------
-- Records of plf_cmm_param_multilang
-- ----------------------------

-- ----------------------------
-- Table structure for plf_cmm_parameter
-- ----------------------------
DROP TABLE IF EXISTS "pms_dev"."plf_cmm_parameter";
CREATE TABLE "pms_dev"."plf_cmm_parameter" (
"id" int4 DEFAULT nextval('"pms_dev".plf_cmm_parameter_id_seq'::regclass) NOT NULL,
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
COMMENT ON TABLE "pms_dev"."plf_cmm_parameter" IS '平台参数配置';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."id" IS 'ID字段';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_typ" IS '参数类型';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_id" IS '参数ID';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_cd" IS '参数代码';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_drpt" IS '参数名称';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."paramgrp_id" IS '参数分组';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."paramsubgrp_id" IS '参数子分组';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_flg" IS '参数属性';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."status_flg" IS '状态标识';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."seq" IS '序号';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."note" IS '注释';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_str1" IS '文字型参数1';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_str2" IS '文字型参数2';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_str3" IS '文字型参数3';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_str4" IS '文字型参数4';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_str5" IS '文字型参数5';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_str6" IS '文字型参数6';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_str7" IS '文字型参数7';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_str8" IS '文字型参数8';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_str9" IS '文字型参数9';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_str10" IS '文字型参数10';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_num1" IS '数字型参数1';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_num2" IS '数字型参数2';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_num3" IS '数字型参数3';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_num4" IS '数字型参数4';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_num5" IS '数字型参数5';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_num6" IS '数字型参数6';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_num7" IS '数字型参数7';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_num8" IS '数字型参数8';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_num9" IS '数字型参数9';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_num10" IS '数字型参数10';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_dt1" IS '日期型参数1';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_dt2" IS '日期型参数2';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_dt3" IS '日期型参数3';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_dt4" IS '日期型参数4';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_dt5" IS '日期型参数5';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_dt6" IS '日期型参数6';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_dt7" IS '日期型参数7';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_dt8" IS '日期型参数8';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_dt9" IS '日期型参数9';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_dt10" IS '日期型参数10';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."param_ver" IS '修改版本';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."created_by_uid" IS '创建人ID';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."created_date" IS '创建日';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."created_by" IS '创建人';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."created_by_cd" IS '创建人NO';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."modified_by_uid" IS '修改人ID';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."modified_date" IS '修改日';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."modified_by" IS '修改人';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."modified_by_cd" IS '修改人NO';
COMMENT ON COLUMN "pms_dev"."plf_cmm_parameter"."version" IS '版本';

-- ----------------------------
-- Records of plf_cmm_parameter
-- ----------------------------

-- ----------------------------
-- Table structure for pos_bill
-- ----------------------------
DROP TABLE IF EXISTS "pms_dev"."pos_bill";
CREATE TABLE "pms_dev"."pos_bill" (
"id" int4 DEFAULT nextval('"pms_dev".pos_bill_id_seq'::regclass) NOT NULL,
"chain_uid" varchar(40) COLLATE "default" NOT NULL,
"unit_uid" varchar(40) COLLATE "default" NOT NULL,
"bill_id" int4 NOT NULL,
"sales_id" int4 NOT NULL,
"bill_tran_no" varchar(40) COLLATE "default" NOT NULL,
"bill_no" varchar(40) COLLATE "default",
"bill_stus" varchar(1) COLLATE "default" NOT NULL,
"bill_origin" varchar(1) COLLATE "default" NOT NULL,
"bill_origin_no" varchar(40) COLLATE "default",
"bill_typ" int4 NOT NULL,
"resv_no" varchar(40) COLLATE "default",
"resv_area_id" int4,
"makeup_flg" varchar(1) COLLATE "default" NOT NULL,
"room_num" varchar(100) COLLATE "default",
"acct_id" int4,
"acct_no" varchar(40) COLLATE "default",
"open_flg" varchar(1) COLLATE "default" NOT NULL,
"inside_flg" varchar(1) COLLATE "default" NOT NULL,
"market_typ" int4,
"org_typ" int4,
"profile_id" int4,
"profile_no" varchar(40) COLLATE "default",
"profile_flg" varchar(1) COLLATE "default",
"contacter_nm" varchar(100) COLLATE "default",
"contacter_tlno" varchar(500) COLLATE "default",
"spare_contacter_nm" varchar(100) COLLATE "default",
"spare_contacter_tlno" varchar(500) COLLATE "default",
"seat_no" varchar(1) COLLATE "default",
"block_num" int4,
"psn_num" int4,
"bill_amount" numeric(12,4),
"pay_amount" numeric(12,4),
"service_amount" numeric(12,4),
"discount_amount" numeric(12,4),
"make_amount" numeric(12,4),
"tax_amount" numeric(12,4),
"service_rate" numeric(12,4),
"service_flg" varchar(1) COLLATE "default",
"discount_rate" numeric(12,4),
"discount_flg" varchar(1) COLLATE "default",
"tax_id" int4,
"tax_cd" varchar(20) COLLATE "default",
"tax_rate" numeric(12,4),
"after_print_page" int4,
"waiter_by_uid" varchar(40) COLLATE "default",
"waiter_by_cd" varchar(100) COLLATE "default",
"waiter_by" varchar(50) COLLATE "default",
"saler_by_uid" varchar(40) COLLATE "default",
"saler_by_cd" varchar(100) COLLATE "default",
"saler_by" varchar(50) COLLATE "default",
"saler_unit_uid" varchar(40) COLLATE "default",
"saler_unit_cd" varchar(100) COLLATE "default",
"open_by_uid" varchar(40) COLLATE "default",
"open_by_cd" varchar(100) COLLATE "default",
"open_by" varchar(50) COLLATE "default",
"open_date" timestamp(3),
"open_period" varchar(1) COLLATE "default",
"resv_open_date" timestamp(3),
"resv_open_period" varchar(1) COLLATE "default",
"close_by_uid" varchar(40) COLLATE "default",
"close_by_cd" varchar(100) COLLATE "default",
"close_by" varchar(50) COLLATE "default",
"close_date" timestamp(3),
"close_period" varchar(1) COLLATE "default",
"resv_close_date" timestamp(3),
"resv_close_period" varchar(1) COLLATE "default",
"close_ws_id" int4,
"close_ws_cd" varchar(100) COLLATE "default",
"reopen_by_uid" varchar(40) COLLATE "default",
"reopen_by_cd" varchar(100) COLLATE "default",
"reopen_by" varchar(50) COLLATE "default",
"reopen_date" timestamp(3),
"reopen_ws_id" int4,
"reopen_ws_cd" varchar(100) COLLATE "default",
"print_by_uid" varchar(40) COLLATE "default",
"print_by_cd" varchar(100) COLLATE "default",
"print_by" varchar(50) COLLATE "default",
"print_date" timestamp(3),
"print_ws_id" int4,
"print_ws_cd" varchar(100) COLLATE "default",
"created_by_uid" varchar(40) COLLATE "default",
"created_by_cd" varchar(100) COLLATE "default",
"created_by" varchar(50) COLLATE "default",
"created_date" timestamp(3),
"created_unit_uid" int4,
"created_unit_cd" varchar(100) COLLATE "default",
"created_ws_id" int4,
"created_ws_cd" varchar(100) COLLATE "default",
"modified_by_uid" varchar(40) COLLATE "default",
"modified_by_cd" varchar(100) COLLATE "default",
"modified_by" varchar(50) COLLATE "default",
"modified_date" timestamp(3),
"modified_unit_uid" int4,
"modified_unit_cd" varchar(100) COLLATE "default",
"modified_ws_id" int4,
"modified_ws_cd" varchar(100) COLLATE "default",
"inside_uid" int4,
"inside_cd" varchar(40) COLLATE "default",
"inside_by_uid" varchar(40) COLLATE "default",
"inside_by_cd" varchar(100) COLLATE "default",
"inside_by" varchar(50) COLLATE "default",
"inside_date" timestamp(3),
"inside_dept_uid" int4,
"inside_dept_cd" varchar(100) COLLATE "default",
"inside_dept" varchar(50) COLLATE "default",
"inside_unit_uid" int4,
"inside_unit_cd" varchar(100) COLLATE "default",
"inside_memo" varchar(4000) COLLATE "default",
"sys_memo" varchar(4000) COLLATE "default",
"version" int4,
"memo" varchar(4000) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pms_dev"."pos_bill" IS 'DTO定义';
COMMENT ON COLUMN "pms_dev"."pos_bill"."unit_uid" IS '标识当前数据是集团或酒店录入的';
COMMENT ON COLUMN "pms_dev"."pos_bill"."bill_tran_no" IS '系统根据交易号配置自动生成
默认规则:销售点(3位)+日期(8位)+流水号(5位)
后期系统可以控制生成规格对4种元素进行选择排序 销售点(3位),日期(8位),餐点(2位),流水号(5位)';
COMMENT ON COLUMN "pms_dev"."pos_bill"."bill_no" IS '手工填入的打印账单号,可为空';
COMMENT ON COLUMN "pms_dev"."pos_bill"."bill_stus" IS '0-预订,1-未结,3-已结,4-预订取消,5-预订未到,6-冻结,9-作废';
COMMENT ON COLUMN "pms_dev"."pos_bill"."bill_origin" IS '0-开单,1-餐饮预订,2-宴会预订
后续增加 美团接入,糯米接入等';
COMMENT ON COLUMN "pms_dev"."pos_bill"."bill_origin_no" IS '预留字段 用来记录当前订单是那个程序录入的后续可以快速定位问题';
COMMENT ON COLUMN "pms_dev"."pos_bill"."bill_typ" IS '通用代码配置表中定义';
COMMENT ON COLUMN "pms_dev"."pos_bill"."resv_no" IS '预订单号';
COMMENT ON COLUMN "pms_dev"."pos_bill"."resv_area_id" IS '预订区域的概念一个是将桌台包间划分为区域,进行区域的预订,以及按照区域入账场地费';
COMMENT ON COLUMN "pms_dev"."pos_bill"."makeup_flg" IS '0-否,1-是
标识单据是否是补单录入的';
COMMENT ON COLUMN "pms_dev"."pos_bill"."room_num" IS '客房送餐时记录房 号';
COMMENT ON COLUMN "pms_dev"."pos_bill"."acct_id" IS '客房送餐单时记录 账户标识';
COMMENT ON COLUMN "pms_dev"."pos_bill"."acct_no" IS '客房送餐单时记录 账号';
COMMENT ON COLUMN "pms_dev"."pos_bill"."open_flg" IS '0-零点,1-自助,2-客房送餐,3-外卖';
COMMENT ON COLUMN "pms_dev"."pos_bill"."inside_flg" IS '0-普通账单,1-内部招待
注:这里是冗余存储，在账单付款时选择内部招待付款方式付款后修改内部消费标识，并填入内部招待类型';
COMMENT ON COLUMN "pms_dev"."pos_bill"."market_typ" IS '通用代码配置表中定义';
COMMENT ON COLUMN "pms_dev"."pos_bill"."org_typ" IS '通用代码配置表中定义';
COMMENT ON COLUMN "pms_dev"."pos_bill"."profile_flg" IS '0-CRM系统,1-餐饮客史';
COMMENT ON COLUMN "pms_dev"."pos_bill"."seat_no" IS '系统定义 A,B,C,D,E,F,G 当发生搭台操作时系统自动分配一个桌位号';
COMMENT ON COLUMN "pms_dev"."pos_bill"."service_rate" IS '开单时系统自动带入,先获取餐点的默认服务费率,如没有配置,获取当前销售点的默认服务费率';
COMMENT ON COLUMN "pms_dev"."pos_bill"."service_flg" IS ' 0-普通,1-强行';
COMMENT ON COLUMN "pms_dev"."pos_bill"."discount_rate" IS '开单时系统自动带入,先获取餐点的默认折扣率,如没有配置,获取当前销售点的默认折扣率';
COMMENT ON COLUMN "pms_dev"."pos_bill"."discount_flg" IS ' 0-普通,1-强行';
COMMENT ON COLUMN "pms_dev"."pos_bill"."after_print_page" IS '记录当前续打到了第几页';
COMMENT ON COLUMN "pms_dev"."pos_bill"."open_period" IS ' 系统定义 0-早餐,1-午餐,2-下午茶,3-晚餐,4-夜宵,5-其他';
COMMENT ON COLUMN "pms_dev"."pos_bill"."resv_open_period" IS ' 系统定义 0-早餐,1-午餐,2-下午茶,3-晚餐,4-夜宵,5-其他';
COMMENT ON COLUMN "pms_dev"."pos_bill"."close_period" IS ' 系统定义 0-早餐,1-午餐,2-下午茶,3-晚餐,4-夜宵,5-其他';
COMMENT ON COLUMN "pms_dev"."pos_bill"."resv_close_period" IS ' 系统定义 0-早餐,1-午餐,2-下午茶,3-晚餐,4-夜宵,5-其他';
COMMENT ON COLUMN "pms_dev"."pos_bill"."inside_uid" IS '通用代码配置表中定义
考虑到内部招待可以选择集团人员,则内部招待类型为集团统一定义';
COMMENT ON COLUMN "pms_dev"."pos_bill"."inside_memo" IS '餐饮事由-内部消费中选择,只记录描述信息';
COMMENT ON COLUMN "pms_dev"."pos_bill"."sys_memo" IS '用户不可编辑,由系统操作产生,操作描述信息
1-合并账单: 合并账单(作废方式合并) 合并到:XXX
2-作废账单:作废账单 作废原因:XXXX
3-恢复账单:恢复账单 恢复原因:XXXX';

-- ----------------------------
-- Records of pos_bill
-- ----------------------------
INSERT INTO "pms_dev"."pos_bill" VALUES ('1', '000000', '000001', '1', '301', '10000001', '301201702280001', '1', '0', null, '1', null, null, '0', null, null, null, '0', '0', null, null, null, null, null, '张三', '4IYPWtzIFs7j6gbOVvgdcA==', null, null, null, '1', '10', '699.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0.0000', '0', '0', '0', '0.0000', '1', null, null, null, null, null, null, null, null, null, null, null, '2017-02-27 11:01:30', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_bill" VALUES ('2', '000000', '000001', '2', '301', '10000002', '301201702280002', '1', '0', null, '1', null, null, '0', null, null, null, '0', '0', null, null, null, null, null, '李四', '4IYPWtzIFs7j6gbOVvgdcA==', null, null, null, '1', '8', '899.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0.0000', '0', null, '0', '0.0000', '1', null, null, null, null, null, null, null, null, null, null, null, '2017-02-27 11:01:30', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_bill" VALUES ('3', '000000', '000001', '3', '301', '10000003', '301201702280003', '1', '0', null, '1', null, null, '0', null, null, null, '0', '0', null, null, null, null, null, '王五', '4IYPWtzIFs7j6gbOVvgdcA==', null, null, null, '1', '16', '1530.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0.0000', '0', null, '0', '0.0000', '1', null, null, null, null, null, null, null, null, null, null, null, '2017-02-27 11:01:30', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_bill" VALUES ('4', '000000', '000001', '4', '301', '10000004', '301201702280004', '0', '0', null, '1', null, null, '0', null, null, null, '0', '0', null, null, null, null, null, '赵六', '4IYPWtzIFs7j6gbOVvgdcA==', null, null, null, '1', '10', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0.0000', '0', null, '0', '0.0000', '1', null, null, null, null, null, null, null, null, null, null, null, '2017-02-27 11:01:30', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_bill" VALUES ('5', '000000', '000001', '5', '301', '10000004', '301201702280005', '0', '0', null, '1', null, null, '0', null, null, null, '0', '0', null, null, null, null, null, '周九', '4IYPWtzIFs7j6gbOVvgdcA==', null, null, null, '1', '10', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0.0000', '0', null, '0', '0.0000', '1', null, null, null, null, null, null, null, null, null, null, null, '2017-02-27 11:01:30', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for pos_block
-- ----------------------------
DROP TABLE IF EXISTS "pms_dev"."pos_block";
CREATE TABLE "pms_dev"."pos_block" (
"id" int4 DEFAULT nextval('"pms_dev".pos_block_id_seq'::regclass) NOT NULL,
"block_id" int4 NOT NULL,
"sales_id" int4 NOT NULL,
"chain_uid" varchar(40) COLLATE "default" NOT NULL,
"unit_uid" varchar(40) COLLATE "default" NOT NULL,
"block_cd" varchar(20) COLLATE "default" NOT NULL,
"block_nm" varchar(100) COLLATE "default" NOT NULL,
"block_typ" int4,
"block_flg" varchar(1) COLLATE "default",
"seat_quant" int4 NOT NULL,
"display_area" int4,
"print_area" int4,
"service_area" int4,
"minimum_area" int4,
"display_flg" varchar(1) COLLATE "default" NOT NULL,
"valid_flg" varchar(1) COLLATE "default" NOT NULL,
"del_flg" varchar(1) COLLATE "default" NOT NULL,
"interim_flg" varchar(1) COLLATE "default" NOT NULL,
"block_seq" int4,
"created_by_uid" varchar(40) COLLATE "default",
"created_by_cd" varchar(100) COLLATE "default",
"created_by" varchar(50) COLLATE "default",
"created_date" timestamp(3),
"created_unit_uid" int4,
"created_unit_cd" varchar(100) COLLATE "default",
"modified_by_uid" varchar(40) COLLATE "default",
"modified_by_cd" varchar(100) COLLATE "default",
"modified_by" varchar(50) COLLATE "default",
"modified_date" timestamp(3),
"modified_unit_uid" int4,
"modified_unit_cd" varchar(100) COLLATE "default",
"version" int4,
"memo" varchar(4000) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pms_dev"."pos_block" IS '餐饮桌台定义';
COMMENT ON COLUMN "pms_dev"."pos_block"."unit_uid" IS '标识当前数据是集团或酒店录入的';
COMMENT ON COLUMN "pms_dev"."pos_block"."block_typ" IS '在通用代码配置表中定义';
COMMENT ON COLUMN "pms_dev"."pos_block"."block_flg" IS '0-桌台,1-包间,2-会议室,3-手牌,4-KTV';
COMMENT ON COLUMN "pms_dev"."pos_block"."display_area" IS '在通用代码配置表中定义';
COMMENT ON COLUMN "pms_dev"."pos_block"."print_area" IS '在通用代码配置表中定义';
COMMENT ON COLUMN "pms_dev"."pos_block"."service_area" IS '在通用代码配置表中定义';
COMMENT ON COLUMN "pms_dev"."pos_block"."minimum_area" IS '在通用代码配置表中定义';
COMMENT ON COLUMN "pms_dev"."pos_block"."display_flg" IS '0-隐藏,1-显示';
COMMENT ON COLUMN "pms_dev"."pos_block"."valid_flg" IS '0-无效,1-有效';
COMMENT ON COLUMN "pms_dev"."pos_block"."del_flg" IS '0-正常,1-删除';
COMMENT ON COLUMN "pms_dev"."pos_block"."interim_flg" IS '0-正常,1-临时
临时台不参与开台率计算,桌台总数,开台数计算';

-- ----------------------------
-- Records of pos_block
-- ----------------------------
INSERT INTO "pms_dev"."pos_block" VALUES ('1', '1', '301', '000000', '000001', '101', '101', '1', '0', '4', '2001', null, null, null, '1', '1', '0', '0', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_block" VALUES ('2', '2', '301', '000000', '000001', '102', '102', '1', '0', '4', '2001', null, null, null, '1', '1', '0', '0', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_block" VALUES ('3', '3', '301', '000000', '000001', '103', '103', '1', '0', '4', '2001', null, null, null, '1', '1', '0', '0', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_block" VALUES ('4', '4', '301', '000000', '000001', '104', '104', '1', '0', '4', '2001', null, null, null, '1', '1', '0', '0', '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_block" VALUES ('5', '5', '301', '000000', '000001', '105', '105', '1', '0', '4', '2001', null, null, null, '1', '1', '0', '0', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_block" VALUES ('6', '6', '301', '000000', '000001', '201', '201', '1', '0', '2', '2002', null, null, null, '1', '1', '0', '0', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_block" VALUES ('7', '7', '301', '000000', '000001', '202', '202', '1', '0', '2', '2002', null, null, null, '1', '1', '0', '0', '7', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_block" VALUES ('8', '8', '301', '000000', '000001', '203', '203', '1', '0', '2', '2002', null, null, null, '1', '1', '0', '0', '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_block" VALUES ('9', '9', '301', '000000', '000001', '204', '204', '1', '0', '2', '2002', null, null, null, '1', '1', '0', '0', '9', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_block" VALUES ('10', '10', '301', '000000', '000001', '205', '205', '1', '0', '2', '2002', null, null, null, '1', '1', '0', '0', '10', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_block" VALUES ('11', '11', '301', '000000', '000001', '301', '听涛阁', '2', '0', '20', '2003', null, null, null, '1', '1', '0', '0', '11', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_block" VALUES ('12', '12', '301', '000000', '000001', '302', '逐帆亭', '2', '0', '20', '2003', null, null, null, '1', '1', '0', '0', '12', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_block" VALUES ('13', '13', '301', '000000', '000001', '303', '望海楼', '2', '0', '20', '2003', null, null, null, '1', '1', '0', '0', '13', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_block" VALUES ('14', '14', '301', '000000', '000001', '304', '凌波轩', '2', '0', '10', '2004', null, null, null, '1', '1', '0', '0', '14', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_block" VALUES ('15', '15', '301', '000000', '000001', '305', '拾贝坊', '2', '0', '10', '2004', null, null, null, '1', '1', '0', '0', '15', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_block" VALUES ('16', '16', '301', '000000', '000001', '306', '采菱榭', '2', '0', '10', '2004', null, null, null, '1', '1', '0', '0', '16', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_block" VALUES ('17', '17', '301', '000000', '000001', '307', '御风堂', '2', '0', '10', '2004', null, null, null, '1', '1', '0', '0', '17', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_block" VALUES ('18', '18', '301', '000000', '000001', '308', '观澜厅', '2', '0', '5', '2005', null, null, null, '1', '1', '0', '0', '18', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_block" VALUES ('19', '19', '301', '000000', '000001', '309', '浣沙居', '2', '0', '5', '2005', null, null, null, '1', '1', '0', '0', '19', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_block" VALUES ('20', '20', '301', '000000', '000001', '401', '外卖', '1', '0', '10', '2006', null, null, null, '1', '1', '0', '1', '20', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_block" VALUES ('21', '21', '301', '000000', '000001', '402', '无效台', '1', '0', '10', '2006', null, null, null, '1', '0', '0', '0', '22', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_block" VALUES ('22', '22', '301', '000000', '000001', '403', '删除台', '1', '0', '10', '2006', null, null, null, '1', '1', '1', '0', '21', null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for pos_block_occupy
-- ----------------------------
DROP TABLE IF EXISTS "pms_dev"."pos_block_occupy";
CREATE TABLE "pms_dev"."pos_block_occupy" (
"id" int4 DEFAULT nextval('"pms_dev".pos_block_occupy_id_seq'::regclass) NOT NULL,
"occupy_id" int4,
"sales_id" int4 NOT NULL,
"chain_uid" varchar(40) COLLATE "default" NOT NULL,
"unit_uid" varchar(40) COLLATE "default" NOT NULL,
"relation_id" int4,
"block_id" int4,
"block_cd" varchar(20) COLLATE "default",
"occupy_flg" varchar(1) COLLATE "default",
"valid_flg" varchar(1) COLLATE "default" NOT NULL,
"open_by_uid" varchar(40) COLLATE "default",
"open_by_cd" varchar(100) COLLATE "default",
"open_by" varchar(50) COLLATE "default",
"open_date" timestamp(3),
"open_period" varchar(1) COLLATE "default",
"close_by_uid" varchar(40) COLLATE "default",
"close_by_cd" varchar(100) COLLATE "default",
"close_by" varchar(50) COLLATE "default",
"close_date" timestamp(3),
"close_period" varchar(1) COLLATE "default",
"version" int4,
"memo" varchar(4000) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pms_dev"."pos_block_occupy" IS '餐饮桌台占用记录';
COMMENT ON COLUMN "pms_dev"."pos_block_occupy"."unit_uid" IS '标识当前数据是集团或酒店录入的';
COMMENT ON COLUMN "pms_dev"."pos_block_occupy"."relation_id" IS '当OCCUPY_FLG为0,1时,存储账单标识
当OCCUPY_FLG为2,3时,存储维修锁台记录标识';
COMMENT ON COLUMN "pms_dev"."pos_block_occupy"."occupy_flg" IS '0-预订,1-开单,2-维修,3-锁台';
COMMENT ON COLUMN "pms_dev"."pos_block_occupy"."valid_flg" IS '0-无效,1-有效';
COMMENT ON COLUMN "pms_dev"."pos_block_occupy"."open_period" IS ' 系统定义 0-早餐,1-午餐,2-下午茶,3-晚餐,4-夜宵,5-其他';
COMMENT ON COLUMN "pms_dev"."pos_block_occupy"."close_period" IS ' 系统定义 0-早餐,1-午餐,2-下午茶,3-晚餐,4-夜宵,5-其他';

-- ----------------------------
-- Records of pos_block_occupy
-- ----------------------------
INSERT INTO "pms_dev"."pos_block_occupy" VALUES ('1', '1', '301', '000000', '000001', '1', '12', '302', '1', '1', null, null, null, '2017-02-27 11:01:30', '1', null, null, null, '2017-02-27 15:00:00', '1', null, null);
INSERT INTO "pms_dev"."pos_block_occupy" VALUES ('2', '2', '301', '000000', '000001', '2', '13', '303', '1', '1', null, null, null, '2017-02-27 11:01:30', '1', null, null, null, '2017-02-27 15:00:00', '1', null, null);
INSERT INTO "pms_dev"."pos_block_occupy" VALUES ('3', '3', '301', '000000', '000001', '3', '13', '303', '1', '1', null, null, null, '2017-02-27 11:01:30', '1', null, null, null, '2017-02-27 15:00:00', '1', null, null);
INSERT INTO "pms_dev"."pos_block_occupy" VALUES ('4', '4', '301', '000000', '000001', '4', '16', '306', '0', '1', null, null, null, '2017-02-28 11:01:30', '1', null, null, null, '2017-02-27 15:00:00', '1', null, null);
INSERT INTO "pms_dev"."pos_block_occupy" VALUES ('5', '5', '301', '000000', '000001', '5', '17', '307', '0', '1', null, null, null, '2017-02-28 11:01:30', '0', null, null, null, '2017-02-27 15:00:00', '0', null, null);

-- ----------------------------
-- Table structure for pos_period
-- ----------------------------
DROP TABLE IF EXISTS "pms_dev"."pos_period";
CREATE TABLE "pms_dev"."pos_period" (
"id" int4 DEFAULT nextval('"pms_dev".pos_period_id_seq'::regclass) NOT NULL,
"chain_uid" varchar(40) COLLATE "default" NOT NULL,
"unit_uid" varchar(40) COLLATE "default" NOT NULL,
"period_id" int4 NOT NULL,
"sales_id" int4 NOT NULL,
"period_cd" varchar(20) COLLATE "default" NOT NULL,
"period_nm" varchar(100) COLLATE "default" NOT NULL,
"period_flg" varchar(1) COLLATE "default" NOT NULL,
"valid_flg" varchar(1) COLLATE "default" NOT NULL,
"start_tm" varchar(10) COLLATE "default" NOT NULL,
"end_tm" varchar(10) COLLATE "default" NOT NULL,
"service_rate" numeric(12,4),
"service_flg" varchar(1) COLLATE "default",
"discount_rate" numeric(12,4),
"discount_flg" varchar(1) COLLATE "default",
"del_flg" varchar(1) COLLATE "default",
"tax_id" int4,
"tax_cd" varchar(20) COLLATE "default",
"tax_rate" numeric(12,4),
"created_by_uid" varchar(40) COLLATE "default",
"created_by_cd" varchar(100) COLLATE "default",
"created_by" varchar(50) COLLATE "default",
"created_date" timestamp(3),
"created_unit_uid" int4,
"created_unit_cd" varchar(100) COLLATE "default",
"modified_by_uid" varchar(40) COLLATE "default",
"modified_by_cd" varchar(100) COLLATE "default",
"modified_by" varchar(50) COLLATE "default",
"modified_date" timestamp(3),
"modified_unit_uid" int4,
"modified_unit_cd" varchar(100) COLLATE "default",
"version" int4,
"memo" varchar(4000) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pms_dev"."pos_period" IS '餐饮餐点配置';
COMMENT ON COLUMN "pms_dev"."pos_period"."unit_uid" IS '标识当前数据是集团或酒店录入的';
COMMENT ON COLUMN "pms_dev"."pos_period"."period_flg" IS ' 系统定义 0-早餐,1-午餐,2-下午茶,3-晚餐,4-夜宵,5-其他';
COMMENT ON COLUMN "pms_dev"."pos_period"."valid_flg" IS '0:无效 1:有效';
COMMENT ON COLUMN "pms_dev"."pos_period"."start_tm" IS '精度到分钟  HH:mm';
COMMENT ON COLUMN "pms_dev"."pos_period"."end_tm" IS '精度到分钟  HH:mm';
COMMENT ON COLUMN "pms_dev"."pos_period"."service_rate" IS '如餐点配置中未配置折扣、服务费则获取销售点中的默认服务费折扣';
COMMENT ON COLUMN "pms_dev"."pos_period"."service_flg" IS '0-普通,1-强行';
COMMENT ON COLUMN "pms_dev"."pos_period"."discount_rate" IS '如餐点配置中未配置折扣、服务费则获取销售点中的默认服务费折扣';
COMMENT ON COLUMN "pms_dev"."pos_period"."discount_flg" IS '0-普通,1-强行';
COMMENT ON COLUMN "pms_dev"."pos_period"."del_flg" IS '0-正常,1-删除';
COMMENT ON COLUMN "pms_dev"."pos_period"."tax_id" IS '税项标识';
COMMENT ON COLUMN "pms_dev"."pos_period"."tax_cd" IS '税项代码';
COMMENT ON COLUMN "pms_dev"."pos_period"."tax_rate" IS '税率';

-- ----------------------------
-- Records of pos_period
-- ----------------------------
INSERT INTO "pms_dev"."pos_period" VALUES ('1', '000000', '000001', '1', '301', '01', '早餐', '0', '1', '7:00', '10:00', '0.0000', '0', '0.0000', '0', '0', '0', '0', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_period" VALUES ('2', '000000', '000001', '2', '301', '02', '午餐', '1', '1', '11:00', '15:00', '0.0000', '0', '0.0000', '0', '0', '0', '0', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_period" VALUES ('4', '000000', '000001', '3', '301', '03', '晚餐', '3', '1', '17:00', '22:00', '0.0000', '0', '0.0000', '0', '0', '0', '0', '0.0000', '', null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for pos_sales
-- ----------------------------
DROP TABLE IF EXISTS "pms_dev"."pos_sales";
CREATE TABLE "pms_dev"."pos_sales" (
"id" int4 DEFAULT nextval('"pms_dev".pos_sales_id_seq'::regclass) NOT NULL,
"sales_id" int4 NOT NULL,
"chain_uid" varchar(40) COLLATE "default" NOT NULL,
"unit_uid" varchar(40) COLLATE "default" NOT NULL,
"sales_cd" varchar(20) COLLATE "default" NOT NULL,
"sales_nm" varchar(100) COLLATE "default" NOT NULL,
"sales_typ" varchar(1) COLLATE "default" NOT NULL,
"service_rate" numeric(12,4),
"service_flg" varchar(1) COLLATE "default",
"discount_rate" numeric(12,4),
"discount_flg" varchar(1) COLLATE "default",
"tax_id" int4,
"tax_cd" varchar(20) COLLATE "default",
"tax_rate" numeric(12,4),
"sales_seq" int4,
"auto_project_flg" varchar(1) COLLATE "default",
"max_person_num" int4,
"service_discount_flg" varchar(1) COLLATE "default" NOT NULL,
"valid_flg" varchar(1) COLLATE "default" NOT NULL,
"acct_id" int4,
"acct_cd" varchar(40) COLLATE "default",
"created_by_uid" varchar(40) COLLATE "default",
"created_by_cd" varchar(100) COLLATE "default",
"created_by" varchar(50) COLLATE "default",
"created_date" timestamp(3),
"created_unit_uid" int4,
"created_unit_cd" varchar(100) COLLATE "default",
"modified_by_uid" varchar(40) COLLATE "default",
"modified_by_cd" varchar(100) COLLATE "default",
"modified_by" varchar(50) COLLATE "default",
"modified_date" timestamp(3),
"modified_unit_uid" int4,
"modified_unit_cd" varchar(100) COLLATE "default",
"version" int4,
"memo" varchar(4000) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pms_dev"."pos_sales" IS '餐饮销售点';
COMMENT ON COLUMN "pms_dev"."pos_sales"."unit_uid" IS '标识当前数据是集团或酒店录入的';
COMMENT ON COLUMN "pms_dev"."pos_sales"."sales_typ" IS '0-餐饮,1-会议室,2-康乐, 3-桑拿,4-商务中心,5-商场,6-洗衣,7-多功能厅';
COMMENT ON COLUMN "pms_dev"."pos_sales"."service_flg" IS '0-普通,1-强行';
COMMENT ON COLUMN "pms_dev"."pos_sales"."discount_flg" IS '0-普通,1-强行';
COMMENT ON COLUMN "pms_dev"."pos_sales"."tax_id" IS '税金项目标识';
COMMENT ON COLUMN "pms_dev"."pos_sales"."tax_cd" IS '税金项目代码';
COMMENT ON COLUMN "pms_dev"."pos_sales"."tax_rate" IS '税率';
COMMENT ON COLUMN "pms_dev"."pos_sales"."auto_project_flg" IS '0-使用桌台类型控制自动入账项目,1-使用预订区域控制自动入账项目';
COMMENT ON COLUMN "pms_dev"."pos_sales"."service_discount_flg" IS '0-服务费不参与折扣,1-服务费参与折扣';
COMMENT ON COLUMN "pms_dev"."pos_sales"."valid_flg" IS '0-无效,1-有效';
COMMENT ON COLUMN "pms_dev"."pos_sales"."acct_id" IS '销售点关联的前台账户,用于挂入现付统计收入';

-- ----------------------------
-- Records of pos_sales
-- ----------------------------
INSERT INTO "pms_dev"."pos_sales" VALUES ('1', '301', '000000', '000001', '301', '中餐厅', '0', '0.0000', '0', '0.0000', '0', '0', '0', '0.0000', '1', '0', '500', '0', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_sales" VALUES ('4', '302', '000000', '000001', '302', '西餐厅', '0', '0.0000', '0', '0.0000', '0', '0', '0', '0.0000', '2', '0', '200', '0', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_sales" VALUES ('6', '303', '000000', '000001', '303', '宴会厅', '1', '0.0000', '0', '0.0000', '0', '0', '0', '0.0000', '3', '0', '500', '0', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_sales" VALUES ('7', '304', '000000', '000001', '304', '羽毛球馆', '2', '0.0000', '0', '0.0000', '0', '0', '0', '0.0000', '4', '0', '30', '0', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "pms_dev"."pos_sales" VALUES ('10', '305', '000000', '000001', '305', '网球中心', '2', '0.0000', '0', '0.0000', '0', '0', '0', '0.0000', '5', '0', '20', '0', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for pos_work
-- ----------------------------
DROP TABLE IF EXISTS "pms_dev"."pos_work";
CREATE TABLE "pms_dev"."pos_work" (
"id" int4 DEFAULT nextval('"pms_dev".pos_work_id_seq'::regclass) NOT NULL,
"work_id" int4 NOT NULL,
"chain_uid" varchar(40) COLLATE "default" NOT NULL,
"unit_uid" varchar(40) COLLATE "default" NOT NULL,
"sales_id" int4 NOT NULL,
"period_id" int4 NOT NULL,
"period_cd" varchar(20) COLLATE "default" NOT NULL,
"period_flg" varchar(1) COLLATE "default" NOT NULL,
"htl_date" timestamp(3),
"current_flg" varchar(1) COLLATE "default" NOT NULL,
"last_bill_num" int4,
"last_bill_amount" numeric(12,4),
"next_bill_num" int4,
"next_bill_amount" numeric(12,4),
"created_by_uid" varchar(40) COLLATE "default",
"created_by_cd" varchar(100) COLLATE "default",
"created_by" varchar(50) COLLATE "default",
"created_date" timestamp(3),
"created_unit_uid" int4,
"created_unit_cd" varchar(100) COLLATE "default",
"modified_by_uid" varchar(40) COLLATE "default",
"modified_by_cd" varchar(100) COLLATE "default",
"modified_by" varchar(50) COLLATE "default",
"modified_date" timestamp(3),
"modified_unit_uid" int4,
"modified_unit_cd" varchar(100) COLLATE "default",
"version" int4,
"memo" varchar(500) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "pms_dev"."pos_work" IS '餐饮交接班';
COMMENT ON COLUMN "pms_dev"."pos_work"."id" IS 'ID ';
COMMENT ON COLUMN "pms_dev"."pos_work"."work_id" IS '标识 ';
COMMENT ON COLUMN "pms_dev"."pos_work"."chain_uid" IS '集团标识 ';
COMMENT ON COLUMN "pms_dev"."pos_work"."unit_uid" IS '酒店(单位)标识 标识当前数据是集团或酒店录入的';
COMMENT ON COLUMN "pms_dev"."pos_work"."sales_id" IS '销售点代码 ';
COMMENT ON COLUMN "pms_dev"."pos_work"."period_id" IS '当前餐点标识 ';
COMMENT ON COLUMN "pms_dev"."pos_work"."period_cd" IS '当前餐点代码 ';
COMMENT ON COLUMN "pms_dev"."pos_work"."period_flg" IS '餐点控制位 系统定义 0-早餐,1-午餐,2-下午茶,3-晚餐,4-夜宵,5-其他';
COMMENT ON COLUMN "pms_dev"."pos_work"."htl_date" IS '营业日期 酒店日期';
COMMENT ON COLUMN "pms_dev"."pos_work"."current_flg" IS '当前标识 当前标识 0-否,1-是';
COMMENT ON COLUMN "pms_dev"."pos_work"."last_bill_num" IS '接上班未结单数 ';
COMMENT ON COLUMN "pms_dev"."pos_work"."last_bill_amount" IS '接上班未结金额 ';
COMMENT ON COLUMN "pms_dev"."pos_work"."next_bill_num" IS '交下班未结单数 ';
COMMENT ON COLUMN "pms_dev"."pos_work"."next_bill_amount" IS '交下班未结金额 ';
COMMENT ON COLUMN "pms_dev"."pos_work"."created_by_uid" IS '创建人标识 ';
COMMENT ON COLUMN "pms_dev"."pos_work"."created_by_cd" IS '创建人代码 ';
COMMENT ON COLUMN "pms_dev"."pos_work"."created_by" IS '创建人 ';
COMMENT ON COLUMN "pms_dev"."pos_work"."created_date" IS '创建日期 ';
COMMENT ON COLUMN "pms_dev"."pos_work"."created_unit_uid" IS '创建人所属单位标识 ';
COMMENT ON COLUMN "pms_dev"."pos_work"."created_unit_cd" IS '创建人所属单位代码 ';
COMMENT ON COLUMN "pms_dev"."pos_work"."modified_by_uid" IS '修改人标识 ';
COMMENT ON COLUMN "pms_dev"."pos_work"."modified_by_cd" IS '修改人代码 ';
COMMENT ON COLUMN "pms_dev"."pos_work"."modified_by" IS '修改人 ';
COMMENT ON COLUMN "pms_dev"."pos_work"."modified_date" IS '修改日期 ';
COMMENT ON COLUMN "pms_dev"."pos_work"."modified_unit_uid" IS '修改人所属单位标识 ';
COMMENT ON COLUMN "pms_dev"."pos_work"."modified_unit_cd" IS '修改人所属单位代码 ';
COMMENT ON COLUMN "pms_dev"."pos_work"."version" IS '版本号 ';
COMMENT ON COLUMN "pms_dev"."pos_work"."memo" IS '备注 ';

-- ----------------------------
-- Records of pos_work
-- ----------------------------
INSERT INTO "pms_dev"."pos_work" VALUES ('1', '1', '000000', '000001', '301', '2', '02', '1', '2017-02-28 18:23:36', '1', '0', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table cmm_number
-- ----------------------------
ALTER TABLE "pms_dev"."cmm_number" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cmm_pos_param
-- ----------------------------
ALTER TABLE "pms_dev"."cmm_pos_param" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cmm_pos_param_multilang
-- ----------------------------
ALTER TABLE "pms_dev"."cmm_pos_param_multilang" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table hpt_hk_room_feature
-- ----------------------------
ALTER TABLE "pms_dev"."hpt_hk_room_feature" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table hpt_hk_room_repair
-- ----------------------------
ALTER TABLE "pms_dev"."hpt_hk_room_repair" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table hpt_pms_room
-- ----------------------------
ALTER TABLE "pms_dev"."hpt_pms_room" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table hpt_pms_room_combo
-- ----------------------------
ALTER TABLE "pms_dev"."hpt_pms_room_combo" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table hpt_pms_roomtype
-- ----------------------------
ALTER TABLE "pms_dev"."hpt_pms_roomtype" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table pathman_config
-- ----------------------------
ALTER TABLE "pms_dev"."pathman_config" ADD CHECK ((parttype = ANY (ARRAY[1, 2])));

-- ----------------------------
-- Primary Key structure for table pathman_config
-- ----------------------------
ALTER TABLE "pms_dev"."pathman_config" ADD PRIMARY KEY ("partrel");

-- ----------------------------
-- Triggers structure for table pathman_config_params
-- ----------------------------
CREATE TRIGGER "pathman_config_params_trigger" BEFORE INSERT OR UPDATE OR DELETE ON "pms_dev"."pathman_config_params"
FOR EACH ROW
EXECUTE PROCEDURE "pms_dev"."pathman_config_params_trigger_func"();

-- ----------------------------
-- Checks structure for table pathman_config_params
-- ----------------------------
ALTER TABLE "pms_dev"."pathman_config_params" ADD CHECK (validate_part_callback((init_callback)::regproc));

-- ----------------------------
-- Primary Key structure for table pathman_config_params
-- ----------------------------
ALTER TABLE "pms_dev"."pathman_config_params" ADD PRIMARY KEY ("partrel");

-- ----------------------------
-- Primary Key structure for table plf_cmm_config
-- ----------------------------
ALTER TABLE "pms_dev"."plf_cmm_config" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table plf_cmm_config_multilang
-- ----------------------------
ALTER TABLE "pms_dev"."plf_cmm_config_multilang" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table plf_cmm_parameter
-- ----------------------------
ALTER TABLE "pms_dev"."plf_cmm_parameter" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pos_bill
-- ----------------------------
ALTER TABLE "pms_dev"."pos_bill" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pos_block
-- ----------------------------
ALTER TABLE "pms_dev"."pos_block" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pos_block_occupy
-- ----------------------------
ALTER TABLE "pms_dev"."pos_block_occupy" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pos_period
-- ----------------------------
ALTER TABLE "pms_dev"."pos_period" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pos_sales
-- ----------------------------
ALTER TABLE "pms_dev"."pos_sales" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pos_work
-- ----------------------------
ALTER TABLE "pms_dev"."pos_work" ADD PRIMARY KEY ("id");
