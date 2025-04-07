return {
    cmd = { "pyright-langserver", "--stdio" },
    filetypes = { "py", "python" },
    root_markers = { ".git", "requirements.txt", ".venv", "venv" },
    settings = {
      python = {
        analysis = {
          autoSearchPaths = true,
          diagnosticMode = "workspace",
          useLibraryCodeForTypes = true
        }
      }
    }
}
