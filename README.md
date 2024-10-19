# KDE 6 Service Menu ReImage

![Version: 2.6.0](https://img.shields.io/badge/Version-2.6.0-informational?style=flat)

## About

This is an unofficial port of the [KDE 5 Service Menu ReImage](https://store.kde.org/p/1231579) Dolphin Service Menu to KDE Plasma 6. This fork aims to stay as close as possible to the original while actively maintaining it by fixing bugs, adding (strictly necessary) new features and improving existing ones.

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

## Contributing

Here are some guidelines on how you could contribute to the project:

### Reporting Issues

When creating an issue, please include the following information to help with troubleshooting:

- **System Information**:

  - Operating System and version (i.e. `Debian 12`).
  - Kernel version (i.e. `6.1.0-25-amd64`).
  - Desktop environment (if applicable).

- **Software Information**:

  - Method of installing `kde-service-menu-reimage` (i.e. `AUR`).
  - Version of `kde-service-menu-reimage` you are using.

- **Steps to Reproduce**:

  - Provide exact, step-by-step instructions to replicate the issue.
  - Include expected and actual behavior.
  - Attach any relevant logs or error messages (if applicable).

### Contributing Code

To contribute code to the project, please follow these best practices:

- **Keep Commits Small and Focused**:

  - Avoid large commits or pull requests (PRs). Focus on one issue or feature per PR.
  - Small and focused changes are easier to review, test, and maintain.

- **Make Meaningful Changes**:

  - Ensure your code contributions have actual purpose and are not purely preferential (i.e. avoid changes like replacing double quotes with single quotes without functional reasons).
  - Include a clear explanation of the problem your change solves or the enhancement it introduces (i.e. in code, commit, and/or PR description).

- **Follow Existing Code Conventions**:

  - Try to match the style and conventions of the existing codebase.
  - For example: If the existing code defines variables using `${var}`, follow that format instead of using `$var`.
  - This helps to keep the codebase consistent and clean.
