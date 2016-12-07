module Fastlane
  module Helper
    class GitStatusHelper
      # class methods that you define here become available in your action
      # as `Helper::GitStatusHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the git_status plugin helper!")
      end
    end
  end
end
