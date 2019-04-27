require './test/test_helper'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

  def test_it_can_be_made
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end

  def test_it_can_append_a_node
    list = LinkedList.new

    list.append("list")

    assert_equal "list", list.head.data
  end

  def test_it_can_count_nodes
    list = LinkedList.new

    list.append("list")

    assert_equal 1, list.count

    list.append("list")

    assert_equal 2, list.count
  end

  def test_it_can_turn_all_nodes_to_string
    list = LinkedList.new

    list.append("list")

    assert_equal "list", list.to_string

    list.append("test")

    assert_equal "list test", list.to_string
  end
end
