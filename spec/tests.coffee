fbpspec = require 'fbp-spec'

runtime =
  "type": "microflo",
  "protocol": "websocket",
  "address": "ws://localhost:3333",
  "secret": "microflo32",
  "command": "microflo runtime --port 3333 --file build/emscripten/microflo-runtime.js"

fbpspec.mocha.run runtime, __dirname, {}
