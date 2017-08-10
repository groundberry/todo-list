require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test "valid task with task name length greater than or equal to 3 characters" do
    task = Task.new(task: 'Run')
    assert task.valid?
  end

  test "invalid task without task name" do
    task = Task.new()
    refute task.valid?, 'task is not valid without a task name'
    assert_not_nil task.errors[:task], 'no validation error for task name present'
  end

  test "invalid task with task name length less than 3 characters" do
    task = Task.new(task: 'Fo')
    refute task.valid?, 'task is not valid with length less than 3 characters'
    assert_not_nil task.errors[:task], 'no validation error for task name length'
  end
end
