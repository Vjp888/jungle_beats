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

  def test_it_can_prepend_a_node
    list = LinkedList.new

    list.append("list")

    assert_equal "list", list.to_string

    list.append("test")

    assert_equal "list test", list.to_string

    list.prepend("haha")

    assert_equal "haha list test", list.to_string
    assert_equal 3, list.count
  end

  def test_it_can_insert_a_node
    list = LinkedList.new

    list.append("list")

    assert_equal "list", list.to_string

    list.append("test")

    assert_equal "list test", list.to_string

    list.insert(1, "haha")

    assert_equal "list haha test", list.to_string
  end

  def test_it_can_find_a_range_of_nodes
    list = LinkedList.new
    list.append("list")
    list.append("test")
    list.append("haha")
    list.append("harpy")
    list.append("party")

    test_1 = "haha"
    test_2 = "haha harpy party"
    test_3 = "haha harpy"

    assert_equal "list test haha harpy party", list.to_string

    assert_equal list.find(2, 1), test_1
    assert_equal list.find(2, 3), test_2
    assert_equal list.find(2, 2), test_3
  end

  def test_it_can_check_if_a_node_contains_string
    list = LinkedList.new
    list.append("list")
    list.append("test")
    list.append("haha")
    list.append("harpy")
    list.append("party")

    assert_equal true, list.includes?("haha")
    assert_equal false, list.includes?("hahhah")
  end

  def test_it_can_pop_last_node
    list = LinkedList.new
    list.append("list")
    list.append("test")
    list.append("haha")
    list.append("harpy")
    list.append("party")

    test_1 = "list test haha harpy"
    test_2 = "list test haha"

    list.pop
    assert_equal 4, list.count
    assert_equal test_1, list.to_string

    list.pop
    assert_equal 3, list.count
    assert_equal test_2, list.to_string
  end
end
