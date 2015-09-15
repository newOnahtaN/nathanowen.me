


class ResumeController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def show
    pdf_filename = File.join(Rails.root, "public/resume.pdf")
    send_file(pdf_filename, :filename => "resume.pdf", :disposition => 'inline', :type => "application/pdf")
  end
end
