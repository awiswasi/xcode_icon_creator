#!/bin/bash

# Check if an image path was provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <path-to-image>"
    exit 1
fi

# Assign the first command line argument to a variable
IMAGE_PATH="$1"

# Create a folder to store the icons
mkdir ./AppIcons

# iPhone Notifications icon
sips -z 40 40 "$IMAGE_PATH" --out ./AppIcons/AppIcon-40.png
sips -z 60 60 "$IMAGE_PATH" --out ./AppIcons/AppIcon-60.png

# iPhone Settings icon
sips -z 58 58 "$IMAGE_PATH" --out ./AppIcons/AppIcon-58.png
sips -z 87 87 "$IMAGE_PATH" --out ./AppIcons/AppIcon-87.png

# iPhone Spotlight icon
sips -z 80 80 "$IMAGE_PATH" --out ./AppIcons/AppIcon-80.png
sips -z 120 120 "$IMAGE_PATH" --out ./AppIcons/AppIcon-120.png

# iPhone App icon
sips -z 120 120 "$IMAGE_PATH" --out ./AppIcons/AppIcon-120.png
sips -z 180 180 "$IMAGE_PATH" --out ./AppIcons/AppIcon-180.png

# iPad Notiications icon
sips -z 20 20 "$IMAGE_PATH" --out ./AppIcons/AppIcon-20.png
sips -z 40 40 "$IMAGE_PATH" --out ./AppIcons/AppIcon-40.png

# iPad Settings icon
sips -z 29 29 "$IMAGE_PATH" --out ./AppIcons/AppIcon-29.png
sips -z 58 58 "$IMAGE_PATH" --out ./AppIcons/AppIcon-58.png

# iPad Spotlight icon
sips -z 40 40 "$IMAGE_PATH" --out ./AppIcons/AppIcon-40.png
sips -z 80 80 "$IMAGE_PATH" --out ./AppIcons/AppIcon-80.png

# iPad App icon
sips -z 76 76 "$IMAGE_PATH" --out ./AppIcons/AppIcon-76.png
sips -z 152 152 "$IMAGE_PATH" --out ./AppIcons/AppIcon-152.png

# iPad Pro (12.9-inch) App icon
sips -z 167 167 "$IMAGE_PATH" --out ./AppIcons/AppIcon-167.png

# App Store iOS icon
sips -z 1024 1024 "$IMAGE_PATH" --out ./AppIcons/AppIcon-1024.png

# Add a custom icon size
#sips -z "$X_PIXELS" "$Y_PIXELS" "$IMAGE_PATH" --out ./AppIcons/"$OUT_FILE_NAME".png
