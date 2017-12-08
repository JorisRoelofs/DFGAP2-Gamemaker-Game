for(i = 0; i < argument_count; i++)
{
    if(keyboard_check(ord(string(argument[i])))) return argument[i];
}
