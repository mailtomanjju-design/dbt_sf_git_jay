select c_name, c_nationkey,
{{mcr_segment("c_mktsegment")}},c_acctbal,
{{acctbal("c_nationkey","c_acctbal")}}
from {{ source('s1', 't_customer') }}