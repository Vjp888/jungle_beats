require './test/test_helper'
require './lib/node'

class NodeTest < Minitest::Test

  def test_it_can_be_made
    node = Node.new("node")

    assert_instance_of Node, node
  end

  def test_it_has_a_next_node
    node = Node.new("node")

    assert_nil node.next_node
  end
end
