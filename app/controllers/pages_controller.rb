class PagesController < ApplicationController

    def echo
        respond_to do |format|
            format.html { render :echo, locals: { utterance: '(nothing yet)' } }
        end
    end

    def do_echo
        utterance = '(nothing yet)'
        if params.has_key? :utterance and not params[:utterance].blank?
            utterance = params[:utterance]
        end
        respond_to do |format|
            format.html { render :echo, locals: { utterance: utterance } }
        end
    end

end
