class Bottles

  def verses(first_verse, last_verse)
    current_verse = first_verse
    until current_verse == last_verse
      verse(current_verse) + "\n"
      current_verse - 1
    end
  end
  def verse(bottles)
    new_bottles = bottles - 1
    "#{capital_no_more(bottles)} bottle#{pluralization(bottles)} of beer on the wall, " +
    "#{no_more(bottles)} bottle#{pluralization(bottles)} of beer.\n" +
    "#{store_or_take(bottles, new_bottles)}, " +
    "#{no_more(refresh_bottles(new_bottles))} bottle#{pluralization(refresh_bottles(new_bottles))} of beer on the wall.\n"
  end

  def pluralization(bottles)
    if bottles == 1
      ""
    else
      "s"
    end
  end

  def no_more(bottles)
    if bottles == 0
      "no more"
    else
      bottles
    end
  end

  def capital_no_more(bottles)
    if bottles == 0
      "No more"
    else
      bottles
    end
  end

  def it_or_one(bottles)
    if bottles == 1
      "it"
    else
      "one"
    end
  end

  def store_or_take(bottles, new_bottles)
    if new_bottles == -1
      "Go to the store and buy some more"
    else
      "Take #{it_or_one(bottles)} down and pass it around"
    end
  end
  def refresh_bottles(bottles)
    if bottles == -1
      99
    else
      bottles
    end
  end
end