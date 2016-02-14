
# Theme settings
# -----------------------

root = document.documentElement

module.exports =
  config:
    fontSize:
      title: 'Font Size'
      description: 'Change the UI font size. Needs to be between 8 and 20.'
      type: ['integer', 'string']
      minimum: 8
      maximum: 20
      default: 'Auto'
    layoutMode:
      title: 'Layout Mode'
      description: 'In Auto mode, the UI will automatically adapt based on the window size.'
      type: 'string'
      default: 'Auto'
      enum: [
        'Compact'
        'Auto'
        'Spacious'
      ]

  activate: (state) ->
    # Handle settings changes
    atom.config.onDidChange 'one-darker-ui.fontSize', ->
      setFontSize(atom.config.get('one-darker-ui.fontSize'))
    atom.config.onDidChange 'one-darker-ui.layoutMode', ->
      setLayoutMode(atom.config.get('one-darker-ui.layoutMode'))

    # Initialize
    setFontSize(atom.config.get('one-darker-ui.fontSize'))
    setLayoutMode(atom.config.get('one-darker-ui.layoutMode'))

  deactivate: ->
    unsetFontSize()
    unsetLayoutMode()


# Font Size -----------------------
setFontSize = (currentFontSize) ->
  if Number.isInteger(currentFontSize)
    root.style.fontSize = "#{currentFontSize}px"
  else if currentFontSize is 'Auto'
    unsetFontSize()

unsetFontSize = ->
  root.style.fontSize = ''


# Layout Mode -----------------------
setLayoutMode = (layoutMode) ->
  root.setAttribute('theme-one-darker-ui-layoutmode', layoutMode.toLowerCase())

unsetLayoutMode = ->
  root.removeAttribute('theme-one-darker-ui-layoutmode')
