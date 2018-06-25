DROP TABLE BONUS;
DROP TABLE EMP;
DROP TABLE DEPT;
DROP TABLE SALGRADE; 

CREATE TABLE BONUS
        (ENAME VARCHAR2(10),
         JOB   VARCHAR2(9),
         SAL   NUMBER,
         COMM  NUMBER);

CREATE TABLE EMP
       (EMPNO NUMBER(4) NOT NULL,
        ENAME VARCHAR2(10),
        JOB VARCHAR2(9),
        MGR NUMBER(4),
        HIREDATE DATE,
        SAL NUMBER(7, 2),
        COMM NUMBER(7, 2),
        DEPTNO NUMBER(2));

INSERT INTO EMP VALUES
        (7369, 'SMITH',  'CLERK',     7902,
        TO_DATE('17-12-1980', 'DD-MM-YYYY'),  800, NULL, 20);
INSERT INTO EMP VALUES
        (7499, 'ALLEN',  'SALESMAN',  7698,
        TO_DATE('20-02-1981', 'DD-MM-YYYY'), 1600,  300, 30);
INSERT INTO EMP VALUES
        (7521, 'WARD',   'SALESMAN',  7698,
        TO_DATE('22-02-1981', 'DD-MM-YYYY'), 1250,  500, 30);
INSERT INTO EMP VALUES
        (7566, 'JONES',  'MANAGER',   7839,
        TO_DATE('2-04-1981', 'DD-MM-YYYY'),  2975, NULL, 20);
INSERT INTO EMP VALUES
        (7654, 'MARTIN', 'SALESMAN',  7698,
        TO_DATE('28-09-1981', 'DD-MM-YYYY'), 1250, 1400, 30);
INSERT INTO EMP VALUES
        (7698, 'BLAKE',  'MANAGER',   7839,
        TO_DATE('1-05-1981', 'DD-MM-YYYY'),  2850, NULL, 30);
INSERT INTO EMP VALUES
        (7782, 'CLARK',  'MANAGER',   7839,
        TO_DATE('9-06-1981', 'DD-MM-YYYY'),  2450, NULL, 10);
INSERT INTO EMP VALUES
        (7788, 'SCOTT',  'ANALYST',   7566,
        TO_DATE('09-12-1982', 'DD-MM-YYYY'), 3000, NULL, 20);
INSERT INTO EMP VALUES
        (7839, 'KING',   'PRESIDENT', NULL,
        TO_DATE('17-11-1981', 'DD-MM-YYYY'), 5000, NULL, 10);
INSERT INTO EMP VALUES
        (7844, 'TURNER', 'SALESMAN',  7698,
        TO_DATE('8-09-1981', 'DD-MM-YYYY'),  1500, NULL, 30);
INSERT INTO EMP VALUES
        (7876, 'ADAMS',  'CLERK',     7788,
        TO_DATE('12-01-1983', 'DD-MM-YYYY'), 1100, NULL, 20);
INSERT INTO EMP VALUES
        (7900, 'JAMES',  'CLERK',     7698,
        TO_DATE('3-12-1981', 'DD-MM-YYYY'),   950, NULL, 30);
INSERT INTO EMP VALUES
        (7902, 'FORD',   'ANALYST',   7566,
        TO_DATE('3-12-1981', 'DD-MM-YYYY'),  3000, NULL, 20);
INSERT INTO EMP VALUES
        (7934, 'MILLER', 'CLERK',     7782,
        TO_DATE('23-01-1982', 'DD-MM-YYYY'), 1300, NULL, 10);

CREATE TABLE DEPT
       (DEPTNO NUMBER(2),
        DNAME VARCHAR2(14),
        LOC VARCHAR2(13) );

INSERT INTO DEPT VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO DEPT VALUES (20, 'RESEARCH',   'DALLAS');
INSERT INTO DEPT VALUES (30, 'SALES',      'CHICAGO');
INSERT INTO DEPT VALUES (40, 'OPERATIONS', 'BOSTON');

CREATE TABLE SALGRADE
        (GRADE NUMBER,
         LOSAL NUMBER,
         HISAL NUMBER);

INSERT INTO SALGRADE VALUES (1,  700, 1200);
INSERT INTO SALGRADE VALUES (2, 1201, 1400);
INSERT INTO SALGRADE VALUES (3, 1401, 2000);
INSERT INTO SALGRADE VALUES (4, 2001, 3000);
INSERT INTO SALGRADE VALUES (5, 3001, 9999);

COMMIT;

