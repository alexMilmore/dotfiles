-- config for mfussenegger/nvim-lint

require('lint').linters_by_ft = {
  cpp = {'clangtidy',},
}

vim.cmd[[au BufWritePost <buffer> lua require('lint').try_lint()]]

-- valid linters
-- ansible_lint
-- checkstyle
-- chktex
-- clangtidy
-- clj-kondo
-- codespell
-- cppcheck
-- clazy
-- eslint
-- fennel
-- flake8
-- flawfinder
-- golangcilint
-- hadolint
-- hlint
-- tidy (html)
-- inko
-- languagetool
-- luacheck
-- nix
-- markdownlint
-- mlint
-- mypy
-- pylint
-- revive
-- ruby
-- selene
-- shellcheck
-- standardrb
-- statix
-- stylelint
-- vale
-- vint
-- pycodestyle
