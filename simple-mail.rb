#!/usr/bin/ruby
require 'rubygems'
require 'mail'

options = { :address              => "<SERVER ADDRESS>",
            :port                 => 587,
            :domain               => '<DOMAIN>',
            :user_name            => '<USER>',
            :password             => '<PASS>',
            :authentication       => 'plain',
            :enable_starttls_auto => true  }
 Mail.defaults do
  delivery_method :smtp, options
end

 mail = Mail.new do
      from '-----'
        to '-----'
   subject '-----'
      body File.read('body.txt')
      add_file("----")
 end

mail.deliver!