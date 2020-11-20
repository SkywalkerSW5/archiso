# this part removes work/iso dir to make mkarchiso work right
echo "Cleaning work and ISO dirs..."
sudo rm -r ./archiso/iso 2> ./error.log
sudo rm -r ./archiso/work 2> ./error.log
mkdir ./archiso/work
mkdir ./archiso/iso
sudo mkarchiso -v -o ./archiso/iso/ -w ./archiso/iso/ -C ./archiso/pacman.conf ~/.stuff/archiso/archiso
