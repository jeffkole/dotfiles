# My dotfiles

```bash
# Clone the repo and initialize the submodules
git clone --recurse-submodules --remote-submodules <url>
# Actually put the content into each submodule's directory (why is this needed? who ever does _not_ want this?)
git submodule foreach "git checkout"
# Set up all the symbolic links
rake
```
