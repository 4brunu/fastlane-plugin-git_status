describe Fastlane::Actions::GitStatusAction do
  describe '#run' do
    
    it "call action without parameters" do
      result = Fastlane::Actions::GitStatusAction.run()
      expect(result).to eq("")
    end
    
    it "call action with a string parameter" do
      result = Fastlane::Actions::GitStatusAction.run("./")
      expect(result).to eq("")
    end
    
    it "call action with an array parameter" do
      result = Fastlane::Actions::GitStatusAction.run(["../", "./"])
      expect(result).to eq("")
    end
    
  end
end
