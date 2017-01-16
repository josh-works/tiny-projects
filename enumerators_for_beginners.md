# Enumerators for beginners


I'm going to start at Turing School in a few days, and have been eagerly studying in preparation.

There are many, _many_ things I don't yet understand, but I'm trying to slow down and make sure I understand the basics before throwing myself into more complicated things.

One of the things that has been causing me lots of confusion are _Enumerators_. Mostly because I can use enumerables on both hashes and arrays, and can use it to pick data out of an array or hash, or to insert data into an array or a hash, and at the moment it feels like I'm blindly mashing keys on my keyboard. :(

Specifically, I'm trying to wrap my head around `.sort`, `.each`, `.inject`, and other similar methods, all as it pertains to arrays and hashes.

So, I'll document here what I know, and what I learn, as I try to wrap my head around `enumerators`.

Lets give ourselves some sample data to play with. I can copy/paste this into `irb` to get data to play with.

```ruby
# a few hashes
letters = { a: "aa", b: "bb", c: "cc", d: "dd", e: "ee", f: "ff", g: "gg", h: "hh" }

letters_and_numbers = { "81": "KJ", "2": "BH", "1": "UY", "44": "id", "5_x": "de", "6mus": "qw", "7": "21", "8": "&&", "9": "Josh", "10": "yo' mama" }


# arrays
hipster_ipsum = %w[Normcore tacos brooklyn 90's fanny pack. Tumeric trust fund pop-up, fam cronut fashion axe humblebrag roof party live-edge authentic gluten-free. Yuccie coloring book artisan drinking vinegar, VHS ugh yr synth edison bulb waistcoat bitters cronut poutine live-edge XOXO.]

numbers = [50, 19, 48, 31, 8, 67, 89, 78, 35, 42, 96, 99, 93, 37, 40, 85, 82, 17, 51, 1]

```

Now, with this data, there's a bunch of common operators you can run against it. In your terminal, punch in `irb` and we're off.


First, `.sort` does just what you'd expect.
```ruby
>> numbers.sort
=> [1, 8, 17, 19, 31, 35, 37, 40, 42, 48, 50, 51, 67, 78, 82, 85, 89, 93, 96, 99]

>> hipster_ipsum.sort
=> ["90's", "Normcore", "Tumeric", "VHS", "XOXO.", "Yuccie", "artisan", "authentic", "axe", "bitters", "book", "brooklyn", "bulb", "coloring", "cronut", "cronut", "drinking", "edison", "fam", "fanny", "fashion", "fund", "gluten-free.", "humblebrag", "live-edge", "live-edge", "pack.", "party", "pop-up,", "poutine", "roof", "synth", "tacos", "trust", "ugh", "vinegar,", "waistcoat", "yr"]

>> letters.sort
=> [[:a, "aa"], [:b, "bb"], [:c, "cc"], [:d, "dd"], [:e, "ee"], [:f, "ff"], [:g, "gg"], [:h, "hh"]]
```
Wait a second. calling `sort` on the hash turned it into an array. It did not just arrange the hashes, but forced it into an array.

