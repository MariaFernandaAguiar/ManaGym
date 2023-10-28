json.extract! employee, :id, :nome_employee, :rg_employee, :email_employee, :data_inicio, :salario_employee, :created_at, :updated_at
json.url employee_url(employee, format: :json)
