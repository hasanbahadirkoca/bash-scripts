#!/bin/bash

# [EN] This script recursively extracts all RAR files in the current directory and its subdirectories. 
# Make sure to install 'rar' first with 'brew install rar'.
# [TR] Bu script, mevcut dizindeki ve alt dizinlerdeki tüm RAR dosyalarını tekrarlı bir şekilde ayıklar.
# Öncesinde 'brew install rar' komutu ile 'rar' programını yüklediğinizden emin olun.

function recursive_unrar {
    for file in *.rar; do
        if [[ -f "$file" ]]; then
            unrar x "$file"
            rm "$file"
        fi
    done

    for dir in */; do
        if [[ -d "$dir" ]]; then
            pushd "$dir"
            recursive_unrar
            popd
        fi
    done
}

recursive_unrar

