class apache { 
		service { 'httpd':
                        ensure    => running,
                        enable    => true,
                }
  		file { '/var/www/html':
    			ensure  => directory,
    			owner   => 'apache',
    			group   => 'apache',
    			mode    => '0655',
  		}
 		file { 'index':
			path => '/var/www/html/index.html',
                        ensure  => file,
                        owner   => 'apache',
                        group   => 'apache',
                        mode    => '0655',
			source => "puppet:///modules/apache/index.html"
                }
}
