# Ruby Cookbook, by Lucas Carlson and Leonard Richardson

![Book Cover](https://covers.oreillystatic.com/images/9780596523695/lrg.jpg)

## Chapter 2 - Strings

For all recipes in Chapter 2, require Ruby file ```string.rb```.

```rb
irb(main):001:0> require './string.rb'
=> true
```

### Recipe 2.9 Processing a String One Word at a Time

**Problem**: You want to split a piece of text into words, and operate on each word.

**Solution**:
```rb
irb(main):001:0> %{"The F.B.I. fella--he's quite the man-about-town."}.word_count
=> {"the"=>2, "f.b.i"=>1, "fella"=>1, "he's"=>1, "quite"=>1, "man-about-town"=>1}
```

### Recipe 2.10 Changing the Case of a String

**Problem**: Your string is in the wrong case, or no particular case at all.

**Solution**:
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

### Recipe 2.14 Word-Wrapping Lines of Text

**Problem**: You want to turn a string full of miscellaneous whitespace into a string formatted with linebreaks at appropriate intervals, so that the text can be displayed in a window or sent as an email.

**Solution**:
```rb
irb(main):001:0> puts wrap("This text is too short to be wrapped.", 20)
This text is too
short to be wrapped.
=> nil
```

```rb
irb(main):001:0> prose = %q{I find myself alone these days, more often than not, watching the rain run down nearby windows. How long has it been raining? The newspapers now print the total, but no one reads them anymore.}
irb(main):002:0> puts reformat_wrapped(prose, 60) 
I find myself alone these days, more often than not,
watching the rain run down nearby windows. How long has it
been raining? The newspapers now print the total, but no one
reads them anymore.
=> nil
```

### Recipe 2.18 Validating an Email Address

**Problem**: You need to see whether an email address is valid.

**Solution**:
```rb
irb(main):001:0> probably_valid? 'joe@example.com'
=> true
irb(main):002:0> probably_valid? 'joe@example'
=> false
```