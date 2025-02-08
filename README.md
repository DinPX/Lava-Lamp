# Lava Lamp
Simple lava lamp to spice up your desktop

> [!NOTE]
> Since its window is borderless and I haven't implemented a popup UI for minimizing, scaling, and closing the window, there's no way to do the aforementioned yet. Just close the window thru tabs, Windows Task Manager, or other methods.

# Preview
## Default size
![](./Github/preview_1.png)
![](./Github/preview_0.png)

## Large scale
![](./Github/preview_2.png)

## To-do Features
- [x] Window sizes - preserve window's scale on size change
- [ ] Skin options - add more textures to choose from
- [ ] Lava options - change how the lava looks via its shader
- [ ] Top persists - 'always on top' window toggle option

## Features
- Make your lava lamp Godzilla sized (or average human size)
- Shader `TIME` and general rendering stops when minimized (see [VisualServer](https://docs.godotengine.org/en/3.6/classes/class_visualserver.html))
- `Tween` to juice up visuals
- Outline for visual feedback when being hovered or is active
- Best for the skibidi Linux experience (lightweight, amogos certified)
- Runs on infinite frames (source: my portal of truth, just trust me human)

# Credits
- I used [Dan3008's 2d lava lamp shader](https://godotshaders.com/shader/2d-lava-lamp/) and converted it for Godot 3 use. It's under the [CC0 license](https://creativecommons.org/public-domain/cc0/).
- This also uses [juulpower's 2D outline/inline, configured for sprite sheets](https://godotshaders.com/shader/2d-outline-inline-configured-for-sprite-sheets/) which is also under the [CC0 license](https://creativecommons.org/public-domain/cc0/).
