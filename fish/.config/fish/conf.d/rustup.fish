if test "$MACHINE_TAG" = "personal"
    if test -f "$HOME/.cargo/env.fish"
        source "$HOME/.cargo/env.fish"
    end
end
