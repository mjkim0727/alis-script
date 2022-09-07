#!/bin/bash

PS3='Enable os-prober?'

select item in "y" "n"
do
    case "$REPLY" in
        1)
            sed -i '/GRUB_DISABLE_OS_PROBER/s/^#//' /etc/default/grub
            grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=arch
            grub-mkconfig -o /boot/grub/grub.cfg
            mkdir /boot/efi/EFI/Boot
            cp /boot/efi/EFI/arch/grubx64.efi /boot/efi/EFI/Boot/BOOTX64.efi
        2)
            grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=arch
            grub-mkconfig -o /boot/grub/grub.cfg
            mkdir /boot/efi/EFI/Boot
            cp /boot/efi/EFI/arch/grubx64.efi /boot/efi/EFI/Boot/BOOTX64.efi
        *)
            exit
            ;;
    esac
 
    echo
done
