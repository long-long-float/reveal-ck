require 'spec_helper'

class Redactor

  def initialize(text)
    @text = text
  end

  def redact(range)
    first = @text.index range.first
    if first
      last = @text.index(range.last)
      if last
        cutBegin = first - 1
        cutEnd = last + range.last.size
        @text.slice(0..cutBegin) + @text.slice(cutEnd..@text.size)
      else
        @text
      end
    else
      @text
    end
  end

end

describe Redactor do

  let :sample do
    'hi, how are you?'
  end

  let :html_sample do
    '<body><section>hi</section><p>bye</p><section>bye</section></body>'
  end

  it 'is constructed with text' do
    expect do
      Redactor.new sample
    end.to_not raise_error
  end

  it 'can remove specified text' do
    r = Redactor.new sample
    r.redact('how'..'you').should == 'hi, ?'
  end

  it 'leaves the original text alone if there are no matches' do
    r = Redactor.new sample
    r.redact('blue'..'shoe').should == sample
  end

end
