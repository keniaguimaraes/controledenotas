RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true
  
     config.show_gravatar = true

  config.main_app_name = ["Notas   ", "       "]

   config.navigation_static_label = "Lins Úteis"
   config.navigation_static_links = {
   'GitHub' => 'http://github.com/keniaguimaraes' 
  }
 
 config.model Funcionario do
    navigation_icon 'fa fa-check'  #inclui icone
    weight -4                    #configura a ordem no menu lateral
   create do
      configure :notas do
        hide
      end
      field  :nome do
        label "Nome"
      end
      field  :data_admissao do
        label "Data Admissão"
      end 
    end 

    list do
      field  :nome do
        label "Nome"
      end
      field  :data_admissao do
        label "Data Admissão"
      end  
    end 
    
    edit do
     configure :notas do
        hide
      end
      field  :nome do
        label "Nome"
      end
      field  :data_admissao do
        label "Data Admissão"
      end 
     
    end 
 end    
     
 
  
 config.model Tiponota do
    navigation_icon 'fa fa-check'  #inclui icone
    weight -2                    #configura a ordem no menu lateral
    
       create do
      configure :notas do
        hide
      end
      field  :descricao do
        label "Descrição"
      end
    end 

    list do
      field  :descricao do
        label "Descrição"
      end
    end 
    
    edit do
     configure :notas do
        hide
      end
      field  :descricao do
        label "Descrição"
      end
     
    end 
 end    
     

  
 config.model Tipoassunto do
    navigation_icon 'fa fa-check'  #inclui icone
    weight -3                   #configura a ordem no menu lateral
   
     create do
      configure :notas do
        hide
      end
      field  :descricao do
        label "Descrição"
      end
    end 

    list do
      field  :descricao do
        label "Descrição"
      end
    end 
    
    edit do
     configure :notas do
        hide
      end
      field  :descricao do
        label "Descrição"
      end
     
    end 
 end    
      
        
 config.model Nota do
    navigation_icon 'fa fa-check'  #inclui icone
   weight -1                   #configura a ordem no menu lateral
    
 end    

 
 

  config.actions do
    dashboard do
      statistics true
    end
                   # mandatory
    index                         # mandatory
    new
  #  export
    bulk_delete
    show
    edit
    delete
    show_in_app
    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end

