#encoding: utf-8


もし /^トップページを表示する$/ do
  visit'/'
end

ならば /^"(.*?)"と表示していること$/ do |text|
  page.should have_content(text)
end

もし /^問い合わせページを表示する$/ do
  visit'/content'
end

ならば /^"(.*?)"と表示されていること$/ do |text|
  page.should have_content(text)
end