/*Partie 1*/
/*1*/
SET SERVEROUTPUT ON
DECLARE
  TYPE t_indexTable
  IS TABLE OF VARCHAR2(50)
  INDEX BY BINARY_INTEGER;
  l_tab_fruit t_indexTable;
  l_tab_legume t_indexTable;
BEGIN
  l_tab_fruit(1) := 'raisin';
  l_tab_fruit(2) := 'pomme';
  l_tab_fruit(3) := 'poire';
  l_tab_fruit(4) := 'banane';
  
  l_tab_legume(1) := 'haricot';
  l_tab_legume(2) := 'poireau';
  l_tab_legume(3) := 'chou';
  
  DBMS_OUTPUT.PUT('Le tableau de fruits : ') ;
  FOR i IN 1 .. l_tab_fruit.count LOOP
    DBMS_OUTPUT.PUT(l_tab_fruit(i) || ' | ') ;
  END LOOP;
  DBMS_OUTPUT.NEW_LINE();
  
  DBMS_OUTPUT.PUT('Le tableau de legumes : ') ;
  FOR i IN 1 .. l_tab_legume.count LOOP
    DBMS_OUTPUT.PUT(l_tab_legume(i) || ' | ') ;
  END LOOP;
  DBMS_OUTPUT.NEW_LINE();
END;
/

/*2*/
SET SERVEROUTPUT ON
DECLARE
  TYPE t_indexTable
  IS TABLE OF VARCHAR2(50)
  INDEX BY BINARY_INTEGER;
  l_tab_fruit t_indexTable;
  l_tab_legume t_indexTable;
BEGIN
  l_tab_fruit(1) := 'raisin';
  l_tab_fruit(2) := 'pomme';
  l_tab_fruit(3) := 'poire';
  l_tab_fruit(4) := 'banane';
  
  l_tab_legume(1) := 'haricot';
  l_tab_legume(2) := 'poireau';
  l_tab_legume(3) := 'chou';
  
  DBMS_OUTPUT.PUT('Le tableau de fruits : ') ;
  FOR i IN REVERSE 1 .. l_tab_fruit.count LOOP
    DBMS_OUTPUT.PUT(l_tab_fruit(i) || ' | ') ;
  END LOOP;
  DBMS_OUTPUT.NEW_LINE();
  
  DBMS_OUTPUT.PUT('Le tableau de legumes : ') ;
  FOR i IN REVERSE 1 .. l_tab_legume.count LOOP
    DBMS_OUTPUT.PUT(l_tab_legume(i) || ' | ') ;
  END LOOP;
  DBMS_OUTPUT.NEW_LINE();
END;
/

SET SERVEROUTPUT ON
DECLARE
  TYPE t_indexTable
  IS TABLE OF VARCHAR2(50)
  INDEX BY BINARY_INTEGER;
  l_tab_fruit t_indexTable;
  l_tab_legume t_indexTable;
  l_tmp VARCHAR2(50) := '';
BEGIN
  l_tab_fruit(1) := 'raisin';
  l_tab_fruit(2) := 'pomme';
  l_tab_fruit(3) := 'poire';
  l_tab_fruit(4) := 'banane';
  
  l_tab_legume(1) := 'haricot';
  l_tab_legume(2) := 'poireau';
  l_tab_legume(3) := 'chou';
  
  FOR i IN 1 .. l_tab_fruit.count/2  LOOP
    l_tmp := l_tab_fruit(i);
    l_tab_fruit(i) := l_tab_fruit(l_tab_fruit.count - i + 1);
    l_tab_fruit(l_tab_fruit.count - i) := l_tmp;
  END LOOP;
  
  FOR i IN 1 .. l_tab_legume.count/2  LOOP
    l_tmp := l_tab_legume(i);
    l_tab_legume(i) := l_tab_legume(l_tab_legume.count - i + 1);
    l_tab_legume(l_tab_legume.count - i) := l_tmp;
  END LOOP;
  
  FOR i IN 1 .. 1 LOOP
    l_tmp := l_tab_legume(i);
    l_tab_legume(i) := l_tab_legume(l_tab_legume.count);
    l_tab_legume(l_tab_legume.count) := l_tmp;
  END LOOP;
  
  DBMS_OUTPUT.PUT('Le tableau de fruits : ') ;
  FOR i IN 1 .. l_tab_fruit.count LOOP
    DBMS_OUTPUT.PUT(l_tab_fruit(i) || ' | ') ;
  END LOOP;
  DBMS_OUTPUT.NEW_LINE();
  
  DBMS_OUTPUT.PUT('Le tableau de legumes : ') ;
  FOR i IN 1 .. l_tab_legume.count LOOP
    DBMS_OUTPUT.PUT(l_tab_legume(i) || ' | ') ;
  END LOOP;
  DBMS_OUTPUT.NEW_LINE();
