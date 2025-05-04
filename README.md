# COBOL to WebAssembly (`cobol2wasm`)

This project demonstrates how to compile COBOL source code to WebAssembly (WASM) using GnuCOBOL and Emscripten. The result can be run in any modern browser or Node.js.

## 🛠 Requirements

- [GnuCOBOL](https://gnucobol.sourceforge.io/)
- [Emscripten](https://emscripten.org/)
- bash (Linux/macOS) or WSL (Windows)

## 📦 Project Structure

```
cobol2wasm/
├── cobol/              # COBOL source files
│   ├── hello.cbl      # Simple hello world example
│   ├── fibonacci.cbl  # Fibonacci sequence calculator
│   └── calculator.cbl # Simple calculator
├── c_output/          # Intermediate C files
├── wasm_output/       # Final .wasm and JS files
├── html_runner/       # Minimal HTML to test output
│   └── index.html
├── scripts/           # Build scripts
│   └── build.sh
├── .gitignore        # Git ignore rules
└── README.md
```

## 🚀 Build & Run

```bash
cd scripts
bash build.sh
```

This will compile all COBOL files in the `cobol/` directory to WebAssembly. The output files will be in the `wasm_output/` directory.

To test the output, open `html_runner/index.html` in your browser.

## 📚 Examples

The project includes several example programs:

1. `hello.cbl` - A simple hello world program
2. `fibonacci.cbl` - Calculates and displays the Fibonacci sequence
3. `calculator.cbl` - A simple calculator that supports basic arithmetic operations

## 🔧 Development

To add a new COBOL program:
1. Create a new `.cbl` file in the `cobol/` directory
2. Run the build script
3. The new program will be automatically compiled to WebAssembly

## 📝 Notes

- The build process first converts COBOL to C using GnuCOBOL
- Then it compiles the C code to WebAssembly using Emscripten
- The resulting `.wasm` and `.js` files can be used in any WebAssembly-compatible environment

## 🤝 Contributing

Feel free to submit issues and enhancement requests!
