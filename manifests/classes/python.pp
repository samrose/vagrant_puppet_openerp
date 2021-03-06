class python {

  package { 'python-virtualenv': ensure => installed }
  package { 'python-dev' : ensure => installed }
  package { [ 'python-dateutil', 
              'python-docutils', 
              'python-feedparser', 
              'python-gdata', 
              'python-jinja2', 
              'python-ldap', 
              'python-libxslt1', 
              'python-lxml', 
              'python-mako', 
              'python-mock', 
              'python-openid',
              'python-psycopg2', 
              'python-psutil', 
              'python-pybabel', 
              'python-pychart', 
              'python-pydot', 
              'python-pyparsing',
              'python-reportlab', 
              'python-simplejson', 
              'python-tz', 
              'python-unittest2', 
              'python-vatnumber', 
              'python-vobject',
              'python-webdav', 
              'python-werkzeug', 
              'python-xlwt', 
              'python-yaml', 
              'python-zsi']:
               ensure => installed
  }
}