END;
/

/*3*/
SET SERVEROUTPUT ON
DECLARE
  TYPE t_indexTable
  IS TABLE OF VARCHAR2(50)
  INDEX BY BINARY_INTEGER;
  l_tab_fruit t_indexTable;
  l_tab_legume t_indexTable;
  l_tab_fruit_et_legume t_indexTable;
BEGIN
  l_tab_fruit(1) := 'raisin';
  l_tab_fruit(2) := 'pomme';
  l_tab_fruit(3) := 'poire';
  l_tab_fruit(4) := 'banane';
  
  l_tab_legume(1) := 'haricot';
  l_tab_legume(2) := 'poireau';
  l_tab_legume(3) := 'chou';
  
  FOR i IN 1 .. l_tab_fruit.count LOOP
    l_tab_fruit_et_legume(i) := l_tab_fruit(i);
  END LOOP;
  
  FOR i IN 1 .. l_tab_legume.count LOOP
    l_tab_fruit_et_legume(i + l_tab_fruit.count) := l_tab_legume(i);
  END LOOP;
  
  DBMS_OUTPUT.PUT('Le tableau de fruits et legumes dans le desordre : ') ;
  FOR i IN 1 .. l_tab_fruit_et_legume.count LOOP
    DBMS_OUTPUT.PUT(l_tab_fruit_et_legume(i) || ' | ') ;
  END LOOP;
  DBMS_OUTPUT.NEW_LINE();
END;
/

/*4*/
SET SERVEROUTPUT ON
DECLARE
  TYPE t_indexTable
  IS TABLE OF VARCHAR2(50)
  INDEX BY BINARY_INTEGER;
  l_tab_fruit t_indexTable;
  l_tab_legume t_indexTable;
  l_tab_fruit_et_legume t_indexTable;
  l_aucun_echange BOOLEAN := FALSE;
  l_tmp VARCHAR2(50) := '';
BEGIN
  l_tab_fruit(1) := 'raisin';
  l_tab_fruit(2) := 'pomme';
  l_tab_fruit(3) := 'poire';
  l_tab_fruit(4) := 'banane';
  
  l_tab_legume(1) := 'haricot';
  l_tab_legume(2) := 'poireau';
  l_tab_legume(3) := 'chou';
  
  FOR i IN 1 .. l_tab_fruit.count LOOP
    l_tab_fruit_et_legume(i) := l_tab_fruit(i);
  END LOOP;
  
  FOR i IN 1 .. l_tab_legume.count LOOP
    l_tab_fruit_et_legume(i + l_tab_fruit.count) := l_tab_legume(i);
  END LOOP;
  
  DBMS_OUTPUT.PUT('Le tableau de fruits et legumes dan sle desordre: ') ;
  FOR i IN 1 .. l_tab_fruit_et_legume.count LOOP
    DBMS_OUTPUT.PUT(l_tab_fruit_et_legume(i) || ' | ') ;
  END LOOP;
  DBMS_OUTPUT.NEW_LINE();
  
  WHILE (l_aucun_echange = FALSE) LOOP
  l_aucun_echange := TRUE;
    FOR i IN 1 .. l_tab_fruit_et_legume.count - 1 LOOP
      IF l_tab_fruit_et_legume(i) > l_tab_fruit_et_legume(i + 1) THEN
        l_tmp := l_tab_fruit_et_legume(i);
        l_tab_fruit_et_legume(i) := l_tab_fruit_et_legume(i + 1);
        l_tab_fruit_et_legume(i + 1) := l_tmp;
        l_aucun_echange := FALSE;
      END IF;
    END LOOP;
  END LOOP;
  
  DBMS_OUTPUT.PUT('Le tableau de fruits et legumes dans l''ordre: ') ;
  FOR i IN 1 .. l_tab_fruit_et_legume.count LOOP
    DBMS_OUTPUT.PUT(l_tab_fruit_et_legume(i) || ' | ') ;
  END LOOP;
  DBMS_OUTPUT.NEW_LINE();
END;
/

/*5*/
SET SERVEROUTPUT ON
DECLARE
  TYPE t_indTable
  IS TABLE OF VARCHAR2(50)
  INDEX BY BINARY_INTEGER;
  l_tab_fruit t_indTable;
  l_tab_legume t_indTable;
  l_tab_fruit_et_legume t_indTable;
  l_i INTEGER := 1;
  i1 INTEGER := 1;
  i2 INTEGER := 1;
