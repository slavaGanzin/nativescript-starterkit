application = require 'application'
global.co   = require 'co'
global.R    = require 'ramda'

{Observable} = require "data/observable"
global.context = new Observable {}
  
require('./events') application

application.start moduleName: 'login'
