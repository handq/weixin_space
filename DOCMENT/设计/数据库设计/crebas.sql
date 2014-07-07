/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2014/6/27 17:34:18                           */
/*==============================================================*/


drop table if exists B_MENU;

drop table if exists B_ONLINE;

drop table if exists B_ORDER;

drop table if exists T_COMPANY;

drop table if exists T_COMPANY_RELATION;

drop table if exists T_MESSAGE_BOARD;

drop table if exists T_NOTICE;

drop table if exists T_SHOP;

drop table if exists T_USER;

drop table if exists T_USER_MENU;

drop table if exists T_effect;

/*==============================================================*/
/* Table: B_MENU                                                */
/*==============================================================*/
create table B_MENU
(
   ID                   VARCHAR(255) not null,
   M_NAME               VARCHAR(64),
   M_CODE               VARCHAR(64),
   M_DISCRIPTION        VARCHAR(255),
   M_IMG_LINK           VARCHAR(64),
   M_DISCOUNT_DIS       VARCHAR(255),
   M_PRICE              double(10,5),
   M_DICCOUNT_PRICE     double(10,5),
   M_DICOUNT_INFO       VARCHAR(255),
   M_UPDATETIME         DATE,
   M_UPDATEUSER         VARCHAR(64),
   M_SID                VARCHAR(255),
   primary key (ID)
);

/*==============================================================*/
/* Table: B_ONLINE                                              */
/*==============================================================*/
create table B_ONLINE
(
   ID                   VARCHAR(255) not null,
   O_USERNAME           VARCHAR(64),
   O_PHONE              VARCHAR(64),
   O_PRETIME            datetime,
   O_USERNO             INT(10),
   O_HORSE_TYPE         VARCHAR(64),
   O_HORSE_NO           INT(10),
   O_ARRIVE_DATE        DATE,
   O_LEAVE_DATE         DATE,
   O_DESC               VARCHAR(255),
   primary key (ID)
);

/*==============================================================*/
/* Table: B_ORDER                                               */
/*==============================================================*/
create table B_ORDER
(
   ID                   VARCHAR(255),
   ORDER_CODE           VARCHAR(64),
   ORDER_DATE           datetime,
   ORDER_SALES          VARCHAR(255),
   ORDER_PRICE          double(10,5),
   ORDER-STATE        INT(10)
);

/*==============================================================*/
/* Table: T_COMPANY                                             */
/*==============================================================*/
create table T_COMPANY
(
   ID                   varchar(255) not null,
   C_NAME               varchar(255),
   C_DESC               varchar(500),
   C_ADDRESS            varchar(255),
   C_INFOMATION         varchar(64),
   C_CODE               varchar(64),
   C_LINK               varchar(64),
   C_UPDATIME           datetime,
   C_UPDATEUSER         varchar(255),
   C_FAX                varchar(64),
   C_EMAIL              varchar(64),
   C_LOCATION           varchar(64),
   C_BUSLINE            varchar(64),
   primary key (ID)
);

/*==============================================================*/
/* Table: T_COMPANY_RELATION                                    */
/*==============================================================*/
create table T_COMPANY_RELATION
(
   ID                   VARCHAR(255) not null,
   CR_name              varchar(64),
   CR_CODE              varchar(64),
   CR_VALUE             varchar(64),
   CR_UPDATEDATE        datetime,
   fk_C_COMID           VARCHAR(255),
   primary key (ID)
);

/*==============================================================*/
/* Table: T_MESSAGE_BOARD                                       */
/*==============================================================*/
create table T_MESSAGE_BOARD
(
   ID                   varchar(255) not null,
   M_CONTENT            varchar(255),
   M_DATE               datetime,
   M_USERNAME           VARCHAR(64),
   M_OPENID             varchar(255),
   M_TYPE               int(10),
   FK_M_ID              varchar(255),
   primary key (ID)
);

/*==============================================================*/
/* Table: T_NOTICE                                              */
/*==============================================================*/
create table T_NOTICE
(
   ID                   VARCHAR(255) not null,
   S_TITLE              VARCHAR(64),
   S_CODE               VARCHAR(64),
   S_CONTENT            VARCHAR(500),
   S_STATE              int(10),
   S_CREATETIME         datetime,
   S_CREATUER           VARCHAR(255),
   S_LINK               VARCHAR(64),
   S_CID                VARCHAR(255),
   primary key (ID)
);

/*==============================================================*/
/* Table: T_SHOP                                                */
/*==============================================================*/
create table T_SHOP
(
   ID                   VARCHAR(255) not null,
   S_IMGLINK            VARCHAR(64),
   S_NOTICE             VARCHAR(500),
   S_STATE              VARCHAR(64),
   S_TYPE               VARCHAR(64),
   S_OPENINGTIME        VARCHAR(64),
   S_SERVICE_AREA       VARCHAR(64),
   S_DISTRIBUTION_AREA  VARCHAR(64),
   S_PREDATE_RELATION   VARCHAR(64),
   S_LOCATION           VARCHAR(64),
   S_DESC               VARCHAR(255),
   S_CID                VARCHAR(255),
   S_UPDATEDATE         datetime,
   S_UPDATEUSER         VARCHAR(64),
   primary key (ID)
);

/*==============================================================*/
/* Table: T_USER                                                */
/*==============================================================*/
create table T_USER
(
   ID                   VARCHAR(255) not null,
   U_NAME               VARCHAR(64),
   U_OPENID             VARCHAR(64),
   U_WEIXINNO           VARCHAR(64),
   U_phone              VARCHAR(64),
   U_EMAIL              VARCHAR(64),
   U_UPDATETIME         datetime,
   primary key (ID)
);

/*==============================================================*/
/* Table: T_USER_MENU                                           */
/*==============================================================*/
create table T_USER_MENU
(
   ID                   VARCHAR(255) not null,
   USERMENU_NAME        VARCHAR(64),
   USERMENU_CODE        VARCHAR(64),
   USERMENU_LEVE        INT(10),
   USERMENU_TYPE        VARCHAR(64),
   FK_UMID              VARCHAR(255),
   primary key (ID)
);

/*==============================================================*/
/* Table: T_effect                                              */
/*==============================================================*/
create table T_effect
(
   ID                   VARCHAR(255) not null,
   E_NAME               VARCHAR(64),
   E_CODE               VARCHAR(64),
   E_LINK               VARCHAR(64),
   E_CONTENT            TEXT,
   E_DESC               VARCHAR(255),
   E_USERNAME           VARCHAR(64),
   E_UPDATETIME         datetime,
   FK_E_COMID           VARCHAR(255),
   primary key (ID)
);

alter table B_MENU add constraint FK_Reference_5 foreign key (M_SID)
      references T_SHOP (ID) on delete restrict on update restrict;

alter table T_COMPANY_RELATION add constraint FK_Reference_1 foreign key (fk_C_COMID)
      references T_COMPANY (ID) on delete restrict on update restrict;

alter table T_NOTICE add constraint FK_Reference_4 foreign key (S_CID)
      references T_COMPANY (ID) on delete restrict on update restrict;

alter table T_SHOP add constraint FK_Reference_3 foreign key (S_CID)
      references T_COMPANY (ID) on delete restrict on update restrict;

alter table T_effect add constraint FK_Reference_2 foreign key (FK_E_COMID)
      references T_COMPANY (ID) on delete restrict on update restrict;