BEGIN
  l_tab_fruit(1) := 'banane';
  l_tab_fruit(2) := 'poire';
  l_tab_fruit(3) := 'pomme';
  l_tab_fruit(4) := 'raisin';
  
  l_tab_legume(1) := 'chou';
  l_tab_legume(2) := 'haricot';
  l_tab_legume(3) := 'poireau';
  
  FOR i IN 1 .. l_tab_fruit.count LOOP
    l_tab_fruit_et_legume(i) := l_tab_fruit(i);
  END LOOP;
  
  FOR i IN 1 .. l_tab_legume.count LOOP
    l_tab_fruit_et_legume(i+l_tab_fruit.count) := l_tab_legume(i);
  END LOOP;
  
  DBMS_OUTPUT.PUT('Les Fruits et Legumes dans le desordre : ');  
  FOR i IN 1 .. l_tab_fruit_et_legume.count LOOP
    DBMS_OUTPUT.PUT(l_tab_fruit_et_legume(i) || ' | ');
  END LOOP;
  DBMS_OUTPUT.NEW_LINE();
  
  DBMS_OUTPUT.PUT(LEAST(l_tab_fruit.count, l_tab_legume.count));  
  DBMS_OUTPUT.PUT(l_tab_legume.count);  
  DBMS_OUTPUT.PUT(l_tab_fruit.count);  
  
  WHILE((i1 <= l_tab_fruit.count) OR (i1 <= l_tab_legume.count)) LOOP
    IF ((i2 > l_tab_legume.count) OR (i1 <= l_tab_fruit.count) AND (l_tab_fruit(i1) < l_tab_legume(i2))) THEN
      l_tab_fruit_et_legume(l_i) := l_tab_fruit(i1);
      i1 := i1 + 1;
    ELSE
      l_tab_fruit_et_legume(l_i) := l_tab_legume(i2);
      i2 := i2 + 1;
    END IF;
    l_i := l_i + 1;
  END LOOP;
     
  DBMS_OUTPUT.PUT('Les Fruits et Legumes dans l''ordre : ');  
  FOR i IN 1 .. l_tab_fruit_et_legume.count LOOP
    DBMS_OUTPUT.PUT(l_tab_fruit_et_legume(i) || ' | ');
  END LOOP;
  DBMS_OUTPUT.NEW_LINE();
END;
/

/*Partie 2*/
/*1*/
SET SERVEROUTPUT ON
DECLARE
  TYPE t_varray
    IS VARRAY(50) OF INTEGER;
    /*2*/
    l_varray t_varray := t_varray();
BEGIN
  l_varray.extend(20);
/*3*/
  FOR i IN 1 .. l_varray.count LOOP
    l_varray(i) := i*i;
  END LOOP;
/*4*/
  FOR i IN 1 .. l_varray.count LOOP
    DBMS_OUTPUT.PUT_LINE(l_varray(i));
  END LOOP;
  /*5*/
  FOR i IN 1 .. l_varray.count LOOP
    l_varray(i) := (l_varray.count - i + 1) * (l_varray.count - i + 1);
  END LOOP;
  
  FOR i IN 1 .. l_varray.count LOOP
    DBMS_OUTPUT.PUT_LINE(l_varray(i));
  END LOOP;
END;
/

/*6*/
SET SERVEROUTPUT ON
DECLARE
  TYPE t_varray
  IS VARRAY(50) OF INTEGER;
  l_varray t_varray := t_varray();
  l_min INTEGER := 1;
  l_max INTEGER := 20;
  l_mid INTEGER;
  l_res INTEGER;
BEGIN
  l_varray.extend(20);
  FOR i IN 1 .. l_varray.count LOOP
    l_varray(i) := i*i;
  END LOOP;
  FOR i IN 1 .. l_varray.count LOOP
    DBMS_OUTPUT.PUT_LINE(l_varray(i));
  END LOOP;
  
  WHILE (l_min < l_max) LOOP
    l_mid := (l_min + l_max)/2;
    
    IF (l_varray(l_mid) = 225) THEN
      l_res := l_mid;
    ELSE
      IF (l_varray(l_mid) < 225) THEN
        l_min := l_mid + 1;
      ELSE
        l_max := l_mid - 1;
      END IF;
    END IF;
  END LOOP;
  IF (l_varray(l_min) = 225) THEN
    l_res := l_min;
  ELSE
    l_res := -1;
  END IF;
  DBMS_OUTPUT.PUT_LINE(l_res);
END;  
/
