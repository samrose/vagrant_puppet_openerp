class devel {
	package { screen:
		ensure => installed,
	}
	package { mailutils:
		ensure => installed,
	}
	package { git:
		ensure => installed,
	}
	package { [postgresql,libpq-dev]:
		ensure => installed,
	}
  package { [
    'bzr',
    'ghostscript',
    'graphviz',
    'libjpeg62-dev',
    'libldap2-dev',
    'libgeos-c1',
    'libsasl2-dev',
    'libxml2-dev',
    'libxslt1-dev',
    'poppler-utils',
    'zlib1g-dev',
    'zlib1g',
    ]:ensure => installed,
  }
}
