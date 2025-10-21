select
    customer_id,
    first_name,
    last_name,
    -- Concatenando nome e sobrenome para criar o nome completo
    -- A sintaxe || é padrão SQL para concatenação (funciona no BigQuery)
    first_name || ' ' || last_name as full_name
    
-- Aqui usamos a função ref() para ler do modelo de staging que criamos antes
from {{ ref('stg_customers') }}