define [
    'jquery'
    'boxbox'
    'cs!models/GroundEntity'
    'cs!models/PlayableCharacter' ], ($, boxbox, GroundEntity, PlayableCharacter) ->

    $canvas = $ '#gamescape'
    canvas = $canvas.get 0
    world = boxbox.createWorld canvas, { collisionOutlines: true, scale:32, tickFrequency: 100 }

    grounds = (new GroundEntity world, options).register() for options in [
        { width: 20, x: 10, y: 13.22 }
        { width: 6, x: 3, y: 5 }
        { width: 2, x: 9, y: 6.5 }
        { width: 2, x: 11, y: 8 }
        { width: 2, x: 13, y: 9.5 }
        { width: 2, x: 15, y: 11 }
        { width: 2, x: 13, y: 12.5 }
        { width: 8, x: 16, y: 5 } ]

    #character = (new Character world, { x: 2, y: 10 } ).register()

    player = new PlayableCharacter world,
        name: 'player'
        #height: .4
        #width: .4
        x: 4
        y: 10
        shape: 'square'
        color: 'blue'
        maxVelocityX: 4

    player.register()
