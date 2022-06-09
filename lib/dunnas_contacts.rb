require "dunnas_contacts/version"
require "dunnas_contacts/engine"

module DunnasContacts
  # Your code goes here...

  mattr_accessor :active_uuid

  def self.active_uuid
    @@active_uuid
  end
end
