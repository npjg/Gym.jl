using .Gym
env = CartPoleEnv()
ctx = Ctx(env)

display(ctx.s)

#using Blink # when not on Juno
#body!(Blink.Window(), ctx.s)

actions = [sample(env.action_space) for i=1:1000]
i = 1
done = false
reset!(env)
while i <= length(actions) && !done
    global i, done
    a, b, done, d = step!(env, actions[i])

    render(env, ctx)
    i += 1
    sleep(0.1) # to see an animation
end