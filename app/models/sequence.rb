class Sequence < ApplicationRecord
    belongs_to :song
    has_one :synth
end
