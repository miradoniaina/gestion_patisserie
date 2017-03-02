/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     01/03/2017 09:29:46                          */
/*==============================================================*/


drop index CATEGORIE_PK;

drop table CATEGORIE CASCADE;

drop index COMMANDE_UTILISATEUR_FK;

drop index COMMANDE_PK;

drop table COMMANDE CASCADE;

drop index ENTREE_INGREDIENT_FK;

drop index ENTREE_PK;

drop table ENTREE CASCADE;

drop index RECETTE_EN_VITRINE_FK;

drop index EN_VITRINE_PK;

drop table EN_VITRINE CASCADE;

drop index INGREDIENT_PK;

drop table INGREDIENT CASCADE;

drop index RECETTE_CATEGORIE_FK;

drop index RECETTE_PK;

drop table RECETTE CASCADE;

drop index RECETTE_INGREDIENT2_FK;

drop index RECETTE_INGREDIENT_FK;

drop index RECETTE_INGREDIENT_PK;

drop table RECETTE_INGREDIENT;

drop index SORTIE_INGREDIENT_FK;

drop index SORTIE_PK;

drop table SORTIE CASCADE;

drop index COMMANDE_SOUS_COMMANDE_FK;

drop index SOUS_COMMANDE_PK;

drop table SOUS_COMMANDE CASCADE;

drop index UTILISATEUR_PK;

drop table UTILISATEUR CASCADE;

/*==============================================================*/
/* Table: CATEGORIE                                             */
/*==============================================================*/
create table CATEGORIE (
   ID_CATEG             SERIAL               not null,
   NOM_CATEG            VARCHAR(50)          null,
   constraint PK_CATEGORIE primary key (ID_CATEG)
);

/*==============================================================*/
/* Index: CATEGORIE_PK                                          */
/*==============================================================*/
create unique index CATEGORIE_PK on CATEGORIE (
ID_CATEG
);

/*==============================================================*/
/* Table: COMMANDE                                              */
/*==============================================================*/
create table COMMANDE (
   ID_COMMANDE          SERIAL               not null,
   ID_UTILISATEUR       INT4                 not null,
   REF_COMMANDE         VARCHAR(100)         null,
   DATE_COMMANDE        DATE                 null,
   constraint PK_COMMANDE primary key (ID_COMMANDE)
);

/*==============================================================*/
/* Index: COMMANDE_PK                                           */
/*==============================================================*/
create unique index COMMANDE_PK on COMMANDE (
ID_COMMANDE
);

/*==============================================================*/
/* Index: COMMANDE_UTILISATEUR_FK                               */
/*==============================================================*/
create  index COMMANDE_UTILISATEUR_FK on COMMANDE (
ID_UTILISATEUR
);

/*==============================================================*/
/* Table: ENTREE                                                */
/*==============================================================*/
create table ENTREE (
   ID_ENTREE            SERIAL               not null,
   ID_INGREDIENT        INT4                 not null,
   QTE                  INT4                 null,
   DATE_ENTREE          DATE                 null,
   UNITE                VARCHAR(10)          null,
   constraint PK_ENTREE primary key (ID_ENTREE)
);

/*==============================================================*/
/* Index: ENTREE_PK                                             */
/*==============================================================*/
create unique index ENTREE_PK on ENTREE (
ID_ENTREE
);

/*==============================================================*/
/* Index: ENTREE_INGREDIENT_FK                                  */
/*==============================================================*/
create  index ENTREE_INGREDIENT_FK on ENTREE (
ID_INGREDIENT
);

/*==============================================================*/
/* Table: EN_VITRINE                                            */
/*==============================================================*/
create table EN_VITRINE (
   ID_EN_VITRINE        SERIAL               not null,
   ID_RECETTE           INT4                 not null,
   QTE                  INT4                 null,
   SEUIL_MIN            INT4                 null,
   SEUIL_MAX            INT4                 null,
   DATE_DU_JOUR         DATE                 null,
   constraint PK_EN_VITRINE primary key (ID_EN_VITRINE)
);

/*==============================================================*/
/* Index: EN_VITRINE_PK                                         */
/*==============================================================*/
create unique index EN_VITRINE_PK on EN_VITRINE (
ID_EN_VITRINE
);

/*==============================================================*/
/* Index: RECETTE_EN_VITRINE_FK                                 */
/*==============================================================*/
create  index RECETTE_EN_VITRINE_FK on EN_VITRINE (
ID_RECETTE
);

/*==============================================================*/
/* Table: INGREDIENT                                            */
/*==============================================================*/
create table INGREDIENT (
   ID_INGREDIENT        SERIAL               not null,
   NOM_INGREDIENT       VARCHAR(50)          null,
   SEUIL_MIN            INT4                 null,
   SEUIL_MAX            INT4                 null,
   UNITE                VARCHAR(10)          null,
   constraint PK_INGREDIENT primary key (ID_INGREDIENT)
);

/*==============================================================*/
/* Index: INGREDIENT_PK                                         */
/*==============================================================*/
create unique index INGREDIENT_PK on INGREDIENT (
ID_INGREDIENT
);

/*==============================================================*/
/* Table: RECETTE                                               */
/*==============================================================*/
create table RECETTE (
   ID_RECETTE           SERIAL               not null,
   ID_CATEG             INT4                 not null,
   NOM_RECETTE          VARCHAR(50)          null,
   PRIX_ACTUEL          INT4                 null,
   constraint PK_RECETTE primary key (ID_RECETTE)
);

/*==============================================================*/
/* Index: RECETTE_PK                                            */
/*==============================================================*/
create unique index RECETTE_PK on RECETTE (
ID_RECETTE
);

