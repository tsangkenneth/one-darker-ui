## One darker UI theme

A light UI theme that adjusts to most Syntax themes. This theme takes [One light UI](https://github.com/atom/one-light-ui) and changes the colors of the tree-view to be that of [One dark UI](https://github.com/atom/one-dark-ui). The width of the git status indicators in the editor have also been increased to make them more visible. The idea of combining the dark and light themes into a ‘darker’ theme was inspired by the three variants of the [Arc](https://github.com/horst3180/Arc-theme) theme. Original README from [One light UI](https://github.com/atom/one-light-ui).

### Install

This theme can be installed within Atom and activated by going to the __Settings > Themes__ section and selecting "One Darker" from the __UI Themes__ drop-down menu.

### Settings

In the theme settings you can switch between 3 __Layout Modes__:

1. `Auto` (default) - In Auto mode, the UI and font size will automatically change based on the window size.
2. `Compact` - The UI stays compact to leave more space for the editor.
3. `Spacious` - The UI is expanded, giving some breathing room.

As well as change the __Font Size__ to scale the whole UI up or down.

### Customize

It's also possible to resize only certain areas by adding the following to your `styles.less` (Use the DevTools to find the right selectors):

```css
.theme-one-light-ui {
  .tab-bar { font-size: 18px; }
  .tree-view { font-size: 14px; }
  .status-bar { font-size: 12px; }
}
```

### FAQ

__Why do the colors change when I switch Syntax themes.__
This UI theme uses the same background color as the choosen Syntax theme. In case that Syntax theme has a dark background color, it only uses its hue, but otherwise stays light. This lets you use light-dark combos.
