module RedmineAuditlog

  module AuditlogPatch
    def self.included(base)
      base.class_eval do
        unloadable # Send unloadable so it will not be unloaded in development
        audited 
      end
    end
  end

  module AuditlogPatchUser
    def self.included(base)
      base.class_eval do
        unloadable # Send unloadable so it will not be unloaded in development
        audited except: [:salt, :hashed_password]
      end
    end
  end

  module AuditlogPatchToken
    def self.included(base)
      base.class_eval do
        unloadable # Send unloadable so it will not be unloaded in development
        audited except: :value
      end
    end
  end

end
