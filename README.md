# Week 1 (Afternoon) - Boris Bikes Challenge

## Goal
To build a program that emulates all the docking stations, bikes and infrastructure required for a network of Boris Bikes.
This will be developed using TDD.
## Installation
```
$ git clone https://github.com/lukewickens1989/W1Aft_Boris_Bikes.git

NAVIGATE TO DIRECTORY
$ bundle install

```
## Languages/Gems
* Ruby
* RSpec
* Rubocop
## User stories
```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working.

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station.

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked.

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.
```