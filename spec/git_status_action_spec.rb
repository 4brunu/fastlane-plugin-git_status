describe Fastlane::Actions::GitStatusAction do
  describe '#run' do
    
    it "call action without parameters" do
      result = Fastlane::FastFile.new.parse("lane :test do
       	                                        git_status
     	                                        end")
      .runner
      .execute(:test)
      
      expect(result).to eq("git status --porcelain .")
    end
    
    it "call action with a string parameter" do
      result = Fastlane::FastFile.new.parse("lane :test do
       	                                        git_status(path: './')
     	                                        end")
      .runner
      .execute(:test)
      
      expect(result).to eq("git status --porcelain ./")
    end
    
    it "call action with an array parameter" do
      result = Fastlane::FastFile.new.parse("lane :test do
       	                                        git_status(path: ['../', './'])
     	                                        end")
      .runner
      .execute(:test)
      
      expect(result).to eq("git status --porcelain ../ ./")
    end
    
  end
end
