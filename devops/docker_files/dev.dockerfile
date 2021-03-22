FROM elixir:1.11-slim

# [inotify-tools] required for Phoenix live-reloading
# [git] required for devcontainer functioning
RUN apt-get update && \
    apt-get install -y inotify-tools git && \
    mix do local.hex --force, local.rebar --force

ENTRYPOINT ["/bin/bash"]
CMD ["-c", "while sleep 1000; do :; done"]