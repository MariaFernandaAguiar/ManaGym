json.extract! aluno, :id, :nome, :rg, :telefone, :email, :dataMatricula, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)
