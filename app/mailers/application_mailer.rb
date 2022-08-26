# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'mateen.haider@devsinc.com'
  layout 'mailer'
end
