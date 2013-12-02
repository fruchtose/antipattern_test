require 'spec_helper'

describe CommentPath do
  it { should belong_to(:ancestor)}
  it { should belong_to(:descendant)}
  [:ancestor, :descendant].each do |comment|
    it { should validate_presence_of(comment)}
  end
end