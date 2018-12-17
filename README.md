# Umbrella Distillery Demo

So, this is an umbrella application which has a regular `GenServer` based Elixir application running alongside a Phoenix application - they can both be hot updated:

- `mix deps.get`
- `MIX_ENV=prod mix deps.get && MIX_ENV=prod mix release`
- `_build/prod/rel/umbrella_distillery_demo/bin/umbrella_distillery_demo foreground` (keep it running in a second terminal)
- make some changes to one (or both) of the apps
- bump versions in `apps/blog/mix.exs`, `apps/clock/mix.exs` and `rel/config.exs` to `0.2.0`
- `MIX_ENV=prod mix release --upgrade`
- `_build/prod/rel/umbrella_distillery_demo/bin/umbrella_distillery_demo upgrade 0.2.0`
- see changes happen live

### To deploy with edeliver and hot updates (without auto-versioning (yet))

- set correct IPs and user in `.deliver/config`
- make a change
- bump version in `mix.exs` of the child app/s you change
- bump version in `rel/config.exs`
- `git add . && git commit -am "message"`
- `git tag -a <version> -m "message"`
- `mix edeliver build upgrade production --from=<old version> --to=<new version>`
- `mix edeliver deploy upgrade to production`
