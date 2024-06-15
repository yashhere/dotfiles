yay -S --needed mise
mise use -g usage


# Install default programming languages
languages=("Node.js" "Go" "Python")

for language in $languages; do
	case $language in
	Node.js)
		mise use --global node@lts
		;;
	Go)
		mise use --global go@latest
		code --install-extension golang.go
		;;
	Python)
		mise use --global python@latest
        mise settings set experimental true
		;;
	esac
done

# Install default databases
dbs=("Redis" "PostgreSQL")

for db in $dbs; do
	case $db in
	Redis)
		sudo docker run -d --restart unless-stopped -p "127.0.0.1:6379:6379" --name=redis redis:7
		;;
	PostgreSQL)
		sudo docker run -d --restart unless-stopped -p "127.0.0.1:5432:5432" --name=postgres16 -e POSTGRES_HOST_AUTH_METHOD=trust postgres:16
		;;
	esac
done