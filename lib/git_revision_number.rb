require File.expand_path(File.dirname(__FILE__) + "vendor/git-rev-num/lib/git_rev_num")

module GitRevisionNumber
  class << self
    def head
      "#{librarian.head_rev_number} (sha1: #{librarian.abbreviated_sha1_head})"
    end
    
  private
  
    def librarian
      @librarian = GitRevisionNumbers::CommitLibrarian.new
    end
  end
end
