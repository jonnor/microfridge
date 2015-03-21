
setLed = (On) ->
    controller = document.getElementById("controller").contentDocument
    ledLight = controller.getElementById "cooling_indicator"
    ledLight.style.opacity = (if On then '1' else '0')

fakeIt = () ->
    coolerOn = false
    toggleLed = () ->
      console.log 'toggleLed', coolerOn
      coolerOn = not coolerOn
      setLed coolerOn
    setInterval toggleLed, 1000

main = ->
  console.log 'loaded'
  fakeIt 'go'

main()
