class ReportsController < ApplicationController
  def index
    @reports = Report.all
  end

  def show
    @report = Report.find(params[:id])
  end

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(params[:report])

    if @report.save
      redirect_to @report, notice: 'Report was successfully created.'
      ReportMailer.go(@report).deliver
    else
      render action: 'new'
    end
  end
end
