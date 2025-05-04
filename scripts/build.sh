#!/bin/bash
# build.sh - Compile COBOL to WebAssembly via GnuCOBOL and Emscripten

set -e

mkdir -p c_output wasm_output

# Function to compile a single COBOL file
compile_cobol() {
    local cobol_file=$1
    local base_name=$(basename "$cobol_file" .cbl)
    
    echo "Compiling $cobol_file..."
    
    # Step 1: Compile COBOL to C
    cobc -C "$cobol_file" -o "c_output/$base_name.c"
    
    # Step 2: Compile C to WASM using Emscripten
    emcc "c_output/$base_name.c" -o "wasm_output/$base_name.js" \
        -s WASM=1 \
        -s EXPORTED_FUNCTIONS='["_main"]' \
        -s NO_EXIT_RUNTIME=1 \
        -s "EXPORTED_RUNTIME_METHODS=['cwrap','ccall']"
    
    echo "Built $base_name.wasm and $base_name.js"
}

# Compile all COBOL files
for cobol_file in cobol/*.cbl; do
    compile_cobol "$cobol_file"
done

echo "Build complete. Check wasm_output/ directory for results."
