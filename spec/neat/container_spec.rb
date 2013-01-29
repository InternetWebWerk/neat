require 'spec_helper'

describe "@include outer-container()" do
  let (:identifier) {"outer_container"}

  before(:all) do
    ParserSupport.parse_file(identifier)
  end

  it "adds clearfix" do
    expect('.container-default:after').to have_rule('clear: both')
  end

  it "adds max-width" do
    expect('.container-default').to have_rule('max-width: 960px')
  end
end
