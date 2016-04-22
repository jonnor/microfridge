[![Build Status](https://travis-ci.org/jonnor/microfridge.svg?branch=master)](https://travis-ci.org/jonnor/microfridge)

MicroFridge
============

Firmware for an old fridge, based on [MicroFlo](http://microflo.org) dataflow runtime
running on [Olimex ESP8266](https://www.olimex.com/Products/IoT/ESP8266-EVB).

This is version 2 of the
[MicroFlo+Arduino-based fridge](http://www.jonnor.com/2013/09/microflo-0-1-0-and-an-arduino-powered-fridge/).
The goals of this iteration are to

* Integrate electronics into the fridge itself
* Support creating and debugging the program in [Flowhub](http://flowhub.io) visual programming IDE
* Have the state of the device observable and configurable. Using MQTT and [MsgFlo](http://msgflo.org)
* Push MicroFlo forward using a real-world example
* Explore the idea of ['introspectable computing'](https://github.com/jonnor/projects/tree/master/introspectable-computing)
applied to household appliances
* Try out using SVG+JS to build interactive system models

Status
--------
Just words.

DONE
-----
* MicroFlo: Basic support for ESP8266 devices
* MicroFlo: Initial support for MQTT (on Linux)

TODO
-----

0.1 - minimally works

* Tests: BDD test of fridge flow running on Emscripten or Linux MicroFlo backend
* Port over existing fridge flow from
[MicroFlo/examples/fridge.fbp](https://github.com/microflo/microflo/blob/master/examples/fridge.fbp)
* Port required DS18s20 component to ESP8266. Example code
[1](http://tech.scargill.net/esp8266-and-the-dallas-ds18b20-and-ds18b20p/),
[2](https://github.com/nekromant/esp8266-frankenstein/blob/master/src/cmd_ds18b20.c)
* Graph exposed over MQTT/MsgFlo, can observe state and manipulate configuration
* Design and 3d-print mount/installing
* Move into production, replacing version 1 system

0.2 - basic webinterface

* WebInterface: Serve a static system model, with links
* WebInterface: Ability to see current temp
* WebInterface: Ability to change target temp
* Add NFC tag with link to webinterface
* WebInterface: Add Flowhub live-mode URL (for MsgFlo network)?

0.3 - interactive system model

* MicroFlo: Support FBP protocol onto device (via web or MQTT/MsgFlo forwarding)
* Docs: Conceptual system model
* Docs: add pictures of fridge
* Docs: add schematics/wiring diagrams
* Make conceptual model interactive, connected to live system
* Flowhub: Support for showing conceptual model as "preview".
Build MicroFlo runtime comm as HTML, run in iframe, use post-message for forwarding?
* Add support for door switch + light
* Add links to 3d-models in conceptual model

Later

* MicroFlo: Support persistence graph changes
* MicroFlo: Port hysteresis component to use [Finito](http://finitosm.org)

Maybe

* Put the webinterface live on http://fridge.jonnor.com, in read-only mode
* Design 3d-printed replacement for door-switch
* LED-based light as replacement for lightbulb
* Augmented reality support, overlaying interactive webinterface on phone cameraview, using NFC tag as marker


