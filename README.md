# Umbrella Distillery Demo

So, this is an umbrella application which has a regular `GenServer` based Elixir application running alongside a Phoenix application - they can both be hot updated:

- `mix deps.get`
- `MIX_ENV=prod mix deps.get && MIX_ENV=prod mix release`
- run `_build/prod/rel/umbrella_distillery_demo/bin/umbrella_distillery_demo foreground` (keep it running in a second terminal)
- make some change to one (or both) of the apps
- bump versions in `apps/blog/mix.exs`, `apps/clock/mix.exs` and `rel/config.exs` to `0.2.0`
- `MIX_ENV=prod mix release --upgrade`
- `_build/prod/rel/umbrella_distillery_demo/bin/umbrella_distillery_demo upgrade 0.2.0`
- see changes happen live
