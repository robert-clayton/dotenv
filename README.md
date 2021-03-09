# dotenv

```bash
sudo rm ~/.bashrc

ln -s .bashrc ~/.bashrc
for file in bin/*; do
    ln -s $file ~/.local/bin/$file
done

bash
```