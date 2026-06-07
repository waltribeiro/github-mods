# _MODDING.gd

"""

You can change the battle music in [GAME NAME]. No tools needed. No code needed.
You add files to a folder. The game finds them at startup.

This is version 1 of modding. More categories (sprites, characters) come later.

---

## Quick start: replace the battle music

**1. Find the mods folder.**

The game makes this folder the first time you run it:

- **Windows:** `%APPDATA%\Godot\app_userdata\[GAME NAME]\mods\`
- **Mac:** `~/Library/Application Support/Godot/app_userdata/[GAME NAME]/mods/`
- **Linux:** `~/.local/share/godot/app_userdata/[GAME NAME]/mods/`

**2. Make your mod folder.**

Inside `mods/`, make a folder with any name, then a `music/` folder inside it:

```
mods/
  my_first_mod/
    music/
      battle_01_fight.mp3
```

**3. Name your file after the clip you want to replace.**

The first battle has 4 music clips. A file with the same name replaces that clip:

| Filename | When it plays | BPM | Key | Notes |
|---|---|---|---|---|
| `battle_01_start.mp3` | battle opens | [BPM] | [KEY] | |
| `battle_01_intro.mp3` | before the fight | [BPM] | [KEY] | |
| `battle_01_fight.mp3` | main combat | [BPM] | [KEY] | plays the longest |
| `battle_01_end.mp3` | match end | [BPM] | [KEY] | |

You can replace one clip, or all four.

**4. Restart the game.** Your music plays in the battle.

---

## Rules

- Formats: `.mp3`, `.ogg`, or `.wav`
- Your track **loops**. A clip can play for 20 seconds or 5 minutes — it depends
  on the fight. Make sure the end flows back into the start.
- The game switches clips at story moments, not at track ends. Your durations
  do not need to match the originals.
- Any other filename loads as a new track with that name. It does not replace
  anything yet. Future features will use these.
- Exact spelling matters. `battle_01_fight.mp3` works. `Battle_01_Fight.mp3`
  does not.

---

## Something not working?

Open `mods/mod_log.txt` (next to your mod folder). Every file is listed there:

```
LOADED  my_first_mod/music/battle_01_fight.mp3 → music "battle_01_fight"
SKIPPED my_first_mod/music/notes.txt — not a supported audio format (.ogg, .mp3, .wav)
```

A skipped file never breaks the game. The game just plays its own music for
that clip.

---

## Sharing your mod

Zip your mod folder (`my_first_mod/`) and share it anywhere. To install
someone's mod: unzip it into `mods/` and restart the game.

[GAME NAME] is licensed [CC LICENSE]. Mods are yours.

---

## Example mod

Download [example_music_pack.zip](LINK) — a working mod with the correct
folder structure. Unzip it into `mods/`, restart, and hear it. Then swap in
your own files.

---

## Coming later

- Character sprite replacement
- Custom translations
- New fighters

Questions or ideas: [LINK TO ISSUES / DISCORD]


"""
