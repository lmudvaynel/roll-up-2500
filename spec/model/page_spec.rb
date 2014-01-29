require 'spec_helper'

describe Page do

  before do
    @page = Page.create!(name: "Main", content:"Main page", slug: "index", position: 1)
  end

  subject { @page }

  it { should respond_to(:name) }
  it { should respond_to(:content) }
  it { should respond_to(:slug) }
  it { should respond_to(:position)}
  it { should respond_to(:id)}

  it { should be_valid}

  describe "when name is not presence" do
    before { @page.name=" " }
    it { should_not be_valid }
  end

  describe "when content is not presence" do
    before { @page.content=" "}
    it { should be_valid }
  end

  describe "when slug is not presence" do
    before { @page.slug=" "}
    it { should_not be_valid }
  end

  describe "when position is nil" do
    before { @page.position=nil }
    it { should_not be_valid }
  end

  describe "when id is nil" do
    before { @page.id=nil }
    it { should_not be_valid }
  end
end

