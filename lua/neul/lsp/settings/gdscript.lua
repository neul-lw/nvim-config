require'lspconfig'.gdscript.setup {
  on_attach = function (client)
    local _notify = client.notify
    client.notify = function (method, params)
      if method == 'textDocument/didClose' then
          -- Godot doesn't implement didClose yet
          return
      end
      _notify(method, params)
    end
  end
}
