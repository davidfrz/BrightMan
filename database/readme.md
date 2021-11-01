初步是建两张表

数据库--brightman

主表--main_user，存储UID（手机号）、password和设备IMEI

附表--mqtt，存储GPS信息（经度、纬度）、当前时间戳和topic，MQTT的topic外联主表的IMEI号，用户可以通过UID访问GPS等信息。