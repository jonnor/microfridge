### MicroFlo - Flow-Based Programming for microcontrollers
# Copyright (c) 2013 Jon Nordby <jononor@gmail.com>
# MicroFlo may be freely distributed under the MIT license
###

chai = require 'chai' if not chai
microflo = require 'microflo'

try
  build = require '../build/emscripten/microfridge-firmware.js'
catch e
  console.log 'WARN: could not load Emscripten build', e.toString()
describeIfSimulator = if build? then describe else describe.skip

# FIXME: library should be read automatically from firmware
library = __dirname + '../package.json'

describeIfSimulator 'Fridge thermostat', ->
  simulator = new microflo.simulator.RuntimeSimulator build
  prog = 
  before (done) ->
    simulator.library.loadSetFile library, (err) ->
      if err
        throw err
      simulator.start 0 # manual time control
      simulator.device.open ->
        done()
  after (done) ->
    simulator.device.close ->
      simulator.stop()
      done()

  describe 'temperature too high', ->
    it 'cooler turn ON',
  describe 'temperature low enough', ->
    it 'cooler turn OFF',

