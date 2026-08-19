class GuestbookController < ApplicationController
  def index
    @entry = GuestbookEntry.new
    @entries = GuestbookEntry.newest_first.limit(200)
  end

  def create
    @entry = GuestbookEntry.new(entry_params)

    if @entry.save
      redirect_to root_path, notice: "Signed — thanks for stopping by."
    else
      @entries = GuestbookEntry.newest_first.limit(200)
      render :index, status: :unprocessable_entity
    end
  end

  private

  def entry_params
    params.require(:guestbook_entry).permit(:name, :message)
  end
end
