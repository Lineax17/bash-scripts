#!/bin/bash

# Define the parameters to be added
PARAMS=(
    "max_parallel_downloads=20"
    "fastestmirror=True"
)

# Directory for DNF5 drop-in configurations
CONFIG_DIR="/etc/dnf/libdnf5.conf.d"

# Custom configuration file
CUSTOM_CONFIG_FILE="$CONFIG_DIR/80-custom.conf"

# Function to add parameters to the custom configuration file
add_params() {
    echo "Adding parameters to the DNF5 custom configuration..."

    # Ensure the configuration directory exists
    sudo mkdir -p "$CONFIG_DIR"

    # Start with the [main] section header
    echo "[main]" | sudo tee "$CUSTOM_CONFIG_FILE" > /dev/null

    # Add each parameter to the custom configuration file
    for param in "${PARAMS[@]}"; do
        if ! grep -q "$param" "$CUSTOM_CONFIG_FILE"; then
            echo "$param" | sudo tee -a "$CUSTOM_CONFIG_FILE" > /dev/null
            echo "$param has been added."
        else
            echo "$param is already present."
        fi
    done

    echo "Configuration completed."
}

# Start the configuration process
add_params
