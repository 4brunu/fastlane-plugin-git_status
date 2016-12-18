describe Fastlane::Actions::GitStatusAction do
  describe '#run' do
    
    it "call action without parameters" do
      result = other_action.git_status()
      expect(result).to eq("")
    end
    
    it "call action with a string parameter" do
      result = other_action.git_status(path: "./")
      expect(result).to eq("")
    end
    
    it "call action with an array parameter" do
      result = other_action.git_status(path: ["../", "./"])
      expect(result).to eq("")
    end
    
  end
end
