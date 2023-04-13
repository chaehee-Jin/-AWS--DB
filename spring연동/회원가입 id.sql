select
*
from
	user_mst um
    left outer join authority_mst am on(am.user_id = um.user_id)
    left outer join role_mst rm on(rm.role_id = am.role_id)
    -- 한명의 유저가 여러개의 권한을 가질수 있음  