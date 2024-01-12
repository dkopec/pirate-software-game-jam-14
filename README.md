# pirate-software-game-jam-14
My submission for [Pirate Software's Game Jam 14](https://itch.io/jam/pirate).

You can play the game here:

- Play in Browser: https://dkopec.github.io/pirate-software-game-jam-14/
- Windows version can be downloaded here: https://github.com/dkopec/pirate-software-game-jam-14/releases/latest
- Or from Itchio: https://dkopec.itch.io/pirate-software-game-jam-14-submission

View the [Game Design Document here.](./GAMEDESIGNDOC.md)

## Usage
This project has all the godot game project files in the ```./src``` folder. Use the Godot Project interface or run ```godot -e``` from the src folder to load the editor.

You can download godot from [the official github](https://github.com/godotengine/godot/releases/tag/3.5.2-stable). Note This project uses gotdot v3.5.2 for web compatibility reasons.

[Release v0.1.4](https://github.com/dkopec/pirate-software-game-jam-14/tree/v0.1.4) is a very basic project that can be used a template for your own.

I've added some basic guidlines how to develop in the [Contributing Document](./CONTRIBUTING.md). You can use this as a base form your own but keep in mind the automation for releases uses the Conventional Commits.

### CICD
The CICD requires you to create a github repo secret (```https://github.com/<your user name>/<project id>/settings/secrets/actions/new```) called ITCHIO_BUTLER_API which you can get from https://itch.io/user/settings/api-keys and generate one.

It also needs you to create github repo variables (```https://github.com/<your user name>/<project id>/settings/variables/actions/new```):

- ITCHIO_BUTLER_GAME which is the id of the game project on itch.io
- ITCHIO_BUTLER_USER which is your user name on itch.io
