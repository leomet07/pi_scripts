curl https://pyenv.run | bash

file=~/.bashrc

echo "export PATH=\"\$HOME/.pyenv/bin:\$PATH\"" >> $file
echo "eval \"\$(pyenv init --path)\"" >> $file
echo "eval \"\$(pyenv virtualenv-init -)\"" >> $file

echo "Please close and re-open your terminal."