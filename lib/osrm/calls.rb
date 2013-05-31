module Osrm
  module Calls

    def route(params={loc:"40.764,-73.993",loc:"40.692,-73.911"})
      self.agent.fetch({
        :verb => :get,
        :action => '/viaroute?loc=40.764,-73.993&loc=40.692,-73.911'
        #:fields => params
      })
      ##?loc=40.764,-73.993&loc=40.692,-73.911',
    end

  end
end
