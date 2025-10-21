-- Importa CTEs (Common Table Expressions) dos modelos que já existem
with orders as (
    select * from {{ ref('stg_orders') }} -- Lê do modelo de staging de pedidos
),

customers as (
    select * from {{ ref('dim_customers') }} -- Lê do modelo final de clientes
)

-- Junta os pedidos com os clientes usando o customer_id
select
    o.order_id,
    o.customer_id,
    c.first_name,       -- Informações do cliente
    c.last_name,        -- Informações do cliente
    c.full_name,        -- Informações do cliente
    o.order_date,       -- Informações do pedido
    o.status            -- Informações do pedido
from orders o
left join customers c on o.customer_id = c.customer_id -- A condição da junção