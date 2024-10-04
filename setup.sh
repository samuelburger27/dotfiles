#!/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

cd "${SCRIPT_DIR}" || exit

if [ -d ~/.config/nvim ]; then
    rm -rf ~/.config/nvim
fi

ln -s "${SCRIPT_DIR}/nvim" "${HOME}/.config/nvim"

for file in .*; do
    if [ "${file}" = ".." ] || [ "${file}" = "." ] || [ "${file}" = ".git" ] || [ "${file}" = ".gitignore" ]; then
        continue
    fi

    echo "Seting: ${HOME}/${file}"

    rm -f "${HOME}/${file}"

    ln -s "${SCRIPT_DIR}/${file}" "${HOME}/${file}"
done

echo "DONE"
