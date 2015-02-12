SimpleCov.start 'rails' do
  add_filter '/test/'
  add_filter '/spec/'
  add_filter '/config/'
  add_filter '/lib/'
  add_filter '/vendor/'
  add_filter '/html/'
  add_filter '/helpers/'
  add_filter '/omniauth/'

  add_group 'Controllers', 'app/controllers'
  add_group 'Models', 'app/models'
  add_group 'Helpers', 'app/helpers'
end

SimpleCov.minimum_coverage 80
  