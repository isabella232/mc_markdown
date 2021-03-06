require 'spec_helper'

describe MCMarkdown::Formatter::Links do

  it "generates a plain link" do
    render_string( "[multi text](/path)" ).should == "<p><a href='/path'>multi text</a></p>"
  end

  it "generates a link with a class" do
    render_string( "[multi text {class}](/path)" ).should == "<p><a href='/path' class='class'>multi text</a></p>"
  end

  it "generates a link with a target" do
    render_string( "[multi text _blank](/path)" ).should == "<p><a href='/path' target='_blank'>multi text</a></p>"
  end

  it "generates a link with a target and a class" do
    render_string( "[multi text {class} _blank](/path)" ).should == "<p><a href='/path' class='class' target='_blank'>multi text</a></p>"
  end

  it "generates link with single arbitrary attribute" do
    expect( render_string("[foo {bar: baz}](/foo)") ).to eq "<p><a href='/foo' bar='baz'>foo</a></p>"
  end

  it "generates links with arbitrary attributes" do
    render_string("[multi text {class: class_name, aria-role: link}](/path)").should == "<p><a href='/path' class='class_name' aria-role='link'>multi text</a></p>"
  end

  it "respects the no_links option" do
    expect( MCMarkdown.render( "[foo](/bar)", :base, no_links: true ) ).to eq "<p>[foo](/bar)</p>\n"
  end

  context "when xml extension is activated" do
    it "escapes ampersands from links" do
      expect( MCMarkdown.render("[foo](/bar?foo=baz&bang=bing)", :base, xml: true ) ).to eq "<p><a href='/bar?foo=baz&amp;bang=bing'>foo</a></p>\n"
    end

    it "escapes attributes if they contain html characters" do
      expect( MCMarkdown.render("[foo {bar: hello & world}](/bar)", :base, xml: true ) ).to eq "<p><a href='/bar' bar='hello &amp; world'>foo</a></p>\n"
    end
  end

end