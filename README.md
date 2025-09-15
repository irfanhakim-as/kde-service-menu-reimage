# KDE 6 Service Menu ReImage

![Version: 2.6.0](https://img.shields.io/badge/Version-2.6.0-informational?style=flat)

## About

This is an unofficial port of the [KDE 5 Service Menu ReImage](https://store.kde.org/p/1231579) Dolphin Service Menu to KDE Plasma 6. This fork aims to stay as close as possible to the original while actively maintaining it by fixing bugs, adding (strictly necessary) new features, and improving existing ones.

## Dependencies

> [!NOTE]  
> Most of these packages should already be installed by default, install those required that are missing.

- `bash`
- `dolphin`
- `imagemagick`
- `jhead` (Optional - required by metadata actions)
- `kdialog`

## Features

This Service Menu adds many image-related actions to Dolphin, such as:

- Compress and resize
  - Make progressive
  - Complete optimization for web
  - Compress image to varying quality
  - Resize image to varying sizes and resolutions

- Convert and rotate
  - Convert images to various formats including animated image files and PDFs
  - Convert images to Base64
  - Generate favicons
  - Rotate image to varying angles
  - Auto-rotate with Exif
  - Flip image vertically or horizontally

- Metadata
  - Rename from Exif or file's date
  - Set file date from Exif date or file's name
  - Set Exif date from file's date or name
  - Add comment
  - View metadata
  - Extract metadata to file
  - Delete comment field
  - Strip Exif section
  - Delete IPTC section
  - Delete XMP section
  - Strip all unnecessary data
  - Strip all metadata
  - Add timestamp from Exif

- Tools
  - Create animated GIF
  - Append to right
  - GrayScale
  - Sepia
  - Change transparent to color
  - Add colored or transparent border
  - Drop shadow

## Installation

Follow these steps to install or update the program for a single user or system-wide:

1. Ensure that you have all of the required program [dependencies](#dependencies) installed.

2. Clone the repository to the home directory (i.e. `~/.kde-service-menu-reimage`):

    ```sh
    git clone https://github.com/irfanhakim-as/kde-service-menu-reimage.git ~/.kde-service-menu-reimage
    ```

3. Get into the local repository:

    ```sh
    cd ~/.kde-service-menu-reimage
    ```

4. Install using the provided installer script.

    To install the program for a single user, simply run the script as is:

    ```sh
    ./install.sh
    ```

    By default, this will install the program to the `~/.local` prefix. Please ensure that the `~/.local/bin` directory is in your `PATH` environment variable.

    **Alternatively**, to install the program system-wide, run the script with `sudo`:

    ```sh
    sudo ./install.sh
    ```

## Uninstallation

Follow these steps to uninstall the program:

1. Get into the local repository:

    ```sh
    cd ~/.kde-service-menu-reimage
    ```

2. Uninstall using the provided uninstaller script:

    If you have previously installed the program for a single user, simply run the script as is:

    ```sh
    ./uninstall.sh
    ```

    **Alternatively**, if you have installed the program system-wide, run the script with `sudo`:

    ```sh
    sudo ./uninstall.sh
    ```