I've been reading through (and barely comprehending) Olson's [Eloquent Ruby](https://www.amazon.com/Eloquent-Ruby-Addison-Wesley-Professional/dp/0321584104), and he mentioned (somewhere, I cannot find it right now) that arrays and hashes inherit the enumerable class.

What does this mean?

```ruby
>> Array.ancestors
=> [Array, Enumerable, Object, Wirble::Shortcuts, PP::ObjectMixin, Kernel, BasicObject]

>> Hash.ancestors
=> [Hash, Enumerable, Object, Wirble::Shortcuts, PP::ObjectMixin, Kernel, BasicObject]
```

The second item in each "inheritance path" (is that the right word?) is `Enumerable`. (Ignore the `Wirble` and `PP` items. Those are not part of the regular inheritance path.)

Off to [ruby-lang.org](http://ruby-doc.org/core-2.4.0/Enumerable.html) again:

> The `Enumerable` mixin provides collection classes with several traversal and searching methods, and with the ability to sort. The class must provide a method `each`, which yields successive members of the collection. If `Enumerable#max`, `#min`, or `#sort` is used, the objects in the collection must also implement a meaningful `<=>` operator, as these methods rely on an ordering between members of the collection.

OK. A few notables. First, `Enumerable` is a mixin, which means somewhere in the depths of the Ruby language, we could find a bunch of code telling Ruby how to handle all these sorting methods, and it's shared between the `Array` class and the `Hash` class. (It's "mixed in", as it were.)


Reading on, we can see it has a few Public Instance Methods, like: `.sum`, `.uniq`, and `.sort`.

This means (I think) that `.sort` would not be found in the Array or Hash documentation. Lets take a look:

Nothing to be found for [Hashes](https://docs.ruby-lang.org/en/2.0.0/Hash.html).

Arrays have a [sort](https://ruby-doc.org/core-2.2.0/Array.html#method-i-sort) method.

(Full disclosure, I'm using [Dash](https://kapeli.com/dash) for all my docs. _caveat emptor_, etc.)

So what could be going on in the `hash.sort` method? Why is it turned into an array? Can I sort a hash in the traditional sense?

On closer inspection, the sorted hash is still a hash, it's just been split into an array with each key-value pair getting placed into the array index.

```ruby
>> letters_and_numbers.sort
=> [[:"1", "UY"], [:"10", "yo' mama"], [:"2", "BH"], [:"44", "id"], [:"5_x", "de"], [:"6mus", "qw"], [:"7", "21"], [:"8", "&&"], [:"81", "KJ"], [:"9", "Josh"]]

>> sorted_hash = letters_and_numbers.sort # since .sort doesn't mutate the caller, we need to assign it to a new variable, or use the ! method.

>> sorted_hash.class
=> Array              # this is kinda what we expected

>> sorted_hash[0]
=> [:"1", "UY"]      # first item looks a lot like a hash...

>> sorted_hash[0].class
=> Array             # first item is still listed as an array...

>> sorted_hash[0][0]
=> :"1"              # ah, so each array item contains two objects.

>> sorted_hash[0][1]
=> "UY"              # there's the value part of the hash. Look up at sorted_hash[0]

>> sorted_hash[0][0].class  # Lets see what each of these items actually are
=> Symbol

>> sorted_hash[0][1].class
=> String               # so our hash is still here. Just inside of an array object.
```

So, when you sort a hash, Ruby pops each key:value pair into it's own spot in an array, and orders the array on the first character of each key. I can tell that because in the sorted array, the first two items are `[:"1", "UY"], [:"10", "yo' mama"]`, which very much were not in that order when we created the hash.


Deep breath. If you're still with me, you might have an idea of why I'm so confused about all of this stuff. I'm still not actually sure of the significance of what I've outlined.

Next, lets walk through some other guides for Enumerables:

1. [The Bastards Book of Ruby: Enumerables](http://ruby.bastardsbook.com/chapters/enumerables/)
2. [Practicing Ruby: Building Enumerable & Enumerator in Ruby](http://practicingruby.com/articles/building-enumerable-and-enumerator)

Calling out some things of note:

`.each` returns the calling object, unchanged:

```ruby
>> letters_and_numbers = {:"81"=>"KJ", :"2"=>"BH", :"1"=>"UY", :"44"=>"id", :"5_x"=>"de"}
# ^shortened the list

  letters_and_numbers.each do |item|
    p item
  end
[:"81", "KJ"]
[:"2", "BH"]
[:"1", "UY"]
[:"44", "id"]
[:"5_x", "de"]
=> {:"81"=>"KJ", :"2"=>"BH", :"1"=>"UY", :"44"=>"id", :"5_x"=>"de"}
# the last line is what's returned, which is exactly what went into the block.
```

`.map` returns a modified object:

```ruby
 letters_and_numbers.map do |item|
     p item
   end
[:"81", "KJ"]
[:"2", "BH"]
[:"1", "UY"]
[:"44", "id"]
[:"5_x", "de"]
=> [[:"81", "KJ"], [:"2", "BH"], [:"1", "UY"], [:"44", "id"], [:"5_x", "de"]]
# this last line is an array of hashes, similar to when we sorted the hash.
```

we see similar results when working with an array instead of a hash:

`.each`

```ruby

numbers = [50, 19, 48, 31, 8, 67, 89, 78, 35]

numbers.each do |number|
   p number
end
50
19
48
31
8
67
89
78
35
=> [50, 19, 48, 31, 8, 67, 89, 78, 35]
# ^ the same list that went into it.
```

`.map`

```ruby
numbers.map do |number|
   p number
 end
50
19
48
31
8
67
89
78
35
=> [50, 19, 48, 31, 8, 67, 89, 78, 35]
# This is unexpected. .map did NOT modify the array or output, compared to .map being called on a hash above.
```






and these


leave these lines please
