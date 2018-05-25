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
    Attachment.send(:include, RedmineAuditlog::AuditlogPatch)
    AuthSource.send(:include, RedmineAuditlog::AuditlogPatch)
    Board.send(:include, RedmineAuditlog::AuditlogPatch)
    Change.send(:include, RedmineAuditlog::AuditlogPatch)
    Changeset.send(:include, RedmineAuditlog::AuditlogPatch)
    Comment.send(:include, RedmineAuditlog::AuditlogPatch)
    CustomField.send(:include, RedmineAuditlog::AuditlogPatch)
    CustomFieldEnumeration.send(:include, RedmineAuditlog::AuditlogPatch)
    CustomValue.send(:include, RedmineAuditlog::AuditlogPatch)
    Document.send(:include, RedmineAuditlog::AuditlogPatch)
    EmailAddress.send(:include, RedmineAuditlog::AuditlogPatch)
    EnabledModule.send(:include, RedmineAuditlog::AuditlogPatch)
    Enumeration.send(:include, RedmineAuditlog::AuditlogPatch)
    Group.send(:include, RedmineAuditlog::AuditlogPatch)
    Import.send(:include, RedmineAuditlog::AuditlogPatch)
    ImportItem.send(:include, RedmineAuditlog::AuditlogPatch)
    Issue.send(:include, RedmineAuditlog::AuditlogPatch)
    IssueCategory.send(:include, RedmineAuditlog::AuditlogPatch)
    IssueCustomField.send(:include, RedmineAuditlog::AuditlogPatch)
    IssueImport.send(:include, RedmineAuditlog::AuditlogPatch)
    IssuePriority.send(:include, RedmineAuditlog::AuditlogPatch)
    IssueRelation.send(:include, RedmineAuditlog::AuditlogPatch)
    IssueStatus.send(:include, RedmineAuditlog::AuditlogPatch)
    Journal.send(:include, RedmineAuditlog::AuditlogPatch)
    JournalDetail.send(:include, RedmineAuditlog::AuditlogPatch)
    Member.send(:include, RedmineAuditlog::AuditlogPatch)
    MemberRole.send(:include, RedmineAuditlog::AuditlogPatch)
    Message.send(:include, RedmineAuditlog::AuditlogPatch)
    News.send(:include, RedmineAuditlog::AuditlogPatch)
    Project.send(:include, RedmineAuditlog::AuditlogPatch)
    Repository.send(:include, RedmineAuditlog::AuditlogPatch)
    Role.send(:include, RedmineAuditlog::AuditlogPatch)
    Setting.send(:include, RedmineAuditlog::AuditlogPatch)
    TimeEntry.send(:include, RedmineAuditlog::AuditlogPatch)
    Token.send(:include, RedmineAuditlog::AuditlogPatchToken)
    Tracker.send(:include, RedmineAuditlog::AuditlogPatch)
    User.send(:include, RedmineAuditlog::AuditlogPatchUser)
    UserPreference.send(:include, RedmineAuditlog::AuditlogPatch)
    Version.send(:include, RedmineAuditlog::AuditlogPatch)
    Watcher.send(:include, RedmineAuditlog::AuditlogPatch)
    Wiki.send(:include, RedmineAuditlog::AuditlogPatch)
    WikiContent.send(:include, RedmineAuditlog::AuditlogPatch)
    WikiPage.send(:include, RedmineAuditlog::AuditlogPatch)
    WikiRedirect.send(:include, RedmineAuditlog::AuditlogPatch)
    WorkflowPermission.send(:include, RedmineAuditlog::AuditlogPatch)
    WorkflowRule.send(:include, RedmineAuditlog::AuditlogPatch)
    WorkflowTransition.send(:include, RedmineAuditlog::AuditlogPatch)
  end
end
