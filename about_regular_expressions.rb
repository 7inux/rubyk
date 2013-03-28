# -*- coding: utf-8 -*-
require File.expand_path(File.dirname(__FILE__) + '/edgecase')

class AboutRegularExpressions < EdgeCase::Koan
  def test_a_pattern_is_a_regular_expression
    ##assert_equal , /pattern/.class
  end

  def test_a_regexp_can_search_a_string_for_matching_content
    ##assert_equal __, "some matching content"[/match/]
  end

  def test_a_failed_match_returns_nil
    ##assert_equal __, "some matching content"[/missing/]
  end

  # ------------------------------------------------------------------

  def test_question_mark_means_optional
    assert_equal "ab", "abbcccddddeeeee"[/ab?/]
    assert_equal "a", "abbcccddddeeeee"[/az?/]
  end

  def test_plus_means_one_or_more
    assert_equal "bccc", "abbcccddddeeeee"[/bc+/]
  end

  def test_asterisk_means_zero_or_more
    assert_equal "abb", "abbcccddddeeeee"[/ab*/]
    assert_equal "a", "abbcccddddeeeee"[/az*/]
    assert_equal "", "abbcccddddeeeee"[/z*/]

    # THINK ABOUT IT:
    #
    # When would * fail to match?
  end

  # THINK ABOUT IT:
  #
  # We say that the repetition operators above are "greedy."
  #
  # Why?

  # ------------------------------------------------------------------

  def test_the_left_most_match_wins
    assert_equal "a", "abbccc az"[/az*/]
  end

  # ------------------------------------------------------------------

  def test_character_classes_give_options_for_a_character
    animals = ["cat", "bat", "rat", "zat"]
    ##assert_equal "", animals.select { |a| a[/[cbr]at/] }
  end

  def test_slash_d_is_a_shortcut_for_a_digit_character_class
    assert_equal "42", "the number is 42"[/[0123456789]+/]
    assert_equal "42", "the number is 42"[/\d+/]
  end

  def test_character_classes_can_include_ranges
    assert_equal "42", "the number is 42"[/[0-9]+/]
  end

  def test_slash_s_is_a_shortcut_for_a_whitespace_character_class
   ## assert_equal  "space: ", "space: \t\n"[/\s+/]
  end

  def test_slash_w_is_a_shortcut_for_a_word_character_class
    # NOTE:  This is more like how a programmer might define a word.
   ## assert_equal "42", "variable_1 = 42"[/[a-zA-Z0-9_]+/]
   ## assert_equal __, "variable_1 = 42"[/\w+/]
  end

  end
