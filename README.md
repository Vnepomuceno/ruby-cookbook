# Ruby Cookbook, by Lucas Carlson and Leonard Richardson

- **Author**: Valter Nepomuceno
- **When**: March, 2018
- **Based in**: Lisbon, Portugal
- **Current Job**: Software Developer
- **Email Address**: valter.nep@gmail.com
- **Reference Links**: [LinkedIn](https://pt.linkedin.com/in/valternepomuceno) | [GitHub](https://github.com/Vnepomuceno) | [Facebook](https://www.facebook.com/valter.nepomuceno)

![Book Cover](https://covers.oreillystatic.com/images/9780596523695/lrg.jpg)

## Chapter 2 - Strings

For all recipes in Chapter 2, require Ruby file ```string.rb```.

```rb
irb(main):001:0> require './string.rb'
=> true
```

### Recipe 2.9 Processing a String One Word at a Time

Problem: You want to split a piece of text into words, and operate on each word.

```rb
irb(main):001:0> %{"The F.B.I. fella--he's quite the man-about-town."}.word_count
=> {"the"=>2, "f.b.i"=>1, "fella"=>1, "he's"=>1, "quite"=>1, "man-about-town"=>1}
```

### Recipe 2.10 Changing the Case of a String

Problem: Your string is in the wrong case, or no particular case at all.

```rb
irb(main):001:0> s = "i told Alice. She remembers now."
=> "i told Alice. She remembers now."
irb(main):002:0> s.capitalize_first_letter
=> "I told Alice. She remembers now."
irb(main):003:0> s
=> "i told Alice. She remembers now."
irb(main):004:0> s.capitalize_first_letter!
=> "I told Alice. She remembers now."
irb(main):005:0> s
=> "I told Alice. She remembers now."
```