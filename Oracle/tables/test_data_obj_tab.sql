CREATE GLOBAL TEMPORARY TABLE "TEST_MK2"."TEST_DATA_OBJ_TAB" 
   (	"TEST_ID" NUMBER, 
	"TEST_NAME" VARCHAR2(100), 
	"TEST_DATA" "TEST_MK2"."TEST_DATA_OBJ" 
   ) ON COMMIT DELETE ROWS ;
  ALTER TABLE "TEST_MK2"."TEST_DATA_OBJ_TAB" ADD PRIMARY KEY ("TEST_ID") ENABLE;
CREATE UNIQUE INDEX "TEST_MK2"."SYS_C0021150" ON "TEST_MK2"."TEST_DATA_OBJ_TAB" ("TEST_ID") ;
