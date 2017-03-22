defmodule Mix.Tasks.UseCreatedAt do
  use Mix.Task

  @shortdoc "Copy Phoenix generator templates and change timestamps to use :created_at"

  def run(_args) do
    Mix.shell.info "Copying Phoenix templates to priv/templates"
    Mix.shell.cmd("mkdir priv/templates")
    Mix.shell.cmd("cp -r deps/phoenix/priv/templates/phoenix.gen.model priv/templates")
    Mix.shell.cmd("cp -r deps/phoenix/priv/templates/phx.gen.schema priv/templates")

    Mix.shell.info "Changing inserted_at to created_at"
    Mix.shell.cmd("grep -rl 'timestamps' priv/templates | xargs sed -i '' 's/timestamps()/timestamps(inserted_at: :created_at)/g'")

    Mix.shell.info "All done!!!"
  end
end