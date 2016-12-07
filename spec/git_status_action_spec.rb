describe Fastlane::Actions::GitStatusAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The git_status plugin is working!")

      Fastlane::Actions::GitStatusAction.run(nil)
    end
  end
end
