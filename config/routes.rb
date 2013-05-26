RailsappsLearningRails::Application.routes.draw do
  match 'contact' => 'contacts#process_form'
  root :to => 'home#index'
end