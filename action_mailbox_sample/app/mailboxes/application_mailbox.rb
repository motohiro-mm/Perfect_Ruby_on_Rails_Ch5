class ApplicationMailbox < ActionMailbox::Base
  # routing /something/i => :somewhere
  routing (/[0-9]+-comment@/i) => :comments
  routing :all => :backstop
end
