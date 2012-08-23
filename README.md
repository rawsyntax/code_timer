= CodeTimer

A tool for roughly and quickly measuring your slow code.  This is not
intended to be a sophisticated tool, but rather a quick off the cuff
way to measure which part of your code is slow.

It's profiling with print statements.

To use the tool first instantiate it:

    ct = CodeTimer.new

Then insert named section markers throughout your code:

    ct.start("Part1")
    ...
    ct.start("Part2")

When you're done measuring:

    ct.end

Which returns a formmated string containing the results:

    Total Time: 17s
    Part1:	 11% / 2s
    Part2:	 29% / 5s
    Part3:	 47% / 8s
    Part4:	 11% / 2s

As seen above, the slowest portion of the code is between the Part3 and Part4 markers.

== Contributing to tool
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

== Copyright

Copyright (c) 2012 Eric Himmelreich. See LICENSE.txt for
further details.

