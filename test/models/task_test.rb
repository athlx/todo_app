require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  def setup
    @task = Task.new description: "Test task", 
					 completed: true
  end

  test "should be valid" do
    assert @task.valid?
  end

  test "description should be present" do
	@task.description = "  "
    assert_not @task.valid?
  end
end
