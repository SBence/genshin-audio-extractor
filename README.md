# Genshin Audio Extractor

## Linux-only setup

1. Install `ffmpeg-compat-57`. For example, on Arch Linux, assuming AUR helper `yay`

```
yay -S ffmpeg-compat-57
```

2. Install the rest of the dependenies by running `setup.sh`

```
./setup.sh
```

## Usage

1. Extract your audio files from the Genshin Impact datafiles.

```
GenshinImpact_Data/StreamingAssets/Audio/GeneratedSoundBanks/Windows
```

Move the .pck files you want to extract into a folder. The files *must* be directly inside the folder - no subdirectories.

2. Install dependencies

```bash
npm install
```

3. Run the program

```bash
node decode.js --input <your specified input>
```

The files in `<your specified input>` will be converted to .wav files inside `./output`.

## Options

You can pass an optional argument to export the audio in different formats.

Valid arguments are `flac`, `mp3`, `ogg` and `all`

```bash
node decode.js --input flac --audio flac
```

Encoding details

```
FLAC:  Compression level 12, 44,1 kHz, 16-bit
OGG Vorbis: ~160 kbit/s VBR, 44,1 kHz
MP3:        ~175 kbit/s VBR, 44,1 kHz
```

### Todo:

- [ ] Clean up dependencies

- [ ] Cross-Platform
    - [x] Windows
    - [x] Linux
    - [ ] macOS

- [x] Multi-export support (FLAC, MP3, etc)

- [x] Automatically remove processed files once complete

- [x] Multithreading

- [ ] More?
