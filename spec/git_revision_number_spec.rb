require File.dirname(__FILE__) + "/spec_helper"

describe GitRevisionNumber do
  describe "head" do
    before :each do
      @librarian = mock(GitRevisionNumbers::MasterCommitLibrarian)
      GitRevisionNumbers::MasterCommitLibrarian.stub!(:new).and_return @librarian
    end
    
    it 'should return the revision numbers' do
      @librarian.stub!(:head_rev_number).and_return 1
      @librarian.stub!(:abbreviated_sha1_head).and_return "abc12"
      GitRevisionNumber.head.should == "1 (sha1: abc12)"
    end
  end
end
