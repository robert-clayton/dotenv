# dotenv

```bash
sudo rm ~/.bashrc

mkdir ~/.local/bin/
ln -s .bashrc ~/.bashrc
for file in bin/*; do
    ln -s $file ~/.local/$file
done

bash
```
