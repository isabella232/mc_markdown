require 'spec_helper'

describe MCMarkdown::Image do

  it "generates an image with no alt text" do
    render_string('![](/path/image.jpg)').should == "<p><img src='/path/image.jpg' alt='' /></p>"
  end

  it "generates an image with alt text" do
    render_string('![alt text](/path/image.jpg)').should == "<p><img src='/path/image.jpg' alt='alt text' /></p>"
  end

  it "generates a figcaption when passed a title" do
    render_string('![alt text](/path/image.jpg "the caption")').should == "<p><figure class='img '><img src='/path/image.jpg' alt='alt text' /><figcaption><p>the caption</p></figcaption></figure></p>"
  end

  it "generates an image with a class" do
    render_string('![{img}](/path/image.jpg)').should == "<p><img src='/path/image.jpg' alt='' class='img' /></p>"
  end

  it "generates a figure with a class" do
    render_string('![alt text {full}](/path/image.jpg "the caption")').should == "<p><figure class='img full'><img src='/path/image.jpg' alt='alt text' /><figcaption><p>the caption</p></figcaption></figure></p>"
  end

end