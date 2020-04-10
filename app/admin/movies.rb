ActiveAdmin.register Movie do

  permit_params :title, :url, :source_code_url

end
