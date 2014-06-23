# my guide on setting up arch

# Setting up the hard drive
# NOTE: to use UEFI as a bootloader, you must boot from the UEFI arch image

* we should use gpt when possible as the partioning scheme

    gdisk /dev/sda   # your mount may vary

Notes:
    * sectors in gparted are in 512 byte sectors
    * 512 mib = 1048576 sectors

Create a partition which:

    * starts at 1048576 (to give room for booting code)
        * the number above specifically gives 512 mib room for the bootloader.
    * ends at some point
    * linux partition 8300

Create another partition for boot:

    * starts as early as possible (although gdisk forced 2048 on me)
    * ends at 1048576
    * EFI partition ef00

Note: create an extra area for swap if you're planning on having
hibernation to disk.

Now format the partitions appropriately. You'll need your root to be
formatted to ext4:

    mkfs.ext4 /dev/sda1

And format the EFI sector to be FAT32:

    mkfs.fat -F32 /dev/sda2

And now you should be able to mount your drive!

    mount /dev/sda1 /mnt

# pacstrap

Now you can install the base os with pacstrap:

    pacstrap /mnt base

# configure the system

Use fstab to create information about how to boot the machine:

    genfstab -p /mnt >> /mnt/etc/fstab

Chroot in:

    arch-chroot /mnt

Write the hostname:

    echo 'tsutsumi-arch-desktop' > /etc/hostname

Symlink the desired local time:

    ln -s /usr/share/zoneinfo/America/Vancouver /etc/localtime

* Go into /etc/local.gen and uncomment en_US.UTF-8

Generate the locale:

    locale-gen

Configure the locale system-wide:

    echo 'LANG="en_US.UTF-8"' > /etc/locale.conf

create a ramdisk with:

    mkinitcpio -p linux

# bootloader

download and install grub:

    pacman -S grub
    pacman -S efibootmgr

# mount the boot partition, and run the grub installer:

    mkdir -p /boot/efi
    mount /dev/sda1 /boot/efi
    grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=grub --recheck --debug
    grub-mkconfig -o /boot/grub/grub.cfg

# final steps

    exit // get out of your ch-rooted environment
    unmount /mnt // unmount your os
    reboot // restart your computer

And you're done!
