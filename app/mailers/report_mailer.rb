class ReportMailer < ActionMailer::Base
  def go(report)
    @report = report
    @to = "svargo@andrew.cmu.edu"
    @from = "#{@report.andrew_id}@andrew.cmu.edu"
    @subject = "WiFi Outage in #{@report.location}"

    mail(to: @to, from: @from, subject: @subject)
  end
end
