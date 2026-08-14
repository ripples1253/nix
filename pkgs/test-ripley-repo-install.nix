{ writeShellScriptBin }:

writeShellScriptBin "test-ripley-repo-install" ''
  echo "[*] hiya!"
  echo "[*] if you're reading this, your system is set up to use my packages."
  echo "[*] please remember that all packages here are licensed under the OQL, and"
  echo "[*] that you're awesome! <3"
  echo "-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-"
  echo "[*] (while you're at it, if you've got a similar system to mine, try out my"
  echo "[*] kernel fork! it's a downstream of CachyOS's kernel, with more compiler"
  echo "[*] optimisations and hacky patches for issues i run into :3)"
''
