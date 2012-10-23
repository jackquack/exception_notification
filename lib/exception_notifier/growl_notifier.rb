class ExceptionNotifier
  class GrowlNotifier
    require 'ruby-growl'

    def initialize(options)
      @growl = ::Growl.new('localhost',
                           'uniform_notifier',
                           [ 'uniform_notifier' ],
                           nil,
                           option.password)

    end

    def exception_notification(exception)
      @growl.notify "A new exception occurred: '#{exception.message}' on '#{exception.backtrace.first}'" if active?
    end

    private

    def active?
      @growl
    end
  end
end
