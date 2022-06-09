module DunnasContacts
  class Contact < ApplicationRecord
    include Searchrable

    # Attributes 
    enum type: {
      telephone: 'telephone',
      cell: 'cell',
      email: 'email',
      fax: 'fax'
    }

    belongs_to :contactable, polymorphic: true, optional: true

    validates :type, :value, presence: true

    scope :ordered, -> { order(created_at: :desc) }
    
  end
end
