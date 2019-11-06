#!/usr/bin/env bash
install_packages() {
	declare -a PACKAGES=(
		appcleaner
		firefox
		homebrew/cask-versions/google-chrome-beta
		hyper
		slack
		spotify
		postman
		spectacle
		the-unarchiver
		visual-studio-code
		vlc
	)

	brew cask install --appdir="/Applications" "${PACKAGES[@]}"
}

main() {
	# Install packages
	install_packages

	# Remove outdated versions
	brew cleanup
}

main