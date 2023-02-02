SELECT 
	순번,
	도서관명,
	구분,
	도서명,
	저작자,
	출판사,
     case
		when 발행년도 is null then '2050'
        when 발행년도 = '' then '2090'
        else 발행년도 
	end as 발행년도,
    if(ifnull(발행년도, '') = '', '2023', 발행년도) as 발행년도2,
    nullif(발행년도, '') as 발행년도3,
    -- 두개의 값을 넣었을 때 두개의 값이 같으면 널을 주는 nullif , 발행년도가 ''이면 공백 -> 널
    if(청구기호 = '', '기호없음', 청구기호)as 청구기호
    
    -- ifnull if문에서 null 값인지 확인하는 방법, 발행년도가 널일때고 있고 공백일때도 있을경우 한번에 처리하고 싶을때  
    -- 공백을 주게되면 널 -> 공백으로 바뀜 
	

FROM 
	library_mst
where
	-- 발행년도 like '1_';
     not 발행년도 = '';
    
update library_mst
set 
	발행년도 =''
where
	발행년도 ='2009';
