require 'redmine_auditlog'

Redmine::Plugin.register :redmine_auditlog do
  name 'Redmine Auditlog'
  author 'Alex Stanev'
  description 'Provides full auditlog for user actions in Redmine instance.' 
  version '0.0.1'
  url 'https://github.com/RealEnder/redmine_auditlog'
  author_url 'https://www.stanev.org'
  requires_redmine :version_or_higher => '3.0.0'
  Audited.current_user_method = :find_current_user

  Rails.configuration.to_prepare do 
    Dir[Rails.root.join('app/models/*.rb').to_s].each do |filename|
      klass = File.basename(filename, '.rb').camelize.constantize
      next unless klass.ancestors.include?(ActiveRecord::Base)
      #model = Kernel.const_get(classfile)
      #klass.send(:include, RedmineAuditlog::AuditlogPatch)
      klass.send(:include, RedmineAuditlog::AuditlogPatch)
    end
  end
end
