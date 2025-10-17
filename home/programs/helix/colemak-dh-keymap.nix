{ ... }:
{
  programs.helix = {
    settings = {

      # Normal Operations
      keys.normal = {

        # Moving around
        n = "move_char_left";
        e = "move_line_down";
        i = "move_line_up";
        o = "move_char_right";

        # Lines & inserting
        h = "insert_mode";
        H = "insert_at_line_start";
        y = "open_below";
        Y = "open_above";

        # Yanking & pasting
        u = "yank";
        ";" = "paste_after";
        ":" = "paste_before";
        l = "undo";
        L = "redo";

        # Searching
        k = "search_next";
        K = "search_prev";

        # NOOP
        I = "no_op";
        O = "command_mode";

        # to organise
        N = "keep_selections";
        E = "join_selections";
        j = "move_next_word_end";
        J = "move_next_long_word_end";
      };

      # Select
      # keys.select = {

      # };
    };
  };
}

#
# Further reading
#
# This keymap was heavily inspired by
# https://github.com/helix-editor/helix/discussions/11832
#
# Further modifications of my own were made based on personal
# preference and the positions of keys on my ergo keyboard
#
