host_groups = [
  ( 'tsstuff-printer', ['tsstuff-printer'], ALL_HOSTS ),   
  ( 'snmp', ['snmp'], ALL_HOSTS ), 
] + host_groups


extra_service_conf.setdefault('_ec_sl', [])

extra_service_conf['_ec_sl'] = [
  ( 0, ['tsstuff-printer'] , ALL_HOSTS, ALL_SERVICES),
] + extra_service_conf['_ec_sl']


extra_host_conf.setdefault('check_interval', [])

extra_host_conf['check_interval'] = [
  ( 5, ['tsstuff-printer', ], ALL_HOSTS ),
] + extra_host_conf['check_interval']


host_contactgroups = [
  ( 'tsstuff-admins', ['tsstuff-printer'], ALL_HOSTS),
] + host_contactgroups


extra_service_conf.setdefault('check_interval', [])

extra_service_conf['check_interval'] = [
  ( 5, ['tsstuff-printer', ], ALL_HOSTS, ALL_SERVICES ),
] + extra_service_conf['check_interval']


extra_host_conf.setdefault('notification_interval', [])

extra_host_conf['notification_interval'] = [
  ( 60, ['tsstuff-printer', ], ALL_HOSTS ),
] + extra_host_conf['notification_interval']


extra_service_conf.setdefault('notification_period', [])

extra_service_conf['notification_period'] = [
  ( 'allday', ['tsstuff-printer', ], ALL_HOSTS, ALL_SERVICES ),
] + extra_service_conf['notification_period']


extra_service_conf.setdefault('notification_interval', [])

extra_service_conf['notification_interval'] = [
  ( 60, ['tsstuff-printer', ], ALL_HOSTS, ALL_SERVICES ),
] + extra_service_conf['notification_interval']


service_contactgroups = [
  ( 'tsstuff-admins', ['tsstuff-printer', ], ALL_HOSTS, ALL_SERVICES ),
] + service_contactgroups


service_groups = [
  ( 'tsstuff-printer', ['tsstuff-printer', ], ALL_HOSTS, ALL_SERVICES ),
] + service_groups


host_groups = [
  ( 'tsstuff-printer', ['tsstuff-printer', ], ALL_HOSTS ),
] + host_groups


extra_host_conf.setdefault('notification_period', [])

extra_host_conf['notification_period'] = [
  ( 'allday', ['tsstuff-printer', ], ALL_HOSTS ),
] + extra_host_conf['notification_period']



