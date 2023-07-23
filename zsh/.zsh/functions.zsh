# Colormap
function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

# Change directory to  path of the frontmost Finder window
function cdf() {
  cd "$(pfd)"
}

# Return the path of the frontmost Finder window
function pfd() {
  osascript 2>/dev/null <<EOF
    tell application "Finder"
      return POSIX path of (insertion location as alias)
    end tell
EOF
}

# Fetch public IP address and location
function ipp() {
  curl ipinfo.io/ip && echo && curl ipinfo.io/city && curl ipinfo.io/region && curl ipinfo.io/country
}

# Rename all filenames in the current directory to lowercase
function tolower() {
  for f in *; do mv "$f" "$f.tmp"; mv "$f.tmp" "`echo $f | tr "[:upper:]" "[:lower:]"`"; done
}

# Replace spaces with hyphens
function todash() {
  for f in *; do mv "$f" "$f.tmp"; mv "$f.tmp" "`echo $f | tr "[:upper:]" "[:lower:]" | tr " " "-"`"; done
}

# To lowercase and replace spaces with hyphens
function told() {
  tolower && todash
}
