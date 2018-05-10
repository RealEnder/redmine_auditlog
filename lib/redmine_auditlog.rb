module RedmineAuditlog

  module AuditlogPatch
    def self.included(base)
      base.class_eval do
        audited 
      end
    end
  end

end
