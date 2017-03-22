# Collection of Mix Tasks for working with Phoenix

## Use Created At
Run `mix use_created_at` at the root of the project after installing Phoenix to copy the default generators for
Phoenix models/schemas to the `priv/templates` directory and change them to use `created_at` instead of
`inserted_at` for Rails compatibility.