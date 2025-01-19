(call
  function: (attribute
              object: (python_identifier) @_re)
  arguments: (argument_list (python_string
                              (string_content) @injection.content) @_string)
  (#eq? @_re "re")
  (#lua-match? @_string "^r.*")
  (#set! language "regex"))

((shell_content) @injection.content
  (#set! language "bash"))

((comment) @injection.content
 (#set! language "comment"))
