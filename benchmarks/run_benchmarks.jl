using Performance2
using BenchmarkTools

# Create lists of different sizes. For each list size, you'll evaluate two cases:
#  - one where there are at most 10 distinct items (e.g., `list = rand(1:10, n)`)
#  - one where the number of distinct items is half the list length (`list = rand(1:n÷2, n)`)
# Then run both `unique_2loops` and `unique_set` on both lists, measuring the elapsed time with `@belapsed`
# (from BenchmarkTools.jl). Put the list creation in a `setup` block; you can see a demo in the README for BenchmarkTools.
# Hints:
# - inside a comprehension I would typically use the syntax `@belapsed(<code goes here>, setup=(<setup code>))`
#   to avoid any ambiguity about where the expressions passed to the macro `@belapsed` start and stop.
# - you may have to use `$n` to bring an outside variable into the expression passed to `@belapsed`

list_sizes = [10, 10^2, 10^3, 10^4, 10^5]

time_set10 = Vector{Float64}[]
time_sethalf = Vector{Float64}[]

time_2loops10 = Vector{Float64}[]
time_2loopshalf = Vector{Float64}[]

n = 0

for i in 1:length(list_sizes)
    global n = list_sizes[i]

    push!(time_2loops10,[n,@belapsed(unique_2loops(data),setup=(data=rand(1:10,n)))])
    push!(time_2loopshalf,[n,@belapsed(unique_2loops(data),setup=(data=rand(1:n÷2,n)))])

    push!(time_set10,[n,@belapsed(unique_set(data),setup=(data=rand(1:10,n)))])
    push!(time_sethalf,[n,@belapsed(unique_set(data),setup=(data=rand(1:n÷2,n)))])

end