/*==============================================================*/
/* Index: RECETTE_CATEGORIE_FK                                  */
/*==============================================================*/
create  index RECETTE_CATEGORIE_FK on RECETTE (
ID_CATEG
);

/*==============================================================*/
/* Table: RECETTE_INGREDIENT                                    */
/*==============================================================*/
create table RECETTE_INGREDIENT (
   ID_RECETTE           INT4                 not null,
   ID_INGREDIENT        INT4                 not null,
   QTE_INGREDIENT       INT4                 null,
   constraint PK_RECETTE_INGREDIENT primary key (ID_RECETTE, ID_INGREDIENT)
);

/*==============================================================*/
/* Index: RECETTE_INGREDIENT_PK                                 */
/*==============================================================*/
create unique index RECETTE_INGREDIENT_PK on RECETTE_INGREDIENT (
ID_RECETTE,
ID_INGREDIENT
);

/*==============================================================*/
/* Index: RECETTE_INGREDIENT_FK                                 */
/*==============================================================*/
create  index RECETTE_INGREDIENT_FK on RECETTE_INGREDIENT (
ID_RECETTE
);

/*==============================================================*/
/* Index: RECETTE_INGREDIENT2_FK                                */
/*==============================================================*/
create  index RECETTE_INGREDIENT2_FK on RECETTE_INGREDIENT (
ID_INGREDIENT
);

/*==============================================================*/
/* Table: SORTIE                                                */
/*==============================================================*/
create table SORTIE (
   ID_SORTIE            SERIAL               not null,
   ID_INGREDIENT        INT4                 not null,
   QTE                  INT4                 null,
   DATE_SORITE          DATE                 null,
   UNITE                VARCHAR(10)          null,
   constraint PK_SORTIE primary key (ID_SORTIE)
);

/*==============================================================*/
/* Index: SORTIE_PK                                             */
/*==============================================================*/
create unique index SORTIE_PK on SORTIE (
ID_SORTIE
);

/*==============================================================*/
/* Index: SORTIE_INGREDIENT_FK                                  */
/*==============================================================*/
create  index SORTIE_INGREDIENT_FK on SORTIE (
ID_INGREDIENT
);

/*==============================================================*/
/* Table: SOUS_COMMANDE                                         */
/*==============================================================*/
create table SOUS_COMMANDE (
   ID_SOUS_COMMANDE     SERIAL               not null,
   ID_RECETTE           INT4                 not null,
   ID_COMMANDE          INT4                 not null,
   QTE                  INT4                 null,
   constraint PK_SOUS_COMMANDE primary key (ID_SOUS_COMMANDE)
);

/*==============================================================*/
/* Index: SOUS_COMMANDE_PK                                      */
/*==============================================================*/
create unique index SOUS_COMMANDE_PK on SOUS_COMMANDE (
ID_SOUS_COMMANDE
);

/*==============================================================*/
/* Index: COMMANDE_SOUS_COMMANDE_FK                             */
/*==============================================================*/
create  index COMMANDE_SOUS_COMMANDE_FK on SOUS_COMMANDE (
ID_COMMANDE
);

/*==============================================================*/
/* Table: UTILISATEUR                                           */
/*==============================================================*/
create table UTILISATEUR (
   ID_UTILISATEUR       SERIAL               not null,
   NOM                  VARCHAR(50)          null,
   MDP                  VARCHAR(50)          null,
   constraint PK_UTILISATEUR primary key (ID_UTILISATEUR)
);

/*==============================================================*/
/* Index: UTILISATEUR_PK                                        */
/*==============================================================*/
create unique index UTILISATEUR_PK on UTILISATEUR (
ID_UTILISATEUR
);

alter table COMMANDE
   add constraint FK_COMMANDE_COMMANDE__UTILISAT foreign key (ID_UTILISATEUR)
      references UTILISATEUR (ID_UTILISATEUR)
      on delete restrict on update restrict;

alter table ENTREE
   add constraint FK_ENTREE_ENTREE_IN_INGREDIE foreign key (ID_INGREDIENT)
      references INGREDIENT (ID_INGREDIENT)
      on delete restrict on update restrict;

alter table EN_VITRINE
   add constraint FK_EN_VITRI_RECETTE_E_RECETTE foreign key (ID_RECETTE)
      references RECETTE (ID_RECETTE)
      on delete restrict on update restrict;

alter table RECETTE
   add constraint FK_RECETTE_RECETTE_C_CATEGORI foreign key (ID_CATEG)
      references CATEGORIE (ID_CATEG)
      on delete restrict on update restrict;

alter table RECETTE_INGREDIENT
   add constraint FK_RECETTE__RECETTE_I_RECETTE foreign key (ID_RECETTE)
      references RECETTE (ID_RECETTE)
      on delete restrict on update restrict;

alter table RECETTE_INGREDIENT
   add constraint FK_RECETTE__RECETTE_I_INGREDIE foreign key (ID_INGREDIENT)
      references INGREDIENT (ID_INGREDIENT)
      on delete restrict on update restrict;

alter table SORTIE
   add constraint FK_SORTIE_SORTIE_IN_INGREDIE foreign key (ID_INGREDIENT)
      references INGREDIENT (ID_INGREDIENT)
      on delete restrict on update restrict;

alter table SOUS_COMMANDE
   add constraint FK_SOUS_COM_COMMANDE__COMMANDE foreign key (ID_COMMANDE)
      references COMMANDE (ID_COMMANDE)
      on delete restrict on update restrict;

alter table SOUS_COMMANDE
   add constraint FK_SOUS_COM_RECETTE_S_RECETTE foreign key (ID_RECETTE)
      references RECETTE (ID_RECETTE)
      on delete restrict on update restrict;

