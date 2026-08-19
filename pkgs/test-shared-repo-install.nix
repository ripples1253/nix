{ writeShellScriptBin }:

writeShellScriptBin "test-shared-repo-install" ''
  echo "[*] hiya!"
  echo "[*] if you're reading this, your system is set up to use our packages."
  echo "[*] please remember that all packages here are licensed under the OQL, and"
  echo "[*] that you're awesome! <3"
''
