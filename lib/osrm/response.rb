module Osrm
  class Response
    #TODO find a better name than 'modified response' for when the response is processed by this client library
    attr_accessor :status, :response, :modified_response, :message, :timestamp, :errors

    def initialize(params={})
      self.status    = params[:status]
      self.response  = params[:response]
      self.modified_response  = params[:modified_response]
      self.message   = params[:message]
      self.timestamp = params[:timestamp] || Time.now.utc
      self.errors    = []
    end

    def successful?
      /^2\d\d$/.match(status.to_s).present? && errors.empty?
    end

  end
end
