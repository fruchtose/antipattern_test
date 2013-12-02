require 'spec_helper'

describe ClosureComment do
  it { should validate_presence_of(:comments) }
  it { should have_many(:ancestor_paths)}
  it { should have_many(:descendant_paths)}
  it { should have_many(:ancestors).through(:ancestor_paths) }
  it { should have_many(:descendants).through(:descendant_paths) }
end