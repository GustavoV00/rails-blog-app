Gustavo Valente Nunes


O projeto desenvolvido foi um mini-blog, com um usuário podendo escrever um artigo, e um comentário. Qualquer usuário pode criar uma tag e um TagArticle que é uma tag 
associada a um artigo e vice-e-versa. E apenas o usuário adm pode editar e deletar qualquer coisa.

Modelos:
    -> User
        Criado pelo devise.

    -> Profile
        possui: age:integer, first_name:string, last_name:string, interests:string, about:text, user:references

    -> Artigo
        possui: title:string, descri:string, body:text, user:references

    -> Comentario
        possui: comment:string, user:references, article:references

    -> Tag
        possui: tag_name:string

    -> TagArticle
        possui: tag:references, article:references

Associações:
    -> artigo 1:N comentários
    -> artigo N:N tags
    -> user   1:1 profile
    -> user   1:N artigos
    -> user   1:N comentarios

Diretórios:
    app/views:
        articles: Indica o crud que referente aos artigos.
        comments: Indica o crud que referente aos comentários.
        tag: Indica o crud que referente as tags.
        tag_articles: Indica o crud que referente as tags e artigos com associações.
        devise: Folder criado com a utilização do devise.

    app/controlleres: Localização dos controllers


Como executar:
    Foi utilizado a versão 3.0.0 do ruby.
    rails db:migrate
    rails db:reset
    rails db:seed (Caso queira popular o banco de dados. Demora +- 3 min)
    abrir no http://localhost:3000

Como funciona:
    -> Temos a página home que apenas carrega todos os artigos.
    -> Temos a página artigo que mostra os artigos do usuário que está logado.
    -> Temos a página comentario que mostra os comentarios do usuário que está logado.
    -> Temos a página tag que mostra todas as tags.
    -> Temos a página TagArticle que mostra quais artigos e tags estão associadas.
   
Nota:
    -> Apenas o usuário admin pode editar ou deletar as coisas.
    -> Eles são gerados após db:seed

Usuários padrão:
    admin:
        email: admin@admin
        password: admin123

    user1:
        email: user1@user1
        password: user123

    user2:
        email: user2@user2
        password: user123

    user3:
        email: user3@user3
        password: user123
