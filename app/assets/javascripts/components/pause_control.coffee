Crafty.c "Pause",
  init: ->
    @requires("2D, DOM, Text, Pause, Mouse")
    @attr(x: - Config.viewport.width / 2 + 5 , y: - Config.viewport.height / 2 , h: 30, w: 30)
    @text("❚❚")

    @bind('Click', (e) -> @pauseToggle())

  bindKeyboard: ->
    @bind('KeyDown', (e) => @pauseToggle() if e.key == Crafty.keys.ESC)

  pauseToggle: ->
    if Crafty.isPaused()
      @unpause()
    else
      @pause()
  pause: ->
    @addComponent("paused")
    Crafty.pause(true)

  unpause: ->
    @removeComponent("paused")
    Crafty.pause(false)
