require_relative '../../../kitchen/data/spec_helper'

describe file('/etc/apt/sources.list.d/dotdeb.list') do
  it { should be_file }
  it { should be_mode 644 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end
