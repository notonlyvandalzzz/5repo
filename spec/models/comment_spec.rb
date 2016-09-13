require 'spec_helper'

describe Comment do 

  it { should belong_to(:article) }
  it do 
      should validate_length_of(:body).
      is_at_least(1).is_at_most(140)
  end 
 
  
end