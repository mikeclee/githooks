How to Create Changelog
=======================

### Gathering of PR commits between tags (hashes)
1. git log --pretty=oneline <tagA>...<tagB>
1. serach-n-replace: `/^.* (Merge)/$1/`
1. remove all lines not starting with *Merge*
1. search-n-replace: `/^(Merge)/* $1/`
1. update this to the *Changelog*
