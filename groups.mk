# Written by WATO
# encoding: utf-8

if type(define_hostgroups) != dict:
    define_hostgroups = {}
define_hostgroups.update({'neuro-basic': u'neuro-basic',
 'neuro-critical': u'neuro-critical',
 'neuro-critical-24x7': u'neuro-critical-24x7',
 'testhostgroup': u'testhostgroup'})

if type(define_servicegroups) != dict:
    define_servicegroups = {}
define_servicegroups.update({'neuro-basic': u'neuro-basic',
 'neuro-critical': u'neuro-critical',
 'neuro-critical-24x7': u'neuro-critical-24x7',
 'public': u'public'})

if type(define_contactgroups) != dict:
    define_contactgroups = {}
define_contactgroups.update({'neuro-admins': u'neuro-admins',
 'neuro-pager': u'neuro-pager',
 'neuro-ts': u'neurots'})

