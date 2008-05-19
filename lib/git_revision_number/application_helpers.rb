module GitRevisionNumber
  module ApplicationHelpers
    def git_revision
      @git_revision ||= "<!-- Git Revision: #{GitRevisionNumber.head} -->"
    end
  end
end
