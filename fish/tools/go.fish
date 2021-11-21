# Go (if go exists)
if command -vq go
    if not string match -q '*go\/libexec*' $PATH
        set -x GOPATH $HOME/go-workspace
        fish_add_path $GOPATH
        fish_add_path $GOPATH/bin
    end
end
