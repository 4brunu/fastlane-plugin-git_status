module Fastlane
  module Actions
    class GitStatusAction < Action
      def self.run(params)

        if params[:path].kind_of?(String)
          paths = params[:path].shellescape
        else
          paths = params[:path].map(&:shellescape).join(' ')
        end

        result = Actions.sh("git status --porcelain #{paths}")
        UI.success("git status --porcelain #{paths} \n #{result}")
        return result

      end

      def self.description
        "Show the status of one or multiple files/directories"
      end

      def self.authors
        ["4brunu"]
      end

      def self.return_value
        "The output string of the git status command"
      end

      def self.details
        "Show the status of one or multiple files/directories"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :path,
                                       description: "The file or directory you want to see the status",
                                       optional: true,
                                       default_value: '.',
                                       is_string: false,
                                       verify_block: proc do |value|
                                         if value.kind_of?(String)
                                           paths = value.shellescape
                                           UI.user_error!("Couldn't find file at path '#{value}'") unless File.exist?(paths)
                                         elsif value.kind_of?(Array)
                                           value.each do |x|
                                             UI.user_error!("Couldn't find file at path '#{x}'") unless File.exist?(x)
                                           end
                                         else
                                           UI.user_error!("Wrong param type path '#{value}'")
                                         end
                                       end),
        ]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end
