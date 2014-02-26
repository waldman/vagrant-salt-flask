#
# Webapp SLS file
#

# Creating application user/group
webapp:
    group:
        - present
        - gid: 4000
    user:
        - present
        - fullname: Web Application User
        - shell: /bin/false
        - home: /srv/webapp
        - uid: 4000
        - gid: 4000
        - require:
          - group: webapp

# Config files - Supervisord
/etc/supervisor/conf.d/webapp.conf:
    file:
        - managed
        - source: salt://webapp/files/supervisor.conf
        - user: root
        - group: root
        - mode: 644
        - require:
          - pkg: supervisor
          - pkg: gunicorn
        
# Config files - Nginx
/etc/nginx/sites-enabled/default:
    file:
        - managed
        - source: salt://webapp/files/nginx.conf
        - user: root
        - group: root
        - mode: 644
        - require:
          - pkg: nginx
        
        