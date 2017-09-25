# Written by WATO
# encoding: utf-8

if type(define_hostgroups) != dict:
    define_hostgroups = {}
define_hostgroups.update({'engaging-basic': u'engaging-basic',
 'engaging-critical': u'engaging-critical',
 'engaging-critical-24x7': u'engaging-critical-24x7',
 'testhostgroup': u'testhostgroup'})

if type(define_servicegroups) != dict:
    define_servicegroups = {}
define_servicegroups.update({'engaging-basic': u'engaging-basic',
 'engaging-critical': u'engaging-critical',
 'engaging-critical-24x7': u'engaging-critical-24x7',
 'public': u'public'})

if type(define_contactgroups) != dict:
    define_contactgroups = {}
define_contactgroups.update({'engaging-admins': u'engaging-admins',
 'engaging-pager': u'engaging-pager',
 'engaging-ts': u'engagingts'})

