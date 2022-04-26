#Project

using CSV, DataFrames, Statistics, Distributions, StatsPlots, StatsBase

abortion = CSV.read("C:\\Users\\luisa\\Documents\\Fall 2021\\STAT\\wvs_usa_abortion.csv", DataFrame)

describe(abortion)

select!(abortion, Not([:Column1, :wvsccode]))

abortion1 = dropmissing(abortion)

describe(abortion1)

#Tests
#mean
mean(abortion1.justifiability)
mean(abortion1.age)
mean(abortion1.collegeed)
mean(abortion1.female)
mean(abortion1.unemployed)
mean(abortion1.ideology)
mean(abortion1.satisfincial)
mean(abortion1.godimportant)
mean(abortion1.tiolpride)

#median
median(abortion1.justifiability)
median(abortion1.age)
median(abortion1.ideology)
median(abortion1.satisfincial)
median(abortion1.godimportant)
#