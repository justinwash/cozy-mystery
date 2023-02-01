extends Node

func enter(game):
  print('entered state: new_game')

  # load the game
  game.ui.switch_panel('loading_panel')
  game.world.enter_map('Overworld')
  game.ui.switch_panel(null)
  game.ui.switch_menu(null)

  game.change_state('playing')

func ready(_game):
  pass

func update(_game, _delta):
  pass

func physics_update(_game, _delta):
  pass

func process_input(_game, _delta):
  pass

func exit(_game):
  pass
