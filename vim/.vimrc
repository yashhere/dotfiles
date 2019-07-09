let configs = [
\  "general",
\  "ui",
\  "commands",
\  "plugins",
\  "plugin-settings",
\]

" Change shell
set shell=bash    " Vim expects a POSIX-compliant shell, which Fish (my default shell) is not

for file in configs
  let x = expand("~/.vim/".file.".vim")
  if filereadable(x)
    execute 'source' x
  endif
endfor
