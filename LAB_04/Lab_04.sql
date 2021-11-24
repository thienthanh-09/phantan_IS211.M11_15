
select * from customer;
insert into CUSTOMER values('KH01','Nguyen Van A',100000);
insert into CUSTOMER values('KH02','Nguyen Van B',1000000);
insert into BRANCH values('CN01','Vietcombank Quan 1');
insert into BRANCH values('CN02','Vietcombank Quan 2');
insert into BRANCH values('CN03','Vietcombank Quan 3');
insert into BRANCH values('CN04','Vietcombank Quan 4');
commit;

CREATE OR REPLACE TRIGGER Update_Balance
 AFTER INSERT ON TRANSACT
 FOR EACH ROW
 BEGIN
    IF :NEW.TRANSACTIONTYPE = 'Deposit' THEN
            UPDATE CUSTOMER
            SET CUSTOMER.BALANCE=CUSTOMER.BALANCE + :NEW.AMOUNT
            WHERE CUSTOMER.CUSID=:NEW.CUSID;
    ELSE
            UPDATE CUSTOMER
            SET CUSTOMER.BALANCE=CUSTOMER.BALANCE - :NEW.AMOUNT
            WHERE CUSTOMER.CUSID=:NEW.CUSID;
    END IF;
 END;


create or replace procedure Deposit(v_CUSID in varchar2,v_money in Number)
 As
    dem int;
 Begin
    select count(CUSID) into dem from CUSTOMER where CUSID = v_CUSID;
            if(dem=1) then
                    insert into TRANSACT values('CN01',v_CUSID,v_money, 'Deposit');
            else
            select count(CUSID) into dem from M02.CUSTOMER@DBL_M02 where CUSID = v_CUSID;
            if(dem=1) then
                    insert into M02.TRANSACT@ DBL_M02 values('CN01',v_CUSID,v_money, 'Deposit');
            end if;
    end if;
    COMMIT;
 End;
 
create or replace procedure Withdraw(v_CUSID in varchar2,v_money in Number)
  As
     dem int;
  Begin
     select count(CUSID) into dem from CUSTOMER where CUSID = v_CUSID;
             if(dem>0) then
 		insert into TRANSACT values('CN01',v_CUSID,v_money, 'Withdraw');
             else select count(CUSID) into dem from M02.CUSTOMER@DBL_M02 where CUSID = v_CUSID;
             if(dem>0) then
                     	insert into M02.TRANSACT@ DBL_M02 values('CN01',v_CUSID,v_money, 'Withdraw');
             end if;
     end if;
     commit;
 end;

commit;
select * from M02.CUSTOMER@DBL_M02;


EXECUTE WITHDRAW('KH03', 40000);
