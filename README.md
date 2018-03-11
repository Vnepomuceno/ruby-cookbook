# Ruby Cookbook, by Lucas Carlson and Leonard Richardson

- **Author**: Valter Nepomuceno
- **When**: March, 2018
- **Based in**: Lisbon, Portugal
- **Current Job**: Software Developer
- **Email Address**: valter.nep@gmail.com
- **Reference Links**: [LinkedIn](https://pt.linkedin.com/in/valternepomuceno) | [GitHub](https://github.com/Vnepomuceno) | [Facebook](https://www.facebook.com/valter.nepomuceno)

![Book Cover](https://covers.oreillystatic.com/images/9780596523695/lrg.jpg)

## Chapter 2 - Strings

### Recipe 2.9 Processing a String One Word at a Time

```rb
irb(main):001:0> require './string.rb'
=> true
irb(main):002:0> %{"The F.B.I. fella--he's quite the man-about-town."}.word_count
=> {"the"=>2, "f.b.i"=>1, "fella"=>1, "he's"=>1, "quite"=>1, "man-about-town"=>1}
```