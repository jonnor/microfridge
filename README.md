[![Build Status](https://travis-ci.org/jonnor/microfridge.svg?branch=master)](https://travis-ci.org/jonnor/microfridge)

MicroFridge
============

Firmware for an old fridge, based on [MicroFlo](http://microflo.org) dataflow runtime
running on [Olimex ESP8266](https://www.olimex.com/Products/IoT/ESP8266-EVB).

This is version 2 of the
[MicroFlo+Arduino-based fridge](http://www.jonnor.com/2013/09/microflo-0-1-0-and-an-arduino-powered-fridge/).
The goals of this iteration is to

* Integrate electronics into the fridge itself
* Support creating and debugging the program in [Flowhub](http://flowhub.io) visual programming IDE
* Push MicroFlo onwards, especially for IoT-type devices

Status
--------
Just words.

DONE
-----
* Initial support for ESP8266 devices for MicroFlo

TODO
-----

0.1

* Tests: BDD test of fridge flow running on Emscripten MicroFlo backend
* Port over existing fridge flow from
[MicroFlo/examples/fridge.fbp](https://github.com/microflo/microflo/blob/master/examples/fridge.fbp)
* Port required DS18s20 component to ESP8266. Example code
[1](http://tech.scargill.net/esp8266-and-the-dallas-ds18b20-and-ds18b20p/),
[2](https://github.com/nekromant/esp8266-frankenstein/blob/master/src/cmd_ds18b20.c)
* MicroFlo: add `build` command, for building firmware after doing `generate`?
* Design and 3d-print mount/installing
* Move into production, replacing version 1 system

0.2

* WebInterface: Serve a static system model, with links
* MicroFlo: IP-based transport for FBCS protocol (MQTT?)
* MicroFlo: Add support for Flowhub live-mode
* WebInterface: Add NFC tag with link
* WebInterface: Add Flowhub live-mode URL
* WebInterface: Ability to see current temp
* MicroFlo: Support persistence graph changes
* WebInterface: Ability to change target temp
* Docs: Conceptual system model
* Docs: add pictures of fridge
* Docs: add schematics/wiring diagrams
* Make conceptual model interactive, connected to live system
* Flowhub: Support for showing conceptual model as "preview".
Build MicroFlo runtime comm as HTML, run in iframe, use post-message for forwarding?
* Add support for door switch + light
* Add links to 3d-models in conceptual model

Later

* MicroFlo: Port hysteresis component to use [Finito](http://finitosm.org)
* Expose outputs as MQTT, use [msgflo](http://github.com/the-grid/msgflo) to wire into bigger system

Maybe

* Put the webinterface live on http://fridge.jonnor.com, in read-only mode
* Design 3d-printed replacement for door-switch
* LED-based light as replacement for lightbulb
* Augmented reality support, overlaying interactive webinterface on phone cameraview, using NFC tag as marker


