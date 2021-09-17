# frozen_string_literal: true

module RuboCop
  module Cop
    module OpenHAB
      # When comparing against named states and commands, prefer predicate methods.
      #
      # @example
      #   # bad
      #   Switch == ON
      #
      #   # bad
      #   event.command == UP
      #
      #   # good
      #   Switch.on?
      #
      #   # good
      #   event.command.up?
      #
      class StatePredicate < Base
        MSG = "Use `%<predicate>s?` instead of `== %<constant>s`."

        METHODS = %i[
          REFRESH
          OPEN
          CLOSED
          ON
          OFF
          INCREASE
          DECREASE
          UP
          DOWN
          STOP
          MOVE
          PLAYING
          PAUSED
          REWINDING
          FASTFORWARDING
          PLAY
          PAUSE
          REWIND
          FASTFORWARD
          NEXT
          PREVIOUS
        ].to_set.freeze
        def_node_matcher :bad_comparison?, <<~PATTERN
          (send _ :== (const nil? $METHODS))
        PATTERN

        def message(constant)
          format(MSG, predicate: constant.downcase, constant: constant)
        end

        def on_send(node)
          bad_comparison?(node) { |constant| add_offense(node, message: message(constant)) }
        end
      end
    end
  end
end
