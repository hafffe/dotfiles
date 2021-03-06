# Dotfiles
> Dotfiles with zsh, antigen, pure prompt, git, brew, etc

## Install
```
$ git clone https://github.com/alonalon/dotfiles .dotfiles
$ cd dotfiles
$ ./install
```

### Setup script will do
- Add [dotbot](https://github.com/anishathalye/dotbot) as submodule
- Install antigen and generate a new antigen.zsh file in zsh path
- Install [Homebrew](https://github.com/Homebrew/brew)
- Install node with [N Node version manager](https://github.com/tj/n)
- Set defaults on macOS
- Set zsh as default shell


## If use git-hooks and git-templates

```
git config --global user.name "not-configured"
git config --global --unset user.email
```
#### Export variables for git
```
$ echo "export WORK_EMAIL=email@my-business.com" >> ~/.privaterc
$ echo "export WORK_GIT_HOSTNAME=some-hostname" >> ~/.privaterc
```


### Link `.privaterc` to sourcefiles in zshrc

```
$ source ~/.privaterc
```

### Note:
If git-template hooks are not planned to be used, set / keep correct email in gitconfig
