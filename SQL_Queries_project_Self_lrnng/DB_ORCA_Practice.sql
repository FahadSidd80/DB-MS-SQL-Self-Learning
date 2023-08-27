create database DB_ORCA_Practice
use DB_ORCA_Practice

create table tblContarct
(
cid int primary key identity,
conTranStatus varchar(2),
conProdcode varchar(6),
)

insert into tblContarct(conTranStatus,conProdcode)values('NB','234567')
insert into tblContarct(conTranStatus,conProdcode)values('NB','567687')
insert into tblContarct(conTranStatus,conProdcode)values('NB','980989')
insert into tblContarct(conTranStatus,conProdcode)values('RN','876756')
insert into tblContarct(conTranStatus,conProdcode)values('RN','874534')
insert into tblContarct(conTranStatus,conProdcode)values('RN','657654')

create table tblRenProdCode
(
old_procode varchar(6),
refer_Prodcode varchar(6)
)

insert into tblRenProdCode(old_procode,refer_Prodcode)values('234567','000001')
insert into tblRenProdCode(old_procode,refer_Prodcode)values('567687','000002')
insert into tblRenProdCode(old_procode,refer_Prodcode)values('980989','000003')
insert into tblRenProdCode(old_procode,refer_Prodcode)values('876756','000004')
insert into tblRenProdCode(old_procode,refer_Prodcode)values('874534','000005')
insert into tblRenProdCode(old_procode,refer_Prodcode)values('657654','000006')
insert into tblRenProdCode(old_procode,refer_Prodcode)values('987687','000007')


select refer_Prodcode from tblRenProdCode join tblContarct on tblContarct.conProdcode = tblRenProdCode.old_procode where cid=1 and conTranStatus='NB'


update tblContarct set conProdcode = tblRenProdCode.refer_Prodcode  where cid=1 and conTranStatus='NB'

