
microflo = (target) ->
    build = [
        "make -f ./node_modules/microflo/Makefile"
        target
        "BUILD_DIR=build"
        "MICROFLO=./node_modules/.bin/microflo"
        "GRAPH=graphs/fridge.fbp"
        "MICROFLO_SOURCE_DIR=`pwd`/node_modules/microflo/microflo"
        "LIBRARY=microflo-core/components/arduino-standard.json"
    ]
    return build.join ' '

module.exports = ->
  # Project configuration
  @initConfig

    # lint
    coffeelint:
      code:
        files:
          src: ['preview/*.coffee', 'spec/*.coffee']
        options:
          max_line_length:
            value: 100
            level: 'warn'
          no_trailing_semicolons:
            level: 'warn'

    # TODO: Browser build
    exec:
        microflo_emscripten: microflo "build-emscripten"
        microflo_arduino: microflo "build-arduino"

    mochaTest:
      nodejs:
        src: ['spec/*.coffee']
        options:
          reporter: 'spec'
          require: 'coffee-script/register'
          grep: 'PortalLights'

  # Grunt plugins used for building
  @loadNpmTasks 'grunt-exec'

  # Grunt plugins used for testing
  @loadNpmTasks 'grunt-mocha-test'

  # Our local tasks
  @registerTask 'build', [
    'exec:microflo_emscripten'
  ]

  @registerTask 'test', [
    'build'
    'mochaTest'
  ]

  @registerTask 'default', ['test']

