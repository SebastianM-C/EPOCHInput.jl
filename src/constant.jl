function process_value(::Val{:constant}, key, val, global_p, current_p)
    k = Symbol(key)
    params = isempty(current_p) ? global_p : merge!(global_p, current_p)
    val = parse_value(k, val, params)
    current_p = push!!(current_p, k=>val)
    global_p = push!!(global_p, k=>val)

    return global_p, current_p
end
