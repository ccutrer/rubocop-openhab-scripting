# frozen_string_literal: true

RSpec.describe RuboCop::Cop::OpenHAB::StatePredicate, :config do
  let(:config) { RuboCop::Config.new }

  it "registers an offense when using `== ON`" do
    expect_offense(<<~RUBY)
      Item == ON
      ^^^^^^^^^^ Use `on?` instead of `== ON`.
    RUBY
  end

  it "does not register an offense when using `on?`" do
    expect_no_offenses(<<~RUBY)
      Item.on?
    RUBY
  end
end
