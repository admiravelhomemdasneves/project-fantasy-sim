/// @description Insert description here
// You can write your code in this editor

//Check every frame to see if we've got enough players to start gameplay

if (input_multiplayer_is_finished())
{
    if (input_check_long("action", 0) || input_check_long("action", 1))
    {
        input_source_mode_set(INPUT_SOURCE_MODE.FIXED);
    }
}

if (array_length(input_players_get_status().new_disconnections) > 0)
{
    input_source_mode_set(INPUT_SOURCE_MODE.JOIN);
}