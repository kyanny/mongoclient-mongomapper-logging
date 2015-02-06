def make_setup_config(logger=nil)
  config = {
    'test' => {
      'host' => '127.0.0.1',
      'port' => 27017,
      'database' => 'test',
    }
  }
  env = 'test'

  if logger.nil?
    options = {}
  else
    options = {logger: logger}
  end

  [config, env, options]
end
