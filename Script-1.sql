select id_pacientes, count(*) as internacoes
from pacientes
join historico_do_paciente
on pacientes.id  = historico_do_paciente.id_pacientes
group by historico_do_paciente.id_pacientes
order by internacoes desc;


select departamento, count(*) as medicos_por_departamento from funcionarios f
where cargo = 'medico'
group by f.departamento
