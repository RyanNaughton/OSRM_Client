require 'forwardable'

module Osrm
  class Client
    extend  Forwardable
    include Osrm::Calls

    attr_accessor :agent

    def_delegators :@agent, :host, :scheme

    def initialize(params={})
      self.agent = Osrm::Agent.new({
        :host   => params.fetch(:host),
        :scheme => params.fetch(:scheme, "http")
      })
    end
  end
end
