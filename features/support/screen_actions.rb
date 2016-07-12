class ScreenActions

  include RSpec::Matchers

  def find_with_wait(timeout=10, &block)
    wait_true(timeout){yield}
  end
end