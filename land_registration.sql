CREATE TABLE landregisteruser(
     name varchar2(30),
     address varchar2(10),
     mobile_no varchar2(10),
     email_id varchar2(100)
);
CREATE TABLE landregister(
     place varchar2(30),
    payment varchar2(10)
   );
CREATE TABLE landregisterusage(
     residential varchar2(30),
    commercial varchar2(10)
   );
CREATE OR REPLACE PROCEDURE insertion(
 name varchar2(30),
     address varchar2(10),
     mobile_no varchar2(10),
     email_id varchar2(100),
    place varchar2(30),
    payment varchar2(10),
   residential varchar2(30),
    commercial varchar2(10)
)IS
BEGIN
INSERT INTO landregisteruser VALUES(name,address ,mobile_no ,email_id );
INSERT INTO landregister VALUES( place,payment );
INSERT INTO landregisterusage VALUES(residential ,commercial );
COMMIT;
END;
CREATE OR REPLACE FUNCTION l_check(
  email varchar2
  
) RETURN number IS rn number;

BEGIN
SELECT COUNT(*) INTO rn FROM register WHERE email_id=email ;
IF rn>0 THEN
   RETURN 1;
ELSE
   RETURN 0;
END IF;
END;
CREATE OR REPLACE FUNCTION 2_check(
  mobile_no
) RETURN number IS rn number;

BEGIN
SELECT COUNT(*) INTO rn FROM register WHERE mobile_no=number;
IF rn>0 THEN
   RETURN 1;
ELSE
   RETURN 0;
END IF;
END;
CREATE OR REPLACE FUNCTION 3_check(
  address
) RETURN number IS rn number;

BEGIN
SELECT COUNT(*) INTO rn FROM register WHERE address=address;
IF rn>0 THEN
   RETURN 1;
ELSE
   RETURN 0;
END IF;
END;

