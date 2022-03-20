class Package < ApplicationRecord
    has_many :vulnerabilities
end
