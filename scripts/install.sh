# Uninstall the previous version
if command -v solar &> /dev/null
then
    echo "Removing previous version..."
    SOLAR_PATH=$(command -v solar)
    if rm "$SOLAR_PATH" ; then
        echo "Previous version removed."
    else
        echo "INSTALLATION FAILED"
        exit 1
    fi
fi

# Check if the Rust toolchain is installed
if ! command -v rustc &> /dev/null
then
    echo "Installing Rust toolchain..."
    if curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh ; then
        echo "Rust toolchain installed successfully."
    else
        echo "INSTALLATION FAILED"
        exit 2
    fi
fi



echo "INSTALLTION SUCCESSFULLY COMPLETED"