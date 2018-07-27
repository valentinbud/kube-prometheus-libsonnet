{
  local grafanaDashboards = super.grafanaDashboards,

  // Automatically add a uid to each dashboard based on the base64 encoding
  // of the file name.
  grafanaDashboards:: {
    [filename]: grafanaDashboards[filename] {
      uid: std.md5(filename),
    }
    for filename in std.objectFields(grafanaDashboards)
  },
}
