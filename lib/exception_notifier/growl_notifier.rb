class ExceptionNotifier
  class GrowlNotifier

    def initialize(options)
      require 'ruby-growl'
      @growl = ::Growl.new('localhost', 'exception_notification', ["exception_notification"])
    end

    def exception_notification(exception)
      if active?
        message = "A new exception occurred: '#{exception.message}' on '#{exception.backtrace.first}'"
        @growl.notify( 'exception_notification', 'Exception Notification', message )
      end
    end

    private

    def active?
      @growl
    end
  end
end
