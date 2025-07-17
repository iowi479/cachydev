function fish_prompt
    set_color 9ccfd8  # Pine
    echo -n (prompt_pwd)

    set_color 31748f  # Foam
    echo -n (fish_git_prompt)

    set_color f6c177  # Gold
    echo -n " > "

    set_color normal
end
