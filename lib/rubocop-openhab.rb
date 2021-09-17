# frozen_string_literal: true

require "rubocop"

require_relative "rubocop/openhab"
require_relative "rubocop/openhab/version"
require_relative "rubocop/openhab/inject"

RuboCop::OpenHAB::Inject.defaults!

require_relative "rubocop/cop/openhab_cops"
