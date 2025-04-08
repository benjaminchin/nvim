return {
    cmd = { 'typescript-language-server', '--stdio' },
    root_markers = { '.git', 'package.json', 'package-lock.json', 'tsconfig.json' },
    filetypes = { 'typescript', 'typescriptreact', 'typescript.tsx', 'ts', 'tsx' },
}
