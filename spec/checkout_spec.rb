require 'checkout'

describe Checkout do
  it "adds to total cost correctly test case 1" do
    subject.scan(001)
    subject.scan(002)
    subject.scan(003)
    expect(subject.total).to eq 66.78
  end
  it "adds to total cost correctly test case 2" do
    subject.scan(001)
    subject.scan(001)
    subject.scan(003)
    expect(subject.total).to eq 36.95
  end
  it "adds to total cost correctly test case 3" do
    subject.scan(001)
    subject.scan(002)
    subject.scan(001)
    subject.scan(003)
    expect(subject.total).to eq 73.76
  end
  it "raises error if product doesnt exist" do
    expect{subject.scan(004)}.to raise_error ("not valid product")
  end


end
