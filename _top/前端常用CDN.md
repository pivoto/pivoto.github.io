# 常用 CDN

##  https://www.jsdelivr.com/

### npm

```
// load any project hosted on npm
https://cdn.jsdelivr.net/npm/package@version/file

// load jQuery v3.2.1
https://cdn.jsdelivr.net/npm/jquery@3.2.1/dist/jquery.min.js

// use a version range instead of a specific version
https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js
https://cdn.jsdelivr.net/npm/jquery@3/dist/jquery.min.js

// omit the version completely to get the latest one
// you should NOT use this in production
https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js

// add ".min" to any JS/CSS file to get a minified version
// if one doesn't exist, we'll generate it for you
https://cdn.jsdelivr.net/npm/jquery@3.2.1/src/core.min.js

// omit the file path to get the default file
https://cdn.jsdelivr.net/npm/jquery@3.2

// add / at the end to get a directory listing
https://cdn.jsdelivr.net/npm/jquery/
```

### github

```
// load any GitHub release, commit, or branch
// note: we recommend using npm for projects that support it
https://cdn.jsdelivr.net/gh/user/repo@version/file

// load jQuery v3.2.1
https://cdn.jsdelivr.net/gh/jquery/jquery@3.2.1/dist/jquery.min.js

// use a version range instead of a specific version
https://cdn.jsdelivr.net/gh/jquery/jquery@3.2/dist/jquery.min.js
https://cdn.jsdelivr.net/gh/jquery/jquery@3/dist/jquery.min.js

// omit the version completely to get the latest one
// you should NOT use this in production
https://cdn.jsdelivr.net/gh/jquery/jquery/dist/jquery.min.js

// add ".min" to any JS/CSS file to get a minified version
// if one doesn't exist, we'll generate it for you
https://cdn.jsdelivr.net/gh/jquery/jquery@3.2.1/src/core.min.js

// add / at the end to get a directory listing
https://cdn.jsdelivr.net/gh/jquery/jquery/
```

## https://unpkg.com/

```
unpkg.com/:package@:version/:file
```

Using a fixed version:
```
unpkg.com/react@16.7.0/umd/react.production.min.js
unpkg.com/react-dom@16.7.0/umd/react-dom.production.min.js
```
You may also use a semver range or a tag instead of a fixed version number, or omit the version/tag entirely to use the latest tag.
```
unpkg.com/react@^16/umd/react.production.min.js
unpkg.com/react/umd/react.production.min.js
```
If you omit the file path (i.e. use a “bare” URL), unpkg will serve the file specified by the unpkg field in package.json, or fall back to main.
```
unpkg.com/jquery
unpkg.com/three
```
Append a / at the end of a URL to view a listing of all the files in a package.
```
unpkg.com/react/
unpkg.com/react-router/
```




