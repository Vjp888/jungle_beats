require './lib/node'
require 'pry'
class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def pop
    node = @head
    if node.next_node == nil
      @head = nil
    else
      while node.next_node.next_node
        node = node.next_node
      end
    end
    node.next_node = nil
  end

  def includes?(word)
    check = false
    node = @head
    while node
      if node.data == word
        check = true
        break
      else
        node = node.next_node
      end
    end
    check
  end

  def find(start, length)
    node_count = 0
    node = @head
    while node_count != (start)
      node_count += 1
      node = node.next_node
    end
    chain = ""
    length.times do
      chain << node.data + " "
      node = node.next_node
    end
    chain.strip
  end

  def insert(location, sound)
    node = Node.new(sound)
    node_count = 0
    counter = @head
    while node_count != (location - 1)
      node_count += 1
      counter = counter.next_node
    end
    node.next_node = counter.next_node
    counter.next_node = node
  end

  def prepend(sound)
    if @head
      node = @head
      @head = Node.new(sound)
      @head.next_node = node
    else
      @head = Node.new(sound)
    end
    sound
  end

  def append(sound)
    if @head
      node = @head
      loop do
        if node.next_node == nil
          break
        else
          node = node.next_node
        end
      end
      node.next_node = Node.new(sound)
    else
      @head = Node.new(sound)
    end
    sound
  end

  def to_string
    sounds = ""
    node = @head
    until node == nil
     sounds << node.data + " "
     node = node.next_node
    end
    sounds.strip
  end

  def count
    node_count = 0
    counter = @head
    while counter
      node_count += 1
      counter = counter.next_node
    end
    node_count
  end
end
