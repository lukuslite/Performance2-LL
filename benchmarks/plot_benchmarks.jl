using PyPlot

# Write a plotting script to display the results from `run_benchmarks.jl`.
# The length of the input list should be on the x-axis, and the y-axis should show the runtime.
# You can use linear or log-log scales.

x1 = []
y1 = []
x2 = []
y2 = []
x3 = []
y3 = []
x4 = []
y4 = []

for i in 1: length(time_2loops10)
    push!(x1,time_2loops10[i][1])
    push!(y1,time_2loops10[i][2])

    push!(x2,time_2loopshalf[i][1])
    push!(y2,time_2loopshalf[i][2])

    push!(x3,time_set10[i][1])
    push!(y3,time_set10[i][2])

    push!(x4,time_sethalf[i][1])
    push!(y4,time_sethalf[i][2])
end
pygui(true)
plot(x1,y1)
matplotlib.pyplot.xscale("log")
matplotlib.pyplot.yscale("log")
show()

plot(x2,y2)
matplotlib.pyplot.xscale("log")
matplotlib.pyplot.yscale("log")
show()

plot(x3,y3)
matplotlib.pyplot.xscale("log")
matplotlib.pyplot.yscale("log")
show()

plot(x4,y4)
matplotlib.pyplot.xscale("log")
matplotlib.pyplot.yscale("log")
show()