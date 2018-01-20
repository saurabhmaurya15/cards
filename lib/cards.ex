defmodule Cards do
  @moduledoc """
  Documentation for Cards.
  """

  @doc """
  Create Deck of Cards.
  """
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "ten", "Jack", "Queen", "King"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  @doc """
  Create Deck of Cards. (deprecated)
  """
  def create_deck_old do
    values = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "ten", "Jack", "Queen", "King"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    cards = for suit <- suits do
      for value <- values do
        "#{value} of #{suit}"
      end
    end
    List.flatten(cards)
  end

  @doc """
  Shuffle Deck of Cards.
  """
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  @doc """
  Check if a deck contains a card.
  """
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  @doc """
  Deal cards from deck
  """
  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end
end
