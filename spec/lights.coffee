name: "Lights"
topic: "core/Frigde"
skip: |
  Should set an input pin to simulate door,
  then verify the state on the output pin
fixture:
 type: 'fbp'
 data: |
  INPORT=it.IN:IN
  OUTPORT=f.OUT:OUT
  it(core/Repeat) OUT -> IN f(core/Repeat)

cases:
-
  name: 'door is open'
  assertion: 'lights should be on'
  inputs:
    in: 6
  expect:
    lights:
      equals: true
-
  name: 'door is closed'
  assertion: 'lights should be off'
  inputs:
    in: 3
  expect:
    lights:
      equals: true
