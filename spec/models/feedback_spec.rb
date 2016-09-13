require 'spec_helper'

describe Feedback do 

  it { should validate_presence_of(:email) }
end
