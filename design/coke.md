# Coal coke #

Coal is really worthless late game, because you've likely upgraded to a
large array of electric furnaces, full of speed modules for that juicy
throughput. You're also likely using solid fuel or better in trains, for the
nice speed bonuses.

So we devised a solution - coal can be refined in an oil refinery (because why
make a separate machine when the coking process is a type of [dry distillation],
just like the distillation of oil into petroleum?) into coal coke, as well as
coal tar.

The coal coke produced is more efficient and burns hotter than regular coal, so
it has a higher energy output. This is because it's extremely porous, and is
almost entirely carbon. It burns hot enough that most blast furnaces in steel
mills end up requiring coal coke to make steel, because turning iron into steel
requires an extremely high temperature and coal alone simply doesn't cut it.

So the process ends up being something like this:
- Get coal.
- Perform the coking operation on it
  - Since we're not making a separate oven, that's just refining it
- Get coal coke and put it in a blast furnace with iron
- You now have steel

This eliminates a few steps and is also a more efficient process, requiring
slightly less iron per operation.

[dry distillation]: https://en.wikipedia.org/wiki/Dry_distillation


## TODO ##

- Dedicated coke oven??? (Seems unnecessary - a dedicated machine for one
  recipe?)
- Blast furnace??? (Necessary - as much as I hate "one machine for one single
  recipe" we can't just add furnace recipes without huge conflicts or clunky
  behaviour)
