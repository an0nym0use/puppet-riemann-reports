class riemann_reports (
  $riemann_server   = 'localhost',
  $riemann_port     = '5555',
){
  file {'/etc/puppet/riemann.yaml':
    ensure      => file,
    content     => template('riemann_reports/riemann.yaml.erb'),
  }
}
