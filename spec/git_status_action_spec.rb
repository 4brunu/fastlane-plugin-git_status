describe Fastlane::Actions::GitStatusAction do
  describe '#run' do
    
    it "call action without parameters" do
      result = Fastlane::Actions::GitStatusAction(path: nil)
      expect(result).to eq("git status --porcelain .")
    end
    
    it "call action with a string parameter" do
      result = Fastlane::Actions::GitStatusAction.run(path: "./")
      expect(result).to eq("git status --porcelain ./")
    end
    
    it "call action with an array parameter" do
      result = Fastlane::Actions::GitStatusAction.run(path: ["../", "./"])
      expect(result).to eq("git status --porcelain ../ ./")
    end
    
  end
end
