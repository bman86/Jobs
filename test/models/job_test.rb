require 'test_helper'

class JobTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "must have a title description and salary" do
    @job = Job.new
    assert @job.invalid?
    assert @job.errors[:title].any?
    assert @job.errors[:description].any?
    assert @job.errors[:salary].any?
  end

  test "salary must be greater than or equal to zero" do
    job = Job.new(title: "Joe Blow",
                  description: "Good Job")
    job.salary = -1
    assert job.invalid?
    assert_equal ["Must be greater than or equal to 0"],
      job.errors[:salary]

    job.salary = 1
    assert job.valid?
  end
end